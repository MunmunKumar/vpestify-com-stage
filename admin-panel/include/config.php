<?php
// for server connection
 $servername = "localhost";
 $username = "root";
 $password = "";
 $condb = "onkarcec_vpestifydb_09042022";


// for local connection
//$servername = "localhost";
//$username = "root";
//$password = "";
//$condb = "v_pestify";

$conn=new mysqli($servername, $username, $password, $condb);
if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
} 
//echo "Connected successfully";
$images='admin-panel/gallery-image/';
?>