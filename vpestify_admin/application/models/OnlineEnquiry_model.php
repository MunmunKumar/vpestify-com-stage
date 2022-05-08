<?php

defined('BASEPATH') OR exit('No direct script access allowed');

class OnlineEnquiry_model extends CI_Model {

    public function __construct() {
        parent:: __construct();
        $this->load->database();
        $this->load->library('session');
    }

    public function totalOnlineEnquiry() {
        $query = $this->db->query("SELECT COUNT(*) AS total FROM user_enquiry 
                                    WHERE user_enquiry.IsActive ='1' AND user_enquiry.Online = '1'");
        $result = $query->row();
        return $result;
    }

    /**
     * Search for follow up 
     * 
     * @param array $post
     * 
     * @return array
     */
    function searchOnlineEnquiry($post) {
        $where1 = '';

        if (is_array($post)) {
            foreach ($post as $key => $val) {
                switch ($key) {
                    case 'startdate':
                        if ($val) {
                            $startdate_val = date("Y-m-d", strtotime($val));
                            $startdate = $startdate_val;
                        }
                        break;
                    case 'enddate':
                        if ($val) {
                            $enddate_val = date("Y-m-d", strtotime($val));
                            $enddate = $enddate_val;
                        }
                        break;
                    case 'userid':
                        if ($val) {
                            $userid = $val;
                            $where1 .= " user_enquiry.UserID = '$userid'";
                        }
                        break;
                    case 'name':
                        if ($val) {
                            $name = "%$val%";
                            $where1 .= " user_enquiry.UserName LIKE '$name'";
                        }
                        break;
                    case 'mobile':
                        if ($val) {
                            $mobile = "%$val%";
                            $where1 .= "  user_enquiry.Mobile LIKE '$mobile'";
                        }
                        break;
                    default :
                        $where1 .= ' user_enquiry.CreatedDate >= curdate()
                                AND user_enquiry.CreatedDate <=  date_add(CURDATE(), INTERVAL 1 MONTH)';
                }
            }

            if (isset($startdate) && isset($enddate)) {
                $where1 .= "  user_enquiry.CreatedDate >= '$startdate 00:00:00'
                                AND user_enquiry.CreatedDate <=  '$enddate 23:59:59'";
            } elseif (isset($startdate) && !isset($enddate)) {
                $where1 .= "  user_enquiry.CreatedDate >= '$startdate 00:00:00'
                                AND user_enquiry.CreatedDate <=  '$startdate 23:59:59'";
            } elseif (!isset($startdate) && isset($enddate)) {
                $where1 .= "  user_enquiry.CreatedDate >= '$enddate 00:00:00'
                                AND user_enquiry.CreatedDate <=  '$enddate 23:59:59'";
            }
        } else {
            $where1 .= ' user_enquiry.CreatedDate >= curdate()
                                AND user_enquiry.CreatedDate <=  date_add(CURDATE(), INTERVAL 1 MONTH)';
        }

        $where1 = ltrim($where1, ' AND ');

        $query = $this->db->query("SELECT * FROM user_enquiry
                                    WHERE $where1 AND user_enquiry.IsActive ='1'
                                    AND user_enquiry.Online = '1' ORDER BY `CreatedDate` DESC");

        //echo $this->db->last_query();
        //die;

        $result = $query->result_array();
        return $result;
    }

}
