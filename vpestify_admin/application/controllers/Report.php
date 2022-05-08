<?php

defined('BASEPATH') OR exit('No direct script access allowed');

class Report extends CI_Controller {

    public function __construct() {
        parent::__construct();
        $this->load->library('session');
        $this->load->helper('form');
        $this->load->helper('url');
        $this->load->model('EnquiryView_model');
        $this->load->model('Login_model');
        $this->load->model('Report_model');
    }

    public function index() {
        $this->check_session();
        if (!($this->input->get('report'))) {
            redirect('AdminDashboard', 'index');
        }
        $servicetype = $this->input->get('report');
        switch ($servicetype) {
            case 'todayservice':
                $data['reporttype'] = "Today Service Details";
                break;
            case 'tomorrowservice':
                $data['reporttype'] = "Tomorrow Service Details";
                break;
            default :
                redirect('AdminDashboard', 'index');
        }

        $data['tableRow'] = $this->Report_model->serviceReport($servicetype);

        $data['footer'] = $this->load->view('shared/footer', '', TRUE);
        $data['header'] = $this->load->view('shared/header', '', TRUE);
        $data['layoutSidenav_nav'] = $this->load->view('shared/layoutSidenav_nav', '', TRUE);
        $this->load->view('service_report_view', $data);
    }

    /**
     * Followup details
     */
    public function followup() {
        $this->check_session();
        if (!($this->input->get('report'))) {
            redirect('AdminDashboard', 'index');
        }
        $followuptype = $this->input->get('report');
        switch ($followuptype) {
            case 'todayfollowup':
                $data['reporttype'] = "Today followup Details";
                break;
            case 'monthlyfollowup':
                $data['reporttype'] = "Monthly followup Details";
                break;
            default :
                redirect('AdminDashboard', 'index');
        }

        $data['tableRow'] = $this->Report_model->followupReportDetails($followuptype);

        $data['footer'] = $this->load->view('shared/footer', '', TRUE);
        $data['header'] = $this->load->view('shared/header', '', TRUE);
        $data['layoutSidenav_nav'] = $this->load->view('shared/layoutSidenav_nav', '', TRUE);
        $this->load->view('followupdetails_view', $data);
    }

    /**
     * Search follow up
     */
    public function searchFollowup() {
        $this->check_session();
        
        if ($this->input->post('search')) {
            $data['startdate'] = $this->input->post('search')['startdate'];
            $data['enddate'] = $this->input->post('search')['enddate'];
            $data['userid'] = $this->input->post('search')['userid'];
            $data['name'] = $this->input->post('search')['name'];
            $data['mobile'] = $this->input->post('search')['mobile'];
        }

        $data['tableRow'] = $this->Report_model->searchFollowupDetails($this->input->post('search'));
        $data['footer'] = $this->load->view('shared/footer', '', TRUE);
        $data['header'] = $this->load->view('shared/header', '', TRUE);
        $data['layoutSidenav_nav'] = $this->load->view('shared/layoutSidenav_nav', '', TRUE);
        $this->load->view('search_followup_details_view', $data);
    }

    public function check_session() {
        $user = $_SESSION['user'];
        if (!is_array($user)) {
            redirect('AdminDashboard/index');
        } else {
            return true;
        }
    }

    function logout() {
        $newdata = $_SESSION['user'];
        $this->session->unset_userdata($newdata);
        $this->session->sess_destroy();
        redirect('AdminDashboard', 'index');
    }

}
