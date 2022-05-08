<?php

defined('BASEPATH') OR exit('No direct script access allowed');

class Complaint_model extends CI_Model {

    public function __construct() {
        parent:: __construct();
        $this->load->database();
        $this->load->library('session');
    }

   public function saveComplaint($post){

    $ComplaintDate = ($post['ComplaintDate']) ? date("Y-m-d", strtotime($post['ComplaintDate'])) : null;
    $ServiceDate = ($post['ServiceDate']) ? date("Y-m-d", strtotime($post['ServiceDate'])) : null;
    $AttendedComplaintDate = ($post['AttendedComplaintDate']) ? date("Y-m-d", strtotime($post['AttendedComplaintDate'])) : null;
    $ComplaintFollowupDate = ($post['ComplaintFollowupDate']) ? date("Y-m-d", strtotime($post['ComplaintFollowupDate'])) : null;
    
    $data = [
        'CustomerName'=> $post['CustomerName'],
        'Address'=> $post['Address'],
        'ServiceName'=> $post['ServiceName'],
        'Mobile'=> $post['Mobile'],
        'amount'=> $post['Amount'],
        'TechnicianName'=> $post['TechnicianName'],
        'AttendeeComplaint'=> $post['AttendeeComplaint'],
        'Status'=> $post['Status'],
        'Comments'=> $post['Comments'],
        'ComplaintDate'=> $ComplaintDate,
        'ServiceDate'=> $ServiceDate,
        'AttendedComplaintDate'=> $AttendedComplaintDate,
        'ComplaintFollowupDate'=> $ComplaintFollowupDate,
        'CreatedOn' => date('Y-m-d H:i:s')
    ];

        if($post['ComplaintID']){
            $this->db->where('ComplaintID', $post['ComplaintID']);
            $this->db->update("complaint", $data);           
        }else{ 
            $this->db->insert("complaint", $data);
            $complaintID = $this->db->insert_id();
            }
            return true;
   }

   public function getComplaintDataTable(){

        $lenght = '';
        $start = '';
        $year = '';
        $searchVal = '';

        if($this->input->post()){
            $lenght =  $this->input->post('start');
            $start =  $this->input->post('length');
        }
        if($this->input->post('year')){
            $year = $this->input->post('year');
        }

        if($this->input->post('search')['value']){
            $searchVal = $this->input->post('search')['value'];
        }
       
        // Select statement

        $this->db->select('*');
        $this->db->from('complaint');

        if($year != ''){
            $this->db->where('YEAR(ComplaintDate)', $year);
        }

        if($searchVal != ''){
            $this->db->like('CustomerName', $searchVal);
            $this->db->or_like('ServiceName', $searchVal);  
            $this->db->or_like('Mobile', $searchVal);  
            $this->db->or_like('Amount', $searchVal);           
            $this->db->or_like('ServiceDate', $searchVal);  
            $this->db->or_like('TechnicianName', $searchVal);  
            $this->db->or_like('AttendeeComplaint', $searchVal);  
            $this->db->or_like('Status', $searchVal);    
            $this->db->or_like('Comments', $searchVal);
            $this->db->or_like('YEAR(ComplaintDate)', $searchVal);  
            $this->db->or_like('YEAR(AttendedComplaintDate)', $searchVal);  
            $this->db->or_like('YEAR(ComplaintFollowupDate)', $searchVal);  
            $this->db->or_like('YEAR(CreatedOn)', $searchVal);  
        }
       
        $this->db->limit($start, $lenght);
        $query = $this->db->get();

        $result = $query->result_array();
        return ($result);
   }

   // Total count
   public function totalCountComplaint()
   {
        $this->db->select('count(*) As total');

        $this->db->from('complaint');
        $query = $this->db->get();

        $result = $query->row();
        return ($result);
   }

   public function getComplaintById($id = 0)
   {
        $this->db->select('*');
        $this->db->from('complaint');
        $this->db->where(array('ComplaintID' => $id));
        $query = $this->db->get();

        $result = $query->row();
        return ($result);
   }

   // Get year
   public function getComplaintYear()
   {
        $this->db->select('YEAR(ComplaintDate) as year');
        $this->db->from('complaint');
        $this->db->group_by('year');
        $query = $this->db->get();

        $result = $query->result_array();
        return ($result);

   }

}
