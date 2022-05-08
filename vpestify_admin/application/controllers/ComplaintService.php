<?php

defined('BASEPATH') OR exit('No direct script access allowed');

class ComplaintService extends CI_Controller 
{
    public function __construct() 
    {
        parent::__construct();
        $this->load->library('session');
        $this->load->helper('form');
        $this->load->helper('url');
        if (function_exists('date_default_timezone_set')) {
            date_default_timezone_set('Asia/Kolkata');
        }
        $this->load->model('Complaint_model');
        $this->load->model('Login_model');       
    }

    public function index()
    {
        echo "testtest"; die;
    }
   
}
