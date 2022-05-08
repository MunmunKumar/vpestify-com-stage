<?php
session_start();
if(!isset($_SESSION['un'])){
  header("Location:index.php");
  exit;
}
include'include/config.php';
if(empty($_GET['id'])){
    header("location:service.php");
}else{
    $id=$_GET['id'];
}
$conn->query("delete from `tbl_service` where s_id=".$id."");
header("location:service.php");
?>