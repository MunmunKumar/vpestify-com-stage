<?php

defined('BASEPATH') OR exit('No direct script access allowed');

class EnquiryView_model extends CI_Model {

    public function __construct() {
        parent:: __construct();
        $this->load->database();
        $this->load->library('session');
    }

    public  function getUsersDetailsDataTable()
    {
        $lenght = '';
        $start = '';
        $searchVal = '';

        if($this->input->post()){
            $lenght =  $this->input->post('start');
            $start =  $this->input->post('length');
        }
        if($this->input->post('search')['value']){
            $searchVal = $this->input->post('search')['value'];
        }

        // if($this->input->post('order')){
        //     $post =  $this->input->post();
        //     $orderBy = $post['order'][0]['column'];
        //     $sorting =  $post['order'][0]['dir'];
        // }

        $this->db->select('user_enquiry.EnquiryID, user_enquiry.UserID, user_enquiry.UserName, user_enquiry.Mobile,
                user_enquiry.Email, user_enquiry.Amount, user_enquiry.CompanyName, user_enquiry.AreaSize,
                user_enquiry.ServiceName, user_enquiry.Address, 
                user_enquiry.City, user_enquiry.State, user_enquiry.Country,
                user_enquiry.LeadSource, user_enquiry.LeadType,
                user_enquiry.CustomerPriority, user_enquiry.Telecaller,
                user_enquiry.SalesExecutive,  user_enquiry.Technician,
                DATE_FORMAT(user_enquiry.CreatedDate, "%d-%m-%Y") AS CreatedDate,
                DATE_FORMAT(user_enquiry.UpdatedDate, "%d-%m-%Y") AS UpdatedDate, 
                DATE_FORMAT(user_enquiry.ServiceDate, "%d-%m-%Y") AS ServiceDate,
                DATE_FORMAT(user_enquiry.ScheduleDate, "%d-%m-%Y") AS ScheduleDate,
                DATE_FORMAT(user_enquiry.VisitDate, "%d-%m-%Y") AS VisitDate,
                GROUP_CONCAT(service_list.ServiceName) AS ServiceName'
        );
        $this->db->from('user_enquiry');
        $this->db->join('customer_services', 'customer_services.EnquiryID = user_enquiry.EnquiryID', 'left');
        $this->db->join('service_list', 'service_list.ServiceID = customer_services.ServiceID', 'left');

        if($searchVal != ''){
            $this->db->like('user_enquiry.Mobile', $searchVal);
            $this->db->or_like('user_enquiry.Email', $searchVal);  
            $this->db->or_like('user_enquiry.CompanyName', $searchVal);  
            $this->db->or_like('user_enquiry.ServiceName', $searchVal);           
            $this->db->or_like('user_enquiry.Address', $searchVal);            
        }

        $this->db->group_by('user_enquiry.EnquiryID');
        $this->db->order_by('user_enquiry.CreatedDate', 'DESC');
        $this->db->limit($start, $lenght);
        $query = $this->db->get();

        $result = $query->result_array();
        return ($result);
    }

    /**
     * Total count
     */

     public function countTotalUsers()
     {
        $this->db->select('count(*) As total');

        $this->db->from('user_enquiry');
        $this->db->join('customer_services', 'customer_services.EnquiryID = user_enquiry.EnquiryID', 'left');
        $this->db->join('service_list', 'service_list.ServiceID = customer_services.ServiceID', 'left');
       //$this->db->group_by('user_enquiry.EnquiryID');

        $query = $this->db->get();

        $result = $query->row();
        return ($result);
     }


    public function getUsersDetails() {

        $this->db->select('user_enquiry.EnquiryID, user_enquiry.UserID, user_enquiry.UserName, user_enquiry.Mobile,
                user_enquiry.Email, user_enquiry.Amount, user_enquiry.CompanyName, user_enquiry.AreaSize,
                user_enquiry.ServiceName, user_enquiry.Address, 
                user_enquiry.City, user_enquiry.State, user_enquiry.Country,
                user_enquiry.LeadSource, user_enquiry.LeadType,
                user_enquiry.CustomerPriority, user_enquiry.Telecaller,
                user_enquiry.SalesExecutive,  user_enquiry.Technician,
                DATE_FORMAT(user_enquiry.CreatedDate, "%d-%m-%Y") AS CreatedDate,
                DATE_FORMAT(user_enquiry.UpdatedDate, "%d-%m-%Y") AS UpdatedDate, 
                DATE_FORMAT(user_enquiry.ServiceDate, "%d-%m-%Y") AS ServiceDate,
                DATE_FORMAT(user_enquiry.ScheduleDate, "%d-%m-%Y") AS ScheduleDate,
                DATE_FORMAT(user_enquiry.VisitDate, "%d-%m-%Y") AS VisitDate,
                GROUP_CONCAT(service_list.ServiceName) AS ServiceName'
        );
        $this->db->from('user_enquiry');
        $this->db->join('customer_services', 'customer_services.EnquiryID = user_enquiry.EnquiryID', 'left');
        $this->db->join('service_list', 'service_list.ServiceID = customer_services.ServiceID', 'left');
        $this->db->group_by('user_enquiry.EnquiryID');
        $this->db->order_by('user_enquiry.CreatedDate', 'DESC');
        $query = $this->db->get();

        $result = $query->result_array();
        return $result;
    }

    /**
     * Get lead details based on enquiryID
     * 
     * @param type $id EnquiryID
     * @return array
     */
    public function getUsersDetailsById($id) {

        $this->db->select('user_enquiry.EnquiryID, user_enquiry.UserID, user_enquiry.UserName, user_enquiry.Mobile,
                user_enquiry.Email, user_enquiry.ServiceName, user_enquiry.Address, user_enquiry.Message, 
                user_enquiry.IsServiceDone, user_enquiry.Amount,
                user_enquiry.Telecaller, user_enquiry.CompanyName, user_enquiry.AreaSize,
                user_enquiry.RatePerSqft, user_enquiry.Technician,
                user_enquiry.SalesExecutive, user_enquiry.LeadSource,
                user_enquiry.LeadType, user_enquiry.CustomerPriority,
                user_enquiry.City, user_enquiry.State, user_enquiry.Country,
                DATE_FORMAT(user_enquiry.CreatedDate, "%d-%m-%Y") AS CreatedDate,
                DATE_FORMAT(user_enquiry.UpdatedDate, "%d-%m-%Y") AS UpdatedDate, 
                DATE_FORMAT(user_enquiry.ServiceDate, "%d-%m-%Y") AS ServiceDate,
                DATE_FORMAT(user_enquiry.ScheduleDate, "%d-%m-%Y") AS ScheduleDate,
                DATE_FORMAT(user_enquiry.VisitDate, "%d-%m-%Y") AS VisitDate,
                DATE_FORMAT(user_enquiry.VisitDate, "%Y-%m-%d") AS EnquiryVisitDate,
                DATE_FORMAT(user_enquiry.FollowupDate, "%d-%m-%Y") AS FollowupDate,
                DATE_FORMAT(user_enquiry.FollowupDate, "%Y-%m-%d") AS EnquiryFollowupDate,
                GROUP_CONCAT(service_list.ServiceName) AS ServiceName,
                GROUP_CONCAT(service_list.ServiceID) AS ServiceID,
                GROUP_CONCAT(DISTINCT DATE_FORMAT(customer_service_details.ScheduleDate, "%d-%m-%Y") ORDER BY customer_service_details.ScheduleDate SEPARATOR  " | ") AS orderSchedule'
        );
        $this->db->from('user_enquiry');
        $this->db->join('customer_services', 'customer_services.EnquiryID = user_enquiry.EnquiryID', 'left');
        $this->db->join('service_list', 'service_list.ServiceID = customer_services.ServiceID', 'left');

        $this->db->join('service_order', 'service_order.EnquiryID = user_enquiry.EnquiryID', 'left');
        $this->db->join('total_service_order', 'total_service_order.ServiceOrderID = service_order.ServiceOrderID', 'left');
        $this->db->join("customer_service_details", "customer_service_details.TotalServiceOrderID = total_service_order.TotalServiceOrderID AND customer_service_details.IsServiceDone != '2' AND customer_service_details.ScheduleDate >= CURRENT_DATE()", 'left');

        $this->db->group_by('user_enquiry.EnquiryID');
        $this->db->where(array('user_enquiry.EnquiryID' => $id));
        $query = $this->db->get();
        $result = $query->row();

        //echo $this->db->last_query();
        //die;
        // get last comments
        $this->db->select('user_comments.Comments, user_comments.NextFollowupDate,
                 user_comments.NextVisitDate');
        $this->db->from('user_comments');
        $this->db->where(array('user_comments.EnquiryID' => $id));
        $this->db->order_by('user_comments.CreatedDate', 'DESC');
        $this->db->limit(1);
        $query1 = $this->db->get();
        $result1 = $query1->row();

        $obj_merged = (object) array_merge(
                        (array) $result1, (array) $result);

        return $obj_merged;
    }

    public function getUsersMessageById($id) {

        $this->db->select('user_enquiry.EnquiryID, user_enquiry.UserID, user_enquiry.UserName, user_enquiry.Mobile, 
                        user_enquiry.Address, user_enquiry.ServiceName, user_comments.UserCommentsID,
                        user_comments.Comments,
                        DATE_FORMAT(user_comments.NextFollowupDate, "%d-%m-%Y") AS NextFollowupDate,
                        DATE_FORMAT(user_comments.NextVisitDate, "%d-%m-%Y") AS NextVisitDate,
                        DATE_FORMAT(user_comments.CreatedDate, "%d-%m-%Y") AS CreatedDate,
                        DATE_FORMAT(user_comments.UpdatedDate, "%d-%m-%Y") AS UpdatedDate');
        $this->db->from('user_comments');
        $this->db->join('user_enquiry', 'user_enquiry.EnquiryID = user_comments.EnquiryID', 'inner');
        $this->db->where(array('user_comments.EnquiryID' => $id));
        $query = $this->db->get();
        $result = $query->result_array();

        return $result;
    }

    public function updateScheduleDate($date, $enquiryID) {
        $this->db->where('EnquiryID', $enquiryID);
        $this->db->update('user_enquiry', array('ScheduleDate' => $date));
    }

    public function saveUserMsg($message, $followupDate, $NextVisitDate, $enqID) {
        $data = ['EnquiryID' => $enqID, 'Comments' => $message,
            'NextFollowupDate' => $followupDate, 'NextVisitDate' => $NextVisitDate,
            'CreatedDate' => date('Y-m-d H:i:s')
        ];
        $this->db->insert("user_comments", $data);
    }

    public function updateServiceDone($date, $isServiceDone, $enquiryID) {
        if ($isServiceDone == '0') {
            $date = null;
        }
        $this->db->where('EnquiryID', $enquiryID);
        $this->db->update('user_enquiry', array('ServiceDate' => $date, 'IsServiceDone' => $isServiceDone));
    }

    /**
     * Get Selected service list
     * 
     * @param int $id EnquiryID
     * 
     * @return array
     */
    public function getCustomerService($id) {
        $this->db->select('user_enquiry.EnquiryID, user_enquiry.UserID, user_enquiry.UserName, service_list.ServiceID,
                           service_list.ServiceName, customer_services.NoOfService,
                           customer_services.CreatedDate,
                        DATE_FORMAT(customer_services.UpdatedDate, "%d-%m-%Y") AS UpdatedDate');
        $this->db->from('customer_services');
        $this->db->join('user_enquiry', 'user_enquiry.EnquiryID = customer_services.EnquiryID', 'inner');
        $this->db->join('service_list', 'service_list.ServiceID = customer_services.ServiceID', 'inner');
        $this->db->where(array('customer_services.EnquiryID' => $id));
        $query = $this->db->get();
        $result = $query->result_array();

        return $result;
    }

    public function getServiceList() {
        $this->db->select('service_list.*');
        $this->db->from('service_list');
        $query = $this->db->get();
        $result = $query->result_array();

        return $result;
    }

}
