<?php

defined('BASEPATH') OR exit('No direct script access allowed');

class CustomerService extends CI_Controller {

    public function __construct() {
        parent::__construct();
        $this->load->library('session');
        $this->load->helper('form');
        $this->load->helper('url');
        if (function_exists('date_default_timezone_set')) {
            date_default_timezone_set('Asia/Kolkata');
        }
        $this->load->model('CustomerService_model');
        $this->load->model('EnquiryView_model');
    }

    public function index($id) {
        $this->check_session();
        $data['cusService'] = $this->CustomerService_model->getCustomerService($id);
        $data['serviceList'] = $this->CustomerService_model->getServiceList();
        $data['enquiryID'] = $id;

        $data['footer'] = $this->load->view('shared/footer', '', TRUE);
        $data['header'] = $this->load->view('shared/header', '', TRUE);
        $data['customjs'] = $this->load->view('shared/custom_js_view', '', TRUE);
        $data['layoutSidenav_nav'] = $this->load->view('shared/layoutSidenav_nav', '', TRUE);

        $this->load->view('customer_service_details_view', $data);
    }

    public function customerServiceDetails() {
        $enquiryID = $this->input->post('enquiryID');
        $serviceID = $this->input->post('serviceID');
        $data['noOfService'] = $this->CustomerService_model->renderCustomerDetails($enquiryID, $serviceID);
        $this->load->view('partial/customer_service_view', $data);
    }

    /**
     * Save selected service in customer_service table
     * 
     * @param type $id EnquiryID
     */
    public function includeCustomerService($id) {
        $this->check_session();
        if ($this->input->post('enquiryid') && $this->input->post('save_service') == 'EditService') {
            $this->CustomerService_model->saveCustomerService($id);
            redirect('Enquiry/usersDetails/' . $id);
        } else {
            redirect('Enquiry/usersDetails/' . $id);
        }
    }

    /**
     * Add Schedule for service details
     * 
     * @param type $enquiryID EnquiryID
     */
    public function addServiceScheduleDetails($enquiryID) {
        if ($this->CustomerService_model->addServiceScheduleDetails()) {
            redirect('Enquiry/usersDetails/' . $enquiryID);
        }
    }

    /**
     * Ajax call
     * Get customer service details based on totalserviceId, serviceID and enquiryID wise
     */
    public function customerServiceDetailsGrid() {
        // $enquiryID = $this->input->post('enquiryID');
        $serviceID = $this->input->post('serviceID');
        $totalServiceOrderID = $this->input->post('totalServiceOrderID');
        $data['cusServiceGrid'] = $this->CustomerService_model->getCustomerServiceTable($serviceID, $totalServiceOrderID);

        $this->load->view('partial/customer_service_details_view', $data);
    }

    /**
     * Get customer service details for edit
     * 
     * edit Customer Service Details
     */
    public function editCustomerServiceDetails() {
        $customerServiceDetailsID = $this->input->post('CustomerServiceDetailsID');
        $data['editService'] = $this->CustomerService_model->editCustomerServiceDetails($customerServiceDetailsID);

        $this->load->view('partial/customer_service_edit_view', $data);
    }

    /**
     * Cancel the service details using Ajax call
     */
    public function cancelCustomerServiceDetails() {
        $customerServiceDetailsID = $this->input->post('CustomerServiceDetailsID');
        $ischecked = $this->input->post('ischecked');
        $result = $this->CustomerService_model->cancelCustomerServiceDetails($customerServiceDetailsID, $ischecked);
        echo $result;
    }

    /**
     * Cancel the service details using Ajax call
     */
    public function checkIsServiceDone() {
        $customerServiceDetailsID = $this->input->post('CustomerServiceDetailsID');
        $ischecked = $this->input->post('ischecked');
        $result = $this->CustomerService_model->checkIsServiceDone($customerServiceDetailsID, $ischecked);
        echo $result;
    }

    /**
     * get particular customer details for edit using Ajax 
     * call and rendered partial view
     */
    public function editCustomerDetails() {
        $enquiryID = $this->input->post('enquiryID');
        $data['user'] = $this->CustomerService_model->getCustomerDetailsById($enquiryID);
        $data['priority_list'] = array('Hot' => 'Hot', 'Good' => 'Good',
            'AboveAvarage' => 'AboveAverage', 'Avarage' => 'Average', 'BelowAvarage' => 'BelowAverage'
        );
        $data['leadsource_list'] = array('justdial' => 'Justdial', 'indiamart' => 'Indiamart',
            'sulekha' => 'Sulekha', 'quikr' => 'Quikr', 'direct' => 'Direct', 'googleads' => 'Googleads', 'enquiry' => 'Enquiry'
        );
        $this->load->view('partial/edit_customer_view', $data);
    }

    /**
     * Update Customer details
     * @param type $enquiryID EnquiryID
     */
    public function updateCustomerDetails($enquiryID) {
        $response = $this->CustomerService_model->updateCustomerDetails($this->input->post('enquiry'));
        if ($response) {
            redirect('Enquiry/usersDetails/' . $enquiryID);
        }
    }
    
    public function updateServiceStatus($enquiryID){
        
        $response = $this->CustomerService_model->updateServiceStatus($this->input->post('status'), $enquiryID);
        if ($response) {
            redirect('Enquiry/usersDetails/' . $enquiryID);
        }
    }

    /**
     * Check session
     * 
     * @return boolean
     */
    public function check_session() {
        $user = $_SESSION['user'];
        if (!is_array($user)) {
            redirect('AdminDashboard/index');
        } else {
            return true;
        }
    }

}
