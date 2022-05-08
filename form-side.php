<?php

include_once("admin-panel/include/config.php");

if (empty($_POST['name'])) {
    echo'<span>Name is mandatory.</span>';
} else if (empty($_POST['mobile'])) {
    echo'<span>Mobile No. is mandatory.</span>';
} else {
    $name = ucfirst($_POST['name']);
    $mobile = $_POST['mobile'];
    $service_name = ucfirst($_POST['service_name']);
    $city = ucfirst($_POST['city']);
    $requirements = ucfirst($_POST['requirements']);

    $query = $conn->query("SELECT MAX(UserID) as UserID FROM user_enquiry");
    $row = $query->fetch_assoc();

    if ($row['UserID']) {
        $number = substr($row['UserID'], 1);
        $userID = ( 'U' . ++$number);
    } else {
        $userID = 'U100';
    }
    
    $sql = "INSERT INTO user_enquiry(UserName, UserID, Mobile, ServiceName, City, Message, Online, IsActive, CreatedDate)VALUES('$name', '$userID', '$mobile', '$service_name', '$city', '$requirements', '1', '1', '" . date('Y-m-d H:i:s') . "')";
    if ($conn->query($sql) === TRUE) {

        date_default_timezone_set('Asia/Kolkata');
        $date = date('d-m-Y H:i');
        $replace = str_replace("www.", "info@", $_SERVER['SERVER_NAME']);

        $to = "vpestify@gmail.com";

        $subject = "Contact Enquiry form " . $_SERVER['SERVER_NAME'] . " " . $date;
        $txt = 'Hi Enquiry From Contact Enquiry  !<br /><br />' . ucfirst($name) . ' has sent you a message via contact form on your website! <br /><br />
				 Name: ' . ucfirst($name) . '<br />
				 Service Name: ' . ucfirst($service_name) . '<br />
				 Phone: ' . ucfirst($mobile) . '<br /> 
				 City: ' . ucfirst($city) . '<br /> 
				 Message: ' . ucfirst($requirements) . '<br />';

        $headers = "MIME-Version: 1.0" . "\r\n";
        $headers .= "Content-type:text/html;charset=UTF-8" . "\r\n";
        $headers .= 'From: ' . $_SERVER['SERVER_NAME'] . '<' . $replace . '>' . "\r\n";

        mail($to, $subject, $txt, $headers);

        echo "<span>Thank you for enquiry. Our customer care will contact you shortly.</span>";
    } else {
        echo "Error: " . $sql . "<br>" . $conn->error;
    }
    echo'<script>$("#myForm").trigger("reset");</script>';
}
?>