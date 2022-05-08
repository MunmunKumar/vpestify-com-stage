<?php

session_start();
if ((isset($_POST["name"]) && $_POST["name"] != '') && (isset($_POST["city"]) && $_POST["city"] != '') && (isset($_POST["service_name"]) && $_POST["service_name"] != '') && (isset($_POST["mobile"]) && $_POST["mobile"] != '') && (isset($_POST["requirements"]) && $_POST["requirements"] != '')) {
    $name = $_POST["name"];
    $service_name = $_POST["service_name"];
    $city = $_POST["city"];
    $mobile = $_POST["mobile"];
    $requirements = $_POST["requirements"];
    $_SESSION['username'] = $name;

    date_default_timezone_set('Asia/Kolkata');
    $date = date('d-m-Y H:i');
    $replace = str_replace("www.", "info@", $_SERVER['SERVER_NAME']);

    //$to=$replace.',vpestify@gmail.com';       //email id
    $to = "safdarwxi@gmail.com";
    $subject = "Contact Enquiry form " . $_SERVER['SERVER_NAME'] . " " . $date;
    $txt = 'Hi Enquiry From Contact Enquiry  !<br /><br />' . ucfirst($name) . ' has sent you a message via contact form on your website! <br /><br />
            Name: ' . ucfirst($name) . '<br />
            Service Name: ' . ucfirst($service_name) . '<br />
            City: ' . ucfirst($city) . '<br />
            Phone: ' . ucfirst($mobile) . '<br /> 
            Message: ' . ucfirst($requirements) . '<br />';

    $headers = "MIME-Version: 1.0" . "\r\n";
    $headers .= "Content-type:text/html;charset=UTF-8" . "\r\n";
    $headers .= 'From: ' . $_SERVER['SERVER_NAME'] . '<' . $replace . '>' . "\r\n";

    if (mail($to, $subject, $txt, $headers)) {
        header('Location: thanks.php');
        //echo 'Message has been sent';
        exit;
    } else {
        echo "OOPS please try Again !!!";
    }
} else {
    echo "Authentication Failed";
}

//thanks you message
?>