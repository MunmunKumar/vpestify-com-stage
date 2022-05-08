<?php
session_start();
if(!isset($_SESSION['un'])){
  header("Location:index.php");
  exit;
}
include'include/config.php';
if(empty($_GET['id'])){
    header("location:sub-category.php");
}else{
    $id=$_GET['id'];
}
$conn->query("delete from `tbl_category` where id=".$id."");
header("location:sub-category.php");
?>