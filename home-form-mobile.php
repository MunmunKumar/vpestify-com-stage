<?php

include_once("admin-panel/include/config.php");
//echo '<ul>';
if (empty($_POST['mobil'])) {
    echo '<li>Mobime No is mandatory.</li>';
} else {
    $mobil = $_POST['mobil'];
    $query = $conn->query("SELECT MAX(UserID) as UserID FROM user_enquiry");
    $row = $query->fetch_assoc();

    if ($row['UserID']) {
        $number = substr($row['UserID'], 1);
        $userID = ( 'U' . ++$number);
    } else {
        $userID = 'U100';
    }

    $sql = "INSERT INTO user_enquiry(Mobile, UserID, Online, IsActive, CreatedDate)VALUES('$mobil', '$userID', '1', '1', '" . date('Y-m-d H:i:s') . "')";
    if ($conn->query($sql) === TRUE) {
        date_default_timezone_set('Asia/Kolkata');
        $date = date('d-m-Y H:i');
        $replace = str_replace("www.", "info@", $_SERVER['SERVER_NAME']);

        $to = "vpestify@gmail.com,kumarmunmun@gmail.com";

        $subject = "Contact Enquiry form " . $_SERVER['SERVER_NAME'] . " " . $date;
        $txt = 'Hi Enquiry From Contact Enquiry  !<br /><br />' . $mobil . ' has sent you a message via contact form on your website! <br /><br />				 
				
				 Phone: ' . ucfirst($mobil) . '<br />';

        $headers = "MIME-Version: 1.0" . "\r\n";
        $headers .= "Content-type:text/html;charset=UTF-8" . "\r\n";
        $headers .= 'From: ' . $_SERVER['SERVER_NAME'] . '<' . $replace . '>' . "\r\n";


        mail($to, $subject, $txt, $headers);
        echo "<span>Thank you for enquiry. Our customer care will contact you shortly.</span>";
    } else {
        echo "Error: " . $sql . "<br>" . $conn->error;
    }
    echo'<script>$("#mform").trigger("reset");</script>';
}
//echo'</ul>';
?>