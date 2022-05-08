<?php

defined('BASEPATH') OR exit('No direct script access allowed');

class Enquiry_model extends CI_Model {

    public function __construct() {
        parent:: __construct();
        $this->load->database();
        $this->load->library('session');
    }

    public function current_pool() {
        $this->db->select('MAX(UserID) as UserID');
        $this->db->from('user_enquiry');
        $query = $this->db->get();
        $result = $query->row();

        if ($result->UserID) {
            return ( ++$result->UserID);
        } else {
            return 'U100';
        }
    }

    /**
     * Save enquiry details
     * 
     * @param array $post HTTP Post
     */
    public function userEnquirySave($post) {

        $newUserID = $this->current_pool();

        $in = '';
        $visitDate = ($post['visitdate']) ? date("Y-m-d", strtotime($post['visitdate'])) : null;
        $followupdate = ($post['followupdate']) ? date("Y-m-d", strtotime($post['followupdate'])) : null;

        $leadtype = (isset($post['leadtype'])) ? $post['leadtype'] : '0';
        $data = array("UserName" => $post['username'], "Mobile" => $post['mobile'],
            "Email" => $post['email'], "VisitDate" => $visitDate, "FollowupDate" => $followupdate,
            "Amount" => $post['amount'], "CustomerPriority" => $post['CustomerPriority'],
            "City" => $post['city'], "State" => $post['state'], 'Country' => 'India',
            "Address" => $post['address'], "Message" => $post['comments'],
            "LeadType" => $leadtype, "LeadSource" => $post['leadsource'],
            "Telecaller" => $post['telecaller'], "SalesExecutive" => $post['SalesExecutive'],
            "Technician" => $post['technician'], "CompanyName" => $post['companyname'],
            "AreaSize" => $post['areasize'], "RatePerSqft" => $post['RatePerSqft'], "IsActive" => '1'
        );

        if (!$post['enquiryID']) {
            $userID = array("UserID" => $newUserID, "CreatedDate" => date('Y-m-d H:i:s'));
            $data = array_merge($data, $userID);
        }

        // Update
        if ($post['enquiryID']) {
            $this->db->where('EnquiryID', $post['enquiryID']);
            $this->db->update("user_enquiry", $data);

            if ((isset($post['servicename'])) && is_array($post['servicename'])) {
                foreach ($post['servicename'] as $val) {
                    $in .= "'$val', ";
                }
                $in = rtrim($in, ', ');
                if ($in) {
                    $in = " AND ServiceID NOT IN ($in)";
                }
                $query = "DELETE FROM customer_services WHERE EnquiryID = '" . $post['enquiryID'] . "'  $in";
                $this->db->query($query);
            }


            $enquiryid = $post['enquiryID'];
            $date = new DateTime('now', new DateTimeZone('Asia/Kolkata'));
            $createDateTime = $date->format('Y-m-d H:i:sA');
            if ((isset($post['servicename'])) && is_array($post['servicename'])) {
                foreach ($post['servicename'] as $val) {
                    $serviceID = (isset($val)) ? $val : '';
                    if ($serviceID != '') {
                        $query = "INSERT INTO customer_services (EnquiryID, ServiceID, NoOfService, CreatedDate) "
                                . " VALUES ($enquiryid, $serviceID, '1', '$createDateTime') "
                                . " ON DUPLICATE KEY UPDATE NoOfService = '1'";
                        $this->db->query($query);
                    }
                }
            }
        } else {  // Insert
            $this->db->insert("user_enquiry", $data);
            $enquiryID = $this->db->insert_id();

            if (isset($post['servicename']) && is_array($post['servicename'])) {
                foreach ($post['servicename'] as $val) {
                    $data = array('EnquiryID' => $enquiryID, 'ServiceID' => $val, 'CreatedDate' => date('Y-m-d H:i:s'));
                    $this->db->insert("customer_services", $data);
                }
            }
        }
    }

    public function getUsersDetailsById($id) {

        $this->db->select('user_enquiry.EnquiryID, user_enquiry.UserID, user_enquiry.UserName, user_enquiry.Mobile,
                user_enquiry.Email, user_enquiry.ServiceName, user_enquiry.Address, user_enquiry.Message, 
                user_enquiry.City, user_enquiry.State, user_enquiry.Country, user_enquiry.IsServiceDone,
                user_enquiry.Amount, user_enquiry.CompanyName, user_enquiry.AreaSize,
                user_enquiry.Telecaller,
                user_enquiry.Technician,
                user_enquiry.SalesExecutive,
                DATE_FORMAT(user_enquiry.CreatedDate, "%d-%m-%Y %r") AS CreatedDate,
                DATE_FORMAT(user_enquiry.UpdatedDate, "%d-%m-%Y %r") AS UpdatedDate, 
                DATE_FORMAT(user_enquiry.ServiceDate, "%d-%m-%Y %r") AS ServiceDate,
                DATE_FORMAT(user_enquiry.ScheduleDate, "%d-%m-%Y %r") AS ScheduleDate,
                DATE_FORMAT(user_enquiry.VisitDate, "%d-%m-%Y %r") AS VisitDate'
        );
        $this->db->from('user_enquiry');
        $this->db->where(array('user_enquiry.EnquiryID' => $id));
        $query = $this->db->get();
        $result = $query->row();

        return $result;
    }

    /**
     * Get Service List
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

}
