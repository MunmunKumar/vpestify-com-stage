<?php

defined('BASEPATH') OR exit('No direct script access allowed');

class AdminDashboard extends CI_Controller {

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

        if ($this->input->post()) {

            $result = $this->Login_model->checkUserAuth($this->input->post());

            if ($result) {
                $this->set_session($result);
                redirect('AdminDashboard/dashboard');
            } else {
                $this->load->view('admin_login_view');
            }
        }

        $this->load->view('admin_login_view');
    }

    public function dashboard() {

        $this->check_session();
        $data['totalOnline'] = $this->Report_model->totalOnlineEnquiry();
        $data['totalToday'] = $this->Report_model->totalTodayScheduleService();
        $data['tomorrowService'] = $this->Report_model->countTomorrowService();
        $data['todayFolloupDate'] = $this->Report_model->countTodayFolloupDate();
        $data['monthlyFolloupDate'] = $this->Report_model->countMonthlyFollowupDate();

       // $data['getEnquiry'] = $this->EnquiryView_model->getUsersDetails();

        $data['footer'] = $this->load->view('shared/footer', '', TRUE);
        $data['header'] = $this->load->view('shared/header', '', TRUE);
        $data['layoutSidenav_nav'] = $this->load->view('shared/layoutSidenav_nav', '', TRUE);
        $data['datatable_js'] = $this->load->view('shared/dashboard_js_view', '', TRUE);
        
        $this->load->view('dashboard_view', $data);
    }

    public function getUserDetailsDataTable(){
        $data = $this->EnquiryView_model->getUsersDetailsDataTable();
        $totalCount = $this->EnquiryView_model->countTotalUsers();

        $json_data = array(
            "draw" => intval($this->input->post('draw')),
            "recordsTotal" =>$totalCount->total,
            "recordsFiltered" =>  ($totalCount->total),
            "data" => $data,
            //'orderValue' => 100
        );

        echo json_encode($json_data);

    }

    public function set_session($result) {
        $_SESSION['user'] = (array) $result;

        return true;
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
