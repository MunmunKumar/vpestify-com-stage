<?php

defined('BASEPATH') OR exit('No direct script access allowed');

class Enquiry extends CI_Controller {

    public function __construct() {
        parent::__construct();
        $this->load->library('session');
        $this->load->helper('form');
        $this->load->helper('url');
        if (function_exists('date_default_timezone_set')) {
            date_default_timezone_set('Asia/Kolkata');
        }
        $this->load->model('Enquiry_model');
        $this->load->model('EnquiryView_model');
        $this->load->model('CustomerService_model');
        $this->load->model('Serviceorder_model');
    }

    public function index() {
        $this->check_session();
        $data['footer'] = $this->load->view('shared/footer', '', TRUE);
        $data['header'] = $this->load->view('shared/header', '', TRUE);
        $data['layoutSidenav_nav'] = $this->load->view('shared/layoutSidenav_nav', '', TRUE);
        $data['priority_list'] = array('Hot' => 'Hot', 'Good' => 'Good',
            'AboveAvarage' => 'AboveAverage', 'Avarage' => 'Average', 'BelowAvarage' => 'BelowAverage'
        );
        $data['leadsource_list'] = array('justdial' => 'Justdial', 'indiamart' => 'Indiamart',
            'sulekha' => 'Sulekha', 'quikr' => 'Quikr', 'direct' => 'Direct', 'googleads' => 'Googleads', 'enquiry' => 'Enquiry'
        );

        if ($this->input->post('enquiry')) {
            $this->Enquiry_model->userEnquirySave($this->input->post('enquiry'));
        }
        if ($this->input->get('edit') != '') {
            $data['user'] = $this->EnquiryView_model->getUsersDetailsById($this->input->get('edit'));
        }
        $data['getEnquiry'] = $this->EnquiryView_model->getUsersDetails();
        $data['serviceList'] = $this->Enquiry_model->getServiceList();


        $this->load->view('enquiry_form_view', $data);
    }

    public function usersDetails($id) {
        if (!$id) {
            redirect('AdminDashboard/dashboard');
        }
        $this->check_session();

        // Save comments and follow up date
        if ($this->input->post('message')) {
            $message = $this->input->post('message');
            $followupDate = ($this->input->post('FollowupDate')) ? date("Y-m-d", strtotime($this->input->post('FollowupDate'))) : null;
            $nextVisitDate = ($this->input->post('NextVisitDate')) ? date("Y-m-d", strtotime($this->input->post('NextVisitDate'))) : null;
            $enqID = $this->input->post('enquiryid');
            $this->EnquiryView_model->saveUserMsg($message, $followupDate, $nextVisitDate, $enqID);
        }

        if ($this->input->post('enquiry')) {
            $this->Enquiry_model->userEnquirySave($this->input->post('enquiry'));
        }

        $data['users'] = $this->EnquiryView_model->getUsersDetailsById($id);
        $data['msg'] = $this->EnquiryView_model->getUsersMessageById($id);
        $data['cusService'] = $this->CustomerService_model->getCustomerService($id);
        $data['serviceList'] = $this->CustomerService_model->getServiceList();
        //$data['detailsService'] = $this->CustomerService_model->getCustomerServiceDetails($id);
        $data['selectedService'] = $this->CustomerService_model->getSelectedServiceDetails($id);
        $data['order'] = $this->Serviceorder_model->getServiceOrderDetails($id);
        $data['enquiryID'] = $id;

        $data['footer'] = $this->load->view('shared/footer', '', TRUE);
        $data['header'] = $this->load->view('shared/header', '', TRUE);
        $data['layoutSidenav_nav'] = $this->load->view('shared/layoutSidenav_nav', '', TRUE);
        $data['customjs'] = $this->load->view('shared/custom_js_view', '', TRUE);

        $this->load->view('users_details_view', $data);
    }

    /**
     * Customer service details
     */
    public function customerServiceDetails($id) {
        $data['cusService'] = $this->EnquiryView_model->getCustomerService($id);
        $data['serviceList'] = $this->EnquiryView_model->getServiceList();

        $data['footer'] = $this->load->view('shared/footer', '', TRUE);
        $data['header'] = $this->load->view('shared/header', '', TRUE);
        $data['layoutSidenav_nav'] = $this->load->view('shared/layoutSidenav_nav', '', TRUE);

        $this->load->view('customer_service_details_view', $data);
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
