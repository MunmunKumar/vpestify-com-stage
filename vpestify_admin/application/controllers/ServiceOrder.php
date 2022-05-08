<?php

defined('BASEPATH') OR exit('No direct script access allowed');

class ServiceOrder extends CI_Controller {

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
        $this->load->model('Serviceorder_model');
    }

    public function index() {
        
    }

    public function createServiceOrder($enquieryID) {
        $this->check_session();
        if (!$enquieryID) {
            redirect('Enquiry/usersDetails/' . $enquieryID);
        }
        $this->check_session();

        if ($this->input->get('editOrder')) {
            $data['title'] = 'Edit Service Order';
            $data['cusService'] = $this->Serviceorder_model->getEditServiceOrder($enquieryID);
        } else {
            $data['title'] = 'Create New Service Order';
            $data['cusService']['totalServiceOrder'] = $this->Serviceorder_model->getServiceList();
        }

        $data['enquiryID'] = $enquieryID;
        $data['users'] = $this->EnquiryView_model->getUsersDetailsById($enquieryID);
        $data['footer'] = $this->load->view('shared/footer', '', TRUE);
        $data['header'] = $this->load->view('shared/header', '', TRUE);
        $data['customjs'] = $this->load->view('shared/custom_js_view', '', TRUE);
        $data['serviceorderjs'] = $this->load->view('shared/service_order_js', '', TRUE);
        $data['layoutSidenav_nav'] = $this->load->view('shared/layoutSidenav_nav', '', TRUE);
        $this->load->view('new_service_order_view', $data);
    }

    /**
     * Save order service details
     * 
     * @param int $enquieryID EnquiryID
     */
    public function saveNewServiceOrder($enquieryID) {
        $this->check_session();
        if (!$enquieryID) {
            redirect('Enquiry/usersDetails/' . $enquieryID);
        }
        $this->check_session();
        $res = $this->Serviceorder_model->saveNewServiceOrder($enquieryID);
        if ($res) {
            redirect('Enquiry/usersDetails/' . $enquieryID);
        }
    }

    public function orderPaymentDetails() {
        $enquiryID = $this->input->post('enquiryID');
        $serviceOrderID = $this->input->post('serviceOrderID');

        $user = $this->EnquiryView_model->getUsersDetailsById($enquiryID);
        $servicepayment = $this->Serviceorder_model->getServicePaymentDetailsLog($serviceOrderID, $enquiryID);
        $orderpayment = $this->Serviceorder_model->getOrderPaymentLog($enquiryID);

        $data = ['EnquiryID' => $enquiryID, 'serviceOrderID' => $serviceOrderID,
            'servicePaymentDetails' => $servicepayment,
            'orderpayment' => $orderpayment, 'users'=>$user
        ];
        $this->load->view('partial/customer_order_payment_details_view', $data);
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
