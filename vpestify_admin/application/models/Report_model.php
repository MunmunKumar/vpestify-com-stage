<?php

defined('BASEPATH') OR exit('No direct script access allowed');

class Report_model extends CI_Model {

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

    public function totalTodayScheduleService() {

        $query = $this->db->query("SELECT COUNT(*) AS total FROM customer_service_details 
                            WHERE DATE(customer_service_details.ScheduleDate) = CURDATE()");
        $result = $query->row();
        return $result;
    }

    public function countTomorrowService() {
        $query = $this->db->query("SELECT COUNT(*) AS total FROM customer_service_details 
                            WHERE DATE(customer_service_details.ScheduleDate) = (CURDATE() + INTERVAL 1 DAY)");
        $result = $query->row();
        return $result;
    }

    public function countTodayFolloupDate() {
        $query = $this->db->query("SELECT COUNT(*) AS total FROM user_comments 
                            WHERE DATE(user_comments.NextFollowupDate) = CURDATE()");
        $result = $query->row();

        $query1 = $this->db->query("SELECT COUNT(*) AS total FROM user_enquiry
                            WHERE DATE(user_enquiry.FollowupDate) = CURDATE()");
        $result1 = $query1->row();
        $total['total'] = ($result->total) + ($result1->total);
        return $total;
    }

    public function countMonthlyFollowupDate() {
        $query = $this->db->query("SELECT COUNT(*) as total, 
                    date_add(CURDATE(), INTERVAL 1 MONTH) AS lastMonthDate,  CURDATE() AS TodayDate
                    FROM user_comments
                    WHERE user_comments.NextFollowupDate >= CURDATE() 
                    AND user_comments.NextFollowupDate <=  date_add(CURDATE(), INTERVAL 1 MONTH)");
        $result = $query->row();

        $query1 = $this->db->query("SELECT COUNT(*) as total, 
                    date_add(CURDATE(), INTERVAL 1 MONTH) AS lastMonthDate,  CURDATE() AS TodayDate
                    FROM user_enquiry
                    WHERE user_enquiry.FollowupDate >= CURDATE() 
                    AND user_enquiry.FollowupDate <=  date_add(CURDATE(), INTERVAL 1 MONTH)");
        $result1 = $query1->row();

        $total['total'] = ($result->total) + ($result1->total);
        $total['lastMonthDate'] = ($result->lastMonthDate);
        $total['TodayDate'] = ($result->TodayDate);

        return $total;
    }

    /**
     * Get service report
     * 
     * @param string $servicetype 
     */
    public function serviceReport($servicetype = 0) {
        $where = '';
        switch ($servicetype) {
            case 'todayservice':
                $where = 'customer_service_details.ScheduleDate' . '=' . 'CURDATE()';
                break;
            case 'tomorrowservice':
                $where = 'DATE(customer_service_details.ScheduleDate)' . '=' . '(CURDATE() + INTERVAL 1 DAY)';
                break;

            default :
                redirect('AdminDashboard', 'index');
        }

        $this->db->select('customer_service_details.CustomerServiceDetailsID, '
                . 'customer_service_details.EnquiryID, customer_service_details.ServiceID,'
                . ' customer_service_details.ScheduleDate, customer_service_details.Telecaller,'
                . ' customer_service_details.Technician, customer_service_details.SalesExecutive,'
                . ' customer_service_details.CreatedDate, customer_service_details.UpdatedDate,'
                . ' customer_service_details.IsServiceDone,'
                . ' customer_service_details.ServiceCompleteDate, customer_service_details.Comments,'
                . ' user_enquiry.UserID, user_enquiry.UserName,'
                . ' user_enquiry.Mobile, user_enquiry.Email, user_enquiry.Address, user_enquiry.City, '
                . 'user_enquiry.State, user_enquiry.CustomerPriority, user_enquiry.LeadType, '
                . ' service_list.ServiceName'
        );
        $this->db->from('customer_service_details');
        $this->db->join('user_enquiry', 'user_enquiry.EnquiryID=customer_service_details.EnquiryID', 'left');
        $this->db->join('service_list', 'service_list.ServiceID=customer_service_details.ServiceID', 'left');
        $this->db->where($where);
        $this->db->order_by('customer_service_details.EnquiryID', 'ASC');
        $query = $this->db->get();

        return $query->result_array();
    }

    /**
     * Get Today Followup Date
     * 
     * @return array
     */
    public function followupReportDetails($followuptype) {
        $where1 = '';
        $where2 = '';
        switch ($followuptype) {
            case 'todayfollowup':
                $where1 = ' WHERE user_enquiry.FollowupDate = curdate()';
                $where2 = ' WHERE user_comments.NextFollowupDate = curdate()';
                break;
            case 'monthlyfollowup':
                $where1 = ' WHERE user_enquiry.FollowupDate >= curdate()
                             AND user_enquiry.FollowupDate <=  date_add(CURDATE(), INTERVAL 1 MONTH)';
                $where2 = ' WHERE user_comments.NextFollowupDate >= CURDATE() 
                             AND user_comments.NextFollowupDate <=  date_add(CURDATE(), INTERVAL 1 MONTH)';
                break;
            default :
                redirect('AdminDashboard', 'index');
        }
        $query = $this->db->query("SELECT * FROM (SELECT user_enquiry.EnquiryID,
                            user_enquiry.FollowupDate AS 'NextFollowupDate', 
                            user_enquiry.VisitDate AS 'NextVisitDate',
                            user_enquiry.UserName, user_enquiry.Mobile, user_enquiry.Email,
                            user_enquiry.Address, user_enquiry.City, user_enquiry.CustomerPriority, 
                            user_enquiry.LeadType, user_enquiry.Amount,  user_enquiry.Telecaller,
                            user_enquiry.CreatedDate, user_enquiry.Message AS 'Comments', user_enquiry.UserID 
                            FROM user_enquiry
                            $where1
                            UNION
                            SELECT user_comments.EnquiryID,
                            user_comments.NextFollowupDate,
                            user_comments.NextVisitDate,
                            user_enquiry.UserName, user_enquiry.Mobile, user_enquiry.Email, 
                            user_enquiry.Address, user_enquiry.City, user_enquiry.CustomerPriority,
                            user_enquiry.LeadType, user_enquiry.Amount, user_enquiry.Telecaller, 
                            user_enquiry.CreatedDate, user_comments.Comments, user_enquiry.UserID
                            FROM user_comments
                            INNER JOIN user_enquiry ON user_enquiry.EnquiryID = user_comments.EnquiryID
                             $where2 ) as p ORDER BY NextFollowupDate ASC"
        );
        $result = $query->result_array();
        return $result;
    }

    /**
     * Search for follow up 
     * 
     * @param array $post
     * 
     * @return array
     */
    function searchFollowupDetails($post) {
        $where1 = '';
        $where2 = '';
        if (is_array($post)) {
            foreach ($post as $key => $val) {
                switch ($key) {
                    case 'startdate':
                        if ($val) {
                            $startdate = date("Y-m-d", strtotime($val));
                        }
                        break;
                    case 'enddate':
                        if ($val) {
                            $enddate = date("Y-m-d", strtotime($val));
                        }
                        break;
                    case 'userid':
                        if ($val) {
                            $userid = $val;
                            $where1 .= " AND user_enquiry.UserID = '$userid'";
                            $where2 .= " AND user_enquiry.UserID = '$userid'";
                        }
                        break;
                    case 'name':
                        if ($val) {
                            $name = "%$val%";
                            $where1 .= " AND user_enquiry.UserName LIKE '$name'";
                            $where2 .= " AND user_enquiry.UserName LIKE '$name'";
                        }
                        break;
                    case 'mobile':
                        if ($val) {
                            $mobile = "%$val%";
                            $where1 .= " AND user_enquiry.Mobile LIKE '$mobile'";
                            $where2 .= " AND user_enquiry.Mobile LIKE '$mobile'";
                        }
                        break;
                    default :
                        $where1 .= ' user_enquiry.FollowupDate >= curdate()
                                AND user_enquiry.FollowupDate <=  date_add(CURDATE(), INTERVAL 1 MONTH)';
                        $where2 .= ' user_comments.NextFollowupDate >= CURDATE() 
                                AND user_comments.NextFollowupDate <=  date_add(CURDATE(), INTERVAL 1 MONTH)';
                }
            }


            if (isset($startdate) && isset($enddate)) {
                $where1 .= " AND user_enquiry.FollowupDate >= '$startdate'
                                AND user_enquiry.FollowupDate <=  '$enddate'";
                $where2 .= " AND user_comments.NextFollowupDate >= '$startdate'
                                AND user_comments.NextFollowupDate <=  '$enddate'";
            } elseif (isset($startdate) && !isset($enddate)) {
                $where1 .= " AND user_enquiry.FollowupDate = '$startdate'
                                AND user_enquiry.FollowupDate =  '$startdate'";
                $where2 .= " AND user_comments.NextFollowupDate = '$startdate'
                                AND user_comments.NextFollowupDate =  '$startdate'";
            } elseif (!isset($startdate) && isset($enddate)) {
                $where1 .= " AND user_enquiry.FollowupDate = '$enddate'
                                AND user_enquiry.FollowupDate =  '$enddate'";
                $where2 .= " AND user_comments.NextFollowupDate = '$enddate'
                                AND user_comments.NextFollowupDate =  '$enddate'";
            }
        } else {
            $where1 .= ' user_enquiry.FollowupDate >= curdate()
                                AND user_enquiry.FollowupDate <=  date_add(CURDATE(), INTERVAL 1 MONTH)';
            $where2 .= ' user_comments.NextFollowupDate >= CURDATE() 
                                AND user_comments.NextFollowupDate <=  date_add(CURDATE(), INTERVAL 1 MONTH)';
        }


        $where1 = ltrim($where1, ' AND ');
        $where2 = ltrim($where2, ' AND ');

        $query = $this->db->query("SELECT * FROM (SELECT user_enquiry.EnquiryID, 
                            user_enquiry.FollowupDate AS 'NextFollowupDate', 
                            user_enquiry.VisitDate AS 'NextVisitDate',
                            user_enquiry.UserName, user_enquiry.Mobile, user_enquiry.Email,
                            user_enquiry.Address, user_enquiry.City, user_enquiry.CustomerPriority, 
                            user_enquiry.LeadType, user_enquiry.Amount,  user_enquiry.Telecaller,
                            user_enquiry.CreatedDate, user_enquiry.Message AS 'Comments', user_enquiry.UserID 
                            FROM user_enquiry
                            WHERE $where1
               
                            UNION
                            SELECT user_comments.EnquiryID,
                            user_comments.NextFollowupDate,
                            user_comments.NextVisitDate,
                            user_enquiry.UserName, user_enquiry.Mobile, user_enquiry.Email, 
                            user_enquiry.Address, user_enquiry.City, user_enquiry.CustomerPriority,
                            user_enquiry.LeadType, user_enquiry.Amount, user_enquiry.Telecaller, 
                            user_enquiry.CreatedDate, user_comments.Comments, user_enquiry.UserID
                            FROM user_comments
                            INNER JOIN user_enquiry ON user_enquiry.EnquiryID = user_comments.EnquiryID
                             WHERE $where2
              				) as p 
                             GROUP BY EnquiryID ORDER BY NextFollowupDate ASC");

        // echo $this->db->last_query(); die;

        $result = $query->result_array();
        return $result;
    }

}
