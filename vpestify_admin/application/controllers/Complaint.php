<?php

defined('BASEPATH') OR exit('No direct script access allowed');

class Complaint extends CI_Controller 
{
    public function __construct() 
    {
        parent::__construct();
        $this->load->library('session');
        $this->load->helper('form');
        $this->load->helper('url');
        $this->load->model('Complaint_model');
        $this->load->model('Login_model');
        $this->load->model('Report_model');
    }

    public function index()
    {

        $data['page'] = 'Complaint';
        $data['footer'] = $this->load->view('shared/footer', '', TRUE);
        $data['header'] = $this->load->view('shared/header', '', TRUE);
        $data['layoutSidenav_nav'] = $this->load->view('shared/layoutSidenav_nav', '', TRUE);
        $data['complaint_js_view'] = $this->load->view('shared/complaint_js_view', '', TRUE);
        
        $data['year'] = $this->Complaint_model->getComplaintYear();

        if ($this->input->post()) {
            $this->Complaint_model->saveComplaint($this->input->post('complaint'));           
        }

        if ($this->input->get('edit') != '') {
            $data['complaint'] = $this->Complaint_model->getComplaintById($this->input->get('edit'));
        }
        
        $this->check_session();
        $this->load->view('complaint_view',  $data);
    }
   

    public function getComplaintDataTable()
    {
        $data = $this->Complaint_model->getComplaintDataTable();
        $totalCount = $this->Complaint_model->totalCountComplaint();

        $json_data = array(
            "draw" => intval($this->input->post('draw')),
            "recordsTotal" =>$totalCount->total,
            "recordsFiltered" =>  ($totalCount->total),
            "data" => $data,
            //'orderValue' => 100
        );

        echo json_encode($json_data);
    }

    public function getComplaintEdit($id){
        echo $id; die;
    }

   
    public function check_session() 
    {
        $user = $_SESSION['user'];
        if (!is_array($user)) {
            redirect('AdminDashboard/index');
        } else {
            return true;
        }
    }

}
