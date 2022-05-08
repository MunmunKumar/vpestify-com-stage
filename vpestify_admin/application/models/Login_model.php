<?php

defined('BASEPATH') OR exit('No direct script access allowed');

class Login_model extends CI_Model {

    public function __construct() {
        parent:: __construct();
        $this->load->database();
        $this->load->library('session');
    }

    public function checkUserAuth($post) {
        

        $this->db->select('user_login.UserID, user_login.UserName,
                  user_login.RoleID, user_login.Email, user_login.Mobile, user_role.Role'
        );
        $this->db->from('user_login');
        $this->db->join('user_role', 'user_role.RoleId=user_login.RoleID', 'inner');
        $this->db->where(array('user_login.UserName' => ($post['username']),
            'user_login.Password' => ($post['password'])));
        $query = $this->db->get();
        
        return $query->row();
    }

}
