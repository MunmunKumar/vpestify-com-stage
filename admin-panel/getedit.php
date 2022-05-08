<?php

session_start();
if (!isset($_SESSION['un'])) {
    header("Location:index.php");
    exit;
}
include 'include/config.php';
$qq = $_GET['qq'];
$Menu_Sql = $conn->query("select * from `tbl_category` where menu_name='$qq'");
while ($Menu_Row = $Menu_Sql->fetch_assoc()) {
    echo'<option value="' . $Menu_Row['head_url'] . '">' . $Menu_Row['head'] . '</option>';
}
?>	  