<?php

defined('BASEPATH') OR exit('No direct script access allowed');

class Serviceorder_model extends CI_Model {

    public function __construct() {
        parent:: __construct();
        $this->load->database();
        $this->load->library('session');
    }

    /**
     * Save Service Order
     * 
     * @param int $enquieryID EnquiryID
     * @return boolean
     */
    public function saveNewServiceOrder($enquieryID) {
        $orderservice = ($this->input->post('orderservice'));
        $order = $this->input->post('order');

        $paidDate = ($order['PaidDate']) ? date('Y-m-d', strtotime($order['PaidDate'])) : null;
        $data = array('EnquiryID' => $enquieryID,
            'TotalOrderValue' => $order['totalOrderValue'],
            'PayAmount' => $order['pay'],
            'Paid' => $order['paidAmount'],
            'Pending' => $order['pendingAmount'],
            'PaymentMode' => $order['paymentMode'],
            'PaidDate' => $paidDate, 'CreatedDate' => date('Y-m-d H:i:s'), 'IsActive' => '1'
        );

        if (!$order['serviceOrderID']) {
            $createdDate = array("CreatedDate" => date('Y-m-d H:i:s'));
            $data = array_merge($data, $createdDate);
        }

        if ($order['serviceOrderID']) {
            if ($order['pay'] != '') {
                $this->db->where(array('ServiceOrderID' => $order['serviceOrderID']));
                $this->db->update('service_order', $data);
            }

            // Total service order
            $in = '';
            if (is_array($orderservice)) {
                foreach ($orderservice as $val) {
                    if (!empty($val['service'])) {
                        $in .= "'$val[service]', ";
                    }
                }
                $in = rtrim($in, ', ');
                if ($in) {
                    $in = " AND ServiceID NOT IN ($in)";
                }
                $query = "DELETE FROM total_service_order WHERE ServiceOrderID  = '" . $order['serviceOrderID'] . "' AND  EnquiryID = '" . $enquieryID . "'  $in";
                $this->db->query($query);
            }

            if (is_array($orderservice)) {
                foreach ($orderservice as $val) {
                    if (!empty($val['service'])) {

                        $paidDate = ($val['PaidDate']) ? date('Y-m-d', strtotime($val['PaidDate'])) : null;
                        $serviceOrderID = $order['serviceOrderID'];

                        $dataService = array('ServiceOrderID' => $serviceOrderID,
                            'EnquiryID' => $enquieryID, 'ServiceID' => $val['service'],
                            'NoOfService' => $val['NoOfService'],
                            'PayAmount' => $val['Pay'],
                            'TotalPayment' => $val['TotalPayment'],
                            'Paid' => $val['Paid'],
                            'Pending' => $val['Pending'],
                            'PaymentMode' => $val['PaymentMode'],
                            'PaidDate' => $paidDate,
                            'IsActive' => '1'
                        );

                        if (!empty($val['TotalServiceOrderID'])) {
                            if (!empty($val['Pay']) && $val['Pay'] != '0') {
                                $this->db->where(array('TotalServiceOrderID' => $val['TotalServiceOrderID']));
                                $this->db->update('total_service_order', $dataService);
                            }
                        } else {
                            if (!empty($val['service'])) {
                                $createdDate = array("CreatedDate" => date('Y-m-d H:i:s'));
                                $dataService = array_merge($dataService, $createdDate);
                                $this->db->insert('total_service_order', $dataService);
                            }
                        }
                    }
                }
            }
        } else {
            $this->db->insert('service_order', $data);
            $serviceOrderID = $this->db->insert_id();

            if (is_array($orderservice)) {
                foreach ($orderservice as $val) {
                    if (!empty($val['service'])) {
                        $paidDate = ($order['PaidDate']) ? date('Y-m-d', strtotime($order['PaidDate'])) : null;
                        $dataService = array('ServiceOrderID' => $serviceOrderID,
                            'EnquiryID' => $enquieryID, 'ServiceID' => $val['service'],
                            'NoOfService' => $val['NoOfService'],
                            'PayAmount' => $val['Pay'],
                            'TotalPayment' => $val['TotalPayment'],
                            'Paid' => $val['Paid'],
                            'Pending' => $val['Pending'],
                            'PaymentMode' => $val['PaymentMode'],
                            'PaidDate' => $paidDate,
                            'CreatedDate' => date('Y-m-d H:i:s'), 'IsActive' => '1'
                        );
                        $this->db->insert('total_service_order', $dataService);
                    }
                }
            }
        }
        return true;
    }

    /**
     * Save Service Order
     * 
     * @param int $enquieryID EnquiryID
     * @return boolean
     */
    public function saveNewServiceOrder_17042020($enquieryID) {
        $orderservice = ($this->input->post('orderservice'));
        $order = $this->input->post('order');

        if (!$this->input->post('ServiceOrderID')) {
            $paidDate = ($order['PaidDate']) ? date('Y-m-d', strtotime($order['PaidDate'])) : null;
            $data = array('EnquiryID' => $enquieryID,
                'TotalOrderValue' => $order['totalOrderValue'],
                'PayAmount' => $order['pay'],
                'Paid' => $order['paidAmount'],
                'Pending' => $order['pendingAmount'],
                'PaymentMode' => $order['paymentMode'],
                'PaidDate' => $paidDate, 'CreatedDate' => date('Y-m-d H:i:s'), 'IsActive' => '1'
            );
            $this->db->insert('service_order', $data);
            $serviceOrderID = $this->db->insert_id();

            if (is_array($orderservice)) {
                foreach ($orderservice as $val) {
                    if (!empty($val['service'])) {
                        $paidDate = ($order['PaidDate']) ? date('Y-m-d', strtotime($order['PaidDate'])) : null;
                        $dataService = array('ServiceOrderID' => $serviceOrderID,
                            'EnquiryID' => $enquieryID, 'ServiceID' => $val['service'],
                            'NoOfService' => $val['NoOfService'],
                            'PayAmount' => $val['Pay'],
                            'TotalPayment' => $val['TotalPayment'],
                            'Paid' => $val['Paid'],
                            'Pending' => $val['Pending'],
                            'PaymentMode' => $val['PaymentMode'],
                            'PaidDate' => $paidDate,
                            'CreatedDate' => date('Y-m-d H:i:s'), 'IsActive' => '1'
                        );
                        $this->db->insert('total_service_order', $dataService);
                    }
                }
            }
        } else {
            
        }
        return true;
    }

    /**
     * Get Order service details from total_service_order and service_order for user_details view page
     * 
     * @param int $enquieryID EnquiryID 
     * @return array
     */
    public function getServiceOrderDetails($enquieryID) {
        $this->db->select('service_order.*');
        $this->db->from('service_order');
        $this->db->where(array('service_order.EnquiryID' => $enquieryID, 'service_order.IsActive' => '1'));
        $this->db->order_by('service_order.ServiceOrderID', 'ASC');
        $query1 = $this->db->get();
        $result1 = $query1->result_array();

        $this->db->select('total_service_order.*, service_list.ServiceName, COUNT(customer_service_details.TotalServiceOrderID) AS "totalSchedule"');
        $this->db->from('total_service_order');
        $this->db->join('service_list', 'service_list.ServiceID = total_service_order.ServiceID', 'left');
        $this->db->join('customer_service_details', 'customer_service_details.TotalServiceOrderID = total_service_order.TotalServiceOrderID', 'left');
        $this->db->where(array('total_service_order.EnquiryID' => $enquieryID, 'total_service_order.IsActive' => '1'));
        $this->db->group_by('customer_service_details.TotalServiceOrderID');
        $this->db->order_by('total_service_order.ServiceOrderID', 'ASC');
        $query2 = $this->db->get();
        $result2 = $query2->result_array();
         
        $data = ['serviceOrder' => $result1, 'totalServiceOrder' => $result2];
        return $data;
    }

    /**
     * Get service details for edit
     * 
     * @param type $enquieryID EnquiryID
     */
    public function getEditServiceOrder($enquieryID) {
        $serviceOrderID = $this->input->get('editOrder');

        $this->db->select('service_order.*');
        $this->db->from('service_order');
        $this->db->where(array('service_order.EnquiryID' => $enquieryID, 'service_order.ServiceOrderID' => $serviceOrderID, 'service_order.IsActive' => '1'));
        $query1 = $this->db->get();
        $result1 = (array) $query1->row();

        $this->db->select('total_service_order.*, service_list.ServiceName');
        $this->db->from('total_service_order');
        $this->db->join('service_list', 'service_list.ServiceID = total_service_order.ServiceID', 'left');
        $this->db->where(array('total_service_order.ServiceOrderID' => $serviceOrderID, 'total_service_order.EnquiryID' => $enquieryID, 'total_service_order.IsActive' => '1'));

        $query2 = $this->db->get();
        $result2 = $query2->result_array();

        $defaultService = $this->getServiceList();
        $serviceList = null;
        foreach ($defaultService as $service) {
            $serviceList[$service['ServiceID']] = $service;
        }
        unset($defaultService);

        foreach ($result2 as $service) {
            $serviceList[$service['ServiceID']] = $service;
        }
        unset($result2);

        $data = ['serviceOrder' => $result1, 'totalServiceOrder' => $serviceList];
        return $data;
    }

    /**
     * Get service list
     * 
     * @return array
     */
    public function getServiceList() {
        $this->db->select('service_list.*');
        $this->db->from('service_list');
        $query = $this->db->get();
        $result = $query->result_array();

        return $result;
    }

    /**
     * get service Payment Details log
     * 
     * @param int $serviceOrderID ServiceOrderID from service_order table
     * @param int $enquiryID EnquiryID from user_enquiry table
     * 
     * @return array
     */
    public function getServicePaymentDetailsLog($serviceOrderID, $enquiryID) {
        $query = "SELECT * FROM(SELECT total_service_order.TotalServiceOrderID,
                total_service_order.ServiceOrderID, total_service_order.EnquiryID, 
                total_service_order.ServiceID, total_service_order.NoOfService, 
                total_service_order.TotalPayment, total_service_order.PayAmount, 
                total_service_order.Paid, total_service_order.Pending,
                DATE_FORMAT(total_service_order.PaidDate, '%d-%m-%Y') AS PaidDate,
                total_service_order.PaymentMode,
                DATE_FORMAT(total_service_order.CreatedDate, '%d-%m-%Y') AS CreatedDate,
                DATE_FORMAT(total_service_order.UpdatedDate, '%d-%m-%Y %H:%i:%s') AS UpdatedDate,
                service_list.ServiceName 
                FROM total_service_order
                INNER JOIN service_list ON service_list.ServiceID = total_service_order.ServiceID
                WHERE total_service_order.ServiceOrderID = '$serviceOrderID' AND total_service_order.EnquiryID = '$enquiryID'

                UNION

                SELECT service_payment_log.TotalServiceOrderID, service_payment_log.ServiceOrderID,
                service_payment_log.EnquiryID, service_payment_log.ServiceID,
                service_payment_log.NoOfService, service_payment_log.TotalPayment,
                service_payment_log.PayAmount, service_payment_log.Paid, service_payment_log.Pending,
                DATE_FORMAT(service_payment_log.PaidDate, '%d-%m-%Y') AS PaidDate,
                service_payment_log.PaymentMode,
                DATE_FORMAT(service_payment_log.CreatedDate, '%d-%m-%Y') AS CreatedDate,
                DATE_FORMAT(service_payment_log.UpdatedDate, '%d-%m-%Y %H:%i:%s') AS UpdatedDate,
                service_list.ServiceName
                FROM service_payment_log
                INNER JOIN service_list ON service_list.ServiceID = service_payment_log.ServiceID
                WHERE service_payment_log.ServiceOrderID = '$serviceOrderID' AND service_payment_log.EnquiryID = '$enquiryID') 
                AS p ORDER BY UpdatedDate  DESC, ServiceID DESC";
        $execute = $this->db->query($query);
        return $execute->result_array();
    }

    /**
     * Get Order Payment Details log from service_order and  order_payment_log
     * 
     * @param int $enquiryID EnqueryId
     * @return array
     */
    public function getOrderPaymentLog($enquiryID) {
        $query = "SELECT * FROM(SELECT service_order.ServiceOrderID, service_order.EnquiryID,
                service_order.TotalOrderValue, service_order.PayAmount, service_order.Paid, 
                service_order.Pending, 
                DATE_FORMAT(service_order.PaidDate, '%d-%m-%Y') AS PaidDate,                
                service_order.PaymentMode,
                DATE_FORMAT(service_order.CreatedDate, '%d-%m-%Y') AS CreatedDate,
                DATE_FORMAT(service_order.UpdatedDate, '%d-%m-%Y') AS UpdatedDate,
                service_order.IsActive
                FROM service_order
                WHERE service_order.EnquiryID = '$enquiryID'

                UNION 

                SELECT order_payment_log.ServiceOrderID, order_payment_log.EnquiryID, 
                order_payment_log.TotalOrderValue, order_payment_log.PayAmount, 
                order_payment_log.Paid, order_payment_log.Pending,                 
                DATE_FORMAT(order_payment_log.PaidDate, '%d-%m-%Y') AS PaidDate,
                order_payment_log.PaymentMode, 
                DATE_FORMAT(order_payment_log.CreatedDate, '%d-%m-%Y') AS CreatedDate,
                DATE_FORMAT(order_payment_log.UpdatedDate, '%d-%m-%Y') AS UpdatedDate,
                order_payment_log.IsActive FROM order_payment_log
                WHERE order_payment_log.EnquiryID = '$enquiryID') AS p ORDER BY UpdatedDate DESC";
        $execute = $this->db->query($query);
        return $execute->result_array();
    }

}
