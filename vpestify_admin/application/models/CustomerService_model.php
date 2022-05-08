<?php

defined('BASEPATH') OR exit('No direct script access allowed');

class CustomerService_model extends CI_Model {

    public function __construct() {
        parent:: __construct();
        $this->load->database();
        $this->load->library('session');
    }

    public function getUsersDetailsById($id) {

        $this->db->select('user_enquiry.EnquiryID, user_enquiry.UserName, user_enquiry.Mobile,
                user_enquiry.Email, user_enquiry.ServiceName, user_enquiry.Address, user_enquiry.Message, 
                user_enquiry.City, user_enquiry.State, user_enquiry.Country, user_enquiry.IsServiceDone,
                DATE_FORMAT(user_enquiry.CreatedDate, "%d-%m-%Y") AS CreatedDate,
                DATE_FORMAT(user_enquiry.UpdatedDate, "%d-%m-%Y") AS UpdatedDate, 
                DATE_FORMAT(user_enquiry.ServiceDate, "%d-%m-%Y") AS ServiceDate,
                DATE_FORMAT(user_enquiry.ScheduleDate, "%d-%m-%Y") AS ScheduleDate'
        );
        $this->db->from('user_enquiry');
        $this->db->where(array('user_enquiry.EnquiryID' => $id));
        $query = $this->db->get();
        $result = $query->row();

        return $result;
    }

    public function totalTodayScheduleService() {

        $query = $this->db->query("SELECT COUNT(*) AS total FROM user_enquiry
                            WHERE DATE(user_enquiry.ScheduleDate) = CURDATE()");

        $result = $query->row();

        return $result;
    }

    /**
     * Get Selected service list
     * 
     * @param int $id EnquiryID
     * 
     * @return array
     */
    public function getCustomerService($id) {
        $this->db->select('user_enquiry.EnquiryID, user_enquiry.UserName, service_list.ServiceID,
                           service_list.ServiceName, customer_services.NoOfService,
                           DATE_FORMAT(customer_services.CreatedDate, "%d-%m-%Y") AS CreatedDate,
                        DATE_FORMAT(customer_services.UpdatedDate, "%d-%m-%Y") AS UpdatedDate');
        $this->db->from('customer_services');
        $this->db->join('user_enquiry', 'user_enquiry.EnquiryID = customer_services.EnquiryID', 'inner');
        $this->db->join('service_list', 'service_list.ServiceID = customer_services.ServiceID', 'inner');
        $this->db->where(array('customer_services.EnquiryID' => $id));
        $query = $this->db->get();
        $customerService = $query->result_array();

        $defaultService = $this->getServiceList();
        $serviceList = null;

        foreach ($defaultService as $service) {
            $serviceList[$service['ServiceID']] = $service;
        }
        unset($defaultService);

        foreach ($customerService as $service) {
            $serviceList[$service['ServiceID']] = $service;
        }
        unset($customerService);

        return $serviceList;
    }

    public function getServiceList() {
        $this->db->select('service_list.*');
        $this->db->from('service_list');
        $query = $this->db->get();
        $result = $query->result_array();

        return $result;
    }

    /**
     * Save selected Services into customer_service table
     * 
     * @param int $id EnquiryID
     */
    public function saveCustomerService($id) {
        $date = new DateTime('now', new DateTimeZone('Asia/Kolkata'));
        $createDateTime = $date->format('Y-m-d H:i:sA');
        $enquiryid = $this->input->post('enquiryid');
        if (is_array($this->input->post())) {
            foreach ($this->input->post() as $key => $val) {
                if (is_array($val)) {
                    $data[] = $val;
                }
            }
        }
        foreach ($data as $val) {
            $serviceID = (isset($val['service'])) ? $val['service'] : '';
            if ($serviceID != '') {
                $query = "INSERT INTO customer_services (EnquiryID, ServiceID, NoOfService, CreatedDate) "
                        . " VALUES ($enquiryid, $serviceID, $val[NoOfService], '$createDateTime') "
                        . " ON DUPLICATE KEY UPDATE NoOfService = $val[NoOfService]";
                $this->db->query($query);
            }
        }
    }

    public function renderCustomerDetails($enquiryID = -1, $serviceID = -1) {
        $this->db->select('*');
        $this->db->from('customer_services');
        $this->db->join('service_list', 'service_list.ServiceID = customer_services.ServiceID', 'inner');
        $this->db->where(array('customer_services.ServiceID' => $serviceID, 'customer_services.EnquiryID' => $enquiryID));
        $query = $this->db->get();
        return $query->row();
    }

    /**
     * Save no of service details in customer service details table
     * 
     * @return boolean
     */
    public function addServiceScheduleDetails() {

        if (is_array($_POST['service'])) {
            $enquiryid = $this->input->post('enquiryid');
            $serviceid = $this->input->post('serviceid');
            $totalServiceOrderID = $this->input->post('totalServiceOrderID');

            foreach ($_POST['service'] as $row) {
                $IsDone = ($row['IsDone'] == 'on') ? '1' : '0';
                $ServiceCompleteDate = ($row['ServiceCompleteDate']) ? date("Y-m-d", strtotime($row['ServiceCompleteDate'])) : null;
                $scheduleDate = ($row['ScheduleDate']) ? date("Y-m-d", strtotime($row['ScheduleDate'])) : null;
                if ($scheduleDate != NULL) {
                    $data = array('EnquiryID' => $enquiryid, 'TotalServiceOrderID' => $totalServiceOrderID,
                        'ServiceID' => $serviceid, 'ScheduleDate' => $scheduleDate,
                        'Telecaller' => $row['Telecaller'], 'Technician' => $row['Technician'],
                        'SalesExecutive' => $row['SalesExecutive'],
                        'Comments' => $row['Comments'],
                        'ServiceCompleteDate' => $ServiceCompleteDate, 'CreatedDate' => date('Y-m-d H:i:s')
                    );
                    if (isset($row['CustomerServiceDetailsID']) && $row['CustomerServiceDetailsID'] != '') {

                        $dataUpdate = array('ScheduleDate' => $scheduleDate,
                            'Telecaller' => $row['Telecaller'], 'Technician' => $row['Technician'],
                            'SalesExecutive' => $row['SalesExecutive'],
                            'Comments' => $row['Comments'],
                            'ServiceCompleteDate' => $ServiceCompleteDate
                        );

                        $this->db->where('CustomerServiceDetailsID', $row['CustomerServiceDetailsID']);
                        $this->db->update("customer_service_details", $dataUpdate);
                    } else {
                        $this->db->insert("customer_service_details", $data);
                    }
                }
            }
            return TRUE;
        }
    }

    /**
     * get Customer Service Details
     * 
     * @param type $id EnquiryID
     * @return array
     */
    public function getCustomerServiceDetails($id) {
        $this->db->select('customer_service_details.CustomerServiceDetailsID, 
                customer_service_details.CustomerServiceID, customer_service_details.ServiceID,                 
                customer_service_details.Telecaller, customer_service_details.Technician,
                customer_service_details.SalesExecutive, customer_service_details.Comments,                
                customer_service_details.IsServiceDone, customer_service_details.TotalPayment,
                DATE_FORMAT(customer_service_details.ScheduleDate, "%d-%m-%Y") as ScheduleDate,
                DATE_FORMAT(customer_service_details.ServiceCompleteDate, "%d-%m-%Y") AS ServiceCompleteDate,
                DATE_FORMAT(customer_service_details.CreatedDate, "%d-%m-%Y") AS CreatedDate,
                DATE_FORMAT(customer_service_details.PaidDate, "%d-%m-%Y") as PaidDate,
                customer_service_details.Paid, customer_service_details.Paid, customer_service_details.Pending, 
                customer_service_details.PaymentMode, service_list.ServiceName
        ');

        $this->db->from('customer_service_details');
        $this->db->join('customer_services', 'customer_services.CustomerServiceID = customer_service_details.CustomerServiceID', 'left');
        $this->db->join('service_list', 'service_list.ServiceID = customer_services.ServiceID', 'left');
        $this->db->where(array('customer_services.EnquiryID' => $id));
        $query = $this->db->get();
        return $query->result_array();
    }

    public function getSelectedServiceDetails($id) {
        $this->db->select('customer_service_details.EnquiryID, customer_service_details.ServiceID,
                            service_list.ServiceName, COUNT(*) AS total');
        $this->db->from('customer_service_details');
        $this->db->join('service_list', 'service_list.ServiceID = customer_service_details.ServiceID', 'left');
        $this->db->where(array('customer_service_details.EnquiryID' => $id));
        $this->db->group_by('customer_service_details.ServiceID');
        $query = $this->db->get();
        return $query->result_array();
    }

    /**
     * 
     * @param int $serviceID serviceID
     * @param int $totalServiceOrderID totalServiceOrderID
     */
    public function getCustomerServiceTable($serviceID = -1, $totalServiceOrderID = -1) {
        $this->db->select("customer_service_details.CustomerServiceDetailsID,
                    customer_service_details.TotalServiceOrderID, customer_service_details.EnquiryID, 
                    customer_service_details.ServiceID, customer_service_details.ScheduleDate, 
                    customer_service_details.Telecaller, customer_service_details.Technician, 
                    customer_service_details.SalesExecutive, 
                    DATE_FORMAT(customer_service_details.CreatedDate, '%d-%m-%Y') AS CreatedDate,
                    DATE_FORMAT(customer_service_details.UpdatedDate, '%d-%m-%Y') AS UpdatedDate,
                    DATE_FORMAT(customer_service_details.ServiceCompleteDate, '%d-%m-%Y') AS ServiceCompleteDate,
                    customer_service_details.IsServiceDone, 
                    customer_service_details.Comments, total_service_order.ServiceOrderID,
                    total_service_order.NoOfService, total_service_order.TotalPayment,
                    total_service_order.PayAmount as 'totalServiceOrderPay', 
                    total_service_order.Paid as 'totalServiceOorderTotalPaid', 
                    total_service_order.Pending 'totalServiceOorderTotalPending', 
                    DATE_FORMAT(total_service_order.PaidDate, '%d-%m-%Y') AS 'totalServiceOorderTotalPaidDate',
                    service_order.TotalOrderValue, service_order.PayAmount as 'serviceOrderPayAmount', 
                    service_order.Paid AS 'serviceOrderPaid', service_order.Pending as 'serviceOrderPending',
                    DATE_FORMAT(service_order.PaidDate, '%d-%m-%Y') AS 'serviceOrderPaidDate'");

        $this->db->from('customer_service_details');
        $this->db->join('total_service_order', 'total_service_order.TotalServiceOrderID = customer_service_details.TotalServiceOrderID', 'left');
        $this->db->join('service_order', 'service_order.ServiceOrderID = total_service_order.ServiceOrderID', 'inner');
        $this->db->join('service_list', 'service_list.ServiceID = customer_service_details.ServiceID', 'inner');
        $this->db->where(array('service_order.IsActive' => '1', 'customer_service_details.TotalServiceOrderID' => $totalServiceOrderID));
        $query = $this->db->get();
        return $query->result_array();
    }

    /**
     * Get details for edit the service details 
     * 
     * @param int $customerServiceDetailsID  CustomerServiceDetailsID
     * @return array
     */
    public function editCustomerServiceDetails($customerServiceDetailsID = -1) {
        $this->db->select('customer_service_details.*');

        $this->db->from('customer_service_details');
        $this->db->join('service_list', 'service_list.ServiceID = customer_service_details.ServiceID', 'inner');
        $this->db->where(array('customer_service_details.CustomerServiceDetailsID' => $customerServiceDetailsID));
        $query = $this->db->get();
        return $query->row();
    }

    /**
     * Cancel the service details
     * 
     * @param type $customerServiceDetailsID $customerServiceDetailsID
     */
    public function cancelCustomerServiceDetails($customerServiceDetailsID = -1, $ischecked = 0) {
        if ($customerServiceDetailsID != -1) {
            $this->db->where(array('CustomerServiceDetailsID' => $customerServiceDetailsID));
            $this->db->update('customer_service_details', array('IsCancel' => $ischecked));
            return 'true';
        }
    }

    /**
     * is service done the service details
     * 
     * @param type $customerServiceDetailsID $customerServiceDetailsID
     */
    public function checkIsServiceDone($customerServiceDetailsID = -1, $ischecked = 0) {
        if ($customerServiceDetailsID != -1) {
            $this->db->where(array('CustomerServiceDetailsID' => $customerServiceDetailsID));
            $this->db->update('customer_service_details', array('IsServiceDone' => $ischecked));
            return 'true';
        }
    }

    /**
     * Get customer details for edit
     * 
     * @param int $enquiryID EnquiryID
     * @return array
     */
    public function getCustomerDetailsById($enquiryID = -1) {
        $this->db->select('user_enquiry.EnquiryID, user_enquiry.UserName, user_enquiry.Mobile,
                user_enquiry.Email, user_enquiry.ServiceName, user_enquiry.Address, user_enquiry.Message, 
                user_enquiry.IsServiceDone, user_enquiry.Amount,
                user_enquiry.Telecaller, user_enquiry.CompanyName, user_enquiry.AreaSize,
                user_enquiry.RatePerSqft, user_enquiry.Technician,
                user_enquiry.SalesExecutive,
                user_enquiry.LeadSource,
                user_enquiry.LeadType,
                user_enquiry.CustomerPriority,
                user_enquiry.City, user_enquiry.State, user_enquiry.Country,
                DATE_FORMAT(user_enquiry.CreatedDate, "%d-%m-%Y") AS CreatedDate,
                DATE_FORMAT(user_enquiry.UpdatedDate, "%d-%m-%Y") AS UpdatedDate, 
                DATE_FORMAT(user_enquiry.ServiceDate, "%d-%m-%Y") AS ServiceDate,
                DATE_FORMAT(user_enquiry.ScheduleDate, "%d-%m-%Y") AS ScheduleDate,
                DATE_FORMAT(user_enquiry.VisitDate, "%d-%m-%Y") AS VisitDate,
                DATE_FORMAT(user_enquiry.VisitDate, "%Y-%m-%d") AS EnquiryVisitDate,
                GROUP_CONCAT(service_list.ServiceName) AS ServiceName,
                GROUP_CONCAT(service_list.ServiceID) AS ServiceID'
        );
        $this->db->from('user_enquiry');
        $this->db->join('customer_services', 'customer_services.EnquiryID = user_enquiry.EnquiryID', 'left');
        $this->db->join('service_list', 'service_list.ServiceID = customer_services.ServiceID', 'left');
        $this->db->group_by('user_enquiry.EnquiryID');
        $this->db->where(array('user_enquiry.EnquiryID' => $enquiryID));
        $query = $this->db->get();
        $result = $query->row();

        return $result;
    }

    /**
     * Update customer details
     * 
     * @param type $post HTTP post
     * 
     */
    public function updateCustomerDetails($post) {
        $leadtype = (isset($post['leadtype'])) ? $post['leadtype'] : '0';
        $data = array("UserName" => $post['username'], "Mobile" => $post['mobile'],
            "Email" => $post['email'],
            "VisitDate" => date("Y-m-d", strtotime($post['visitdate'])),
            "Amount" => $post['amount'], "CustomerPriority" => $post['CustomerPriority'],
            "City" => $post['city'], "State" => $post['state'], 'Country' => 'India',
            "Address" => $post['address'],
            "LeadType" => $leadtype, "LeadSource" => $post['leadsource'],
            "Telecaller" => $post['telecaller'], "SalesExecutive" => $post['SalesExecutive'],
            "Technician" => $post['technician'], "CompanyName" => $post['companyname'],
            "RatePerSqft" => $post['RatePerSqft'], "AreaSize" => $post['areasize']
        );
        $this->db->where('EnquiryID', $post['enquiryID']);
        $this->db->update("user_enquiry", $data);
        return true;
    }

    /**
     * 
     * Update service status in customer_service_details table
     * 
     * @param array $post 
     * 
     * @return boolean
     */
    public function updateServiceStatus($post, $enquiryID) {

        $serviceCompleteDate = (isset($post['ServiceCompleteDate']) && $post['ServiceCompleteDate'] != '') ? date('Y-m-d', strtotime($post['ServiceCompleteDate'])) : null;
        $ScheduleDate = (isset($post['ScheduleDate']) && $post['ScheduleDate'] != '') ? date('Y-m-d', strtotime($post['ScheduleDate'])) : null;

        if ($ScheduleDate) {
            $data = ['TotalServiceOrderID' => $post['totalserviceOrder'], 'EnquiryID' => $enquiryID,
                'ServiceID' => $post['serviceID'], 'Telecaller' => $post['Telecaller'],
                'Technician' => $post['Technician'], 'SalesExecutive' => $post['SalesExecutive'],
                'IsServiceDone' => $post['IsServiceDone'], 'Comments' => $post['Comments'],
                'ScheduleDate' => $ScheduleDate, 'CreatedDate' => date('Y-m-d H:i:s')
            ];
            $this->db->insert("customer_service_details", $data);
            return true;
        } elseif ($serviceCompleteDate) {
            $data = ['IsServiceDone' => $post['IsServiceDone'],
                'ServiceCompleteDate' => $serviceCompleteDate
            ];
        } else {
            $data = ['IsServiceDone' => $post['IsServiceDone'], 'ServiceCompleteDate' => $serviceCompleteDate
            ];
        }

        $this->db->where('CustomerServiceDetailsID', $post['CustomerServiceDetailsID']);
        $this->db->update("customer_service_details", $data);
        return true;
    }

}
