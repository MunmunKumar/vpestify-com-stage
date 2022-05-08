<?php

defined('BASEPATH') OR exit('No direct script access allowed');

class OnlineEnquiry extends CI_Controller {

    public function __construct() {
        parent::__construct();
        $this->load->library('session');
        $this->load->helper('form');
        $this->load->helper('url');
        $this->load->model('OnlineEnquiry_model');
    }

    public function index() {
        $this->check_session();
        
        if ($this->input->post('search')) {
            $data['startdate'] = $this->input->post('search')['startdate'];
            $data['enddate'] = $this->input->post('search')['enddate'];
            $data['userid'] = $this->input->post('search')['userid'];
            $data['name'] = $this->input->post('search')['name'];
            $data['mobile'] = $this->input->post('search')['mobile'];
        }

        $data['tableRow'] = $this->OnlineEnquiry_model->searchOnlineEnquiry($this->input->post('search'));
        $data['footer'] = $this->load->view('shared/footer', '', TRUE);
        $data['header'] = $this->load->view('shared/header', '', TRUE);
        $data['layoutSidenav_nav'] = $this->load->view('shared/layoutSidenav_nav', '', TRUE);
        $this->load->view('online_enquiry_view', $data);
    }
    
    public function check_session() {
        $user = $_SESSION['user'];
        if (!is_array($user)) {
            redirect('AdminDashboard/index');
        } else {
            return true;
        }
    }

}
