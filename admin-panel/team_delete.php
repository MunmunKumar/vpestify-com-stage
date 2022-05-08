<?php
session_start();
if(!isset($_SESSION['un'])){
  header("Location:index.php");
  exit;
}
include'include/config.php';
$id=$_GET['id'];
$conn->query("delete from `tbl_team` where id=".$id."");
header("location:testimonial.php");
?>