<?php 
session_start();
include 'include/config.php';
if(isset($_SESSION["un"]))
{
if (isset($_POST["change"])) {
    
    $oldpass=$_POST["oldpass"];
    $newpass=$_POST["newpass"];
    

     $show=$conn->query("select * from `user`");

     $row=$show->fetch_assoc();

     $pass=$row["password"];

   
   if($pass==$oldpass)
   {
    //$show=$conn->query("select * from gallery where password='$newpass' ");
   $conn->query("update `user` set password='$newpass'");
     echo"<script>alert('Successfully Password Updated'); window.location='dashboard.php'</script>";
   }
   else 
   {
    echo"<script>alert('Old Password not Matched'); window.location='password.php'</script>";
   }
}
    include 'include/header.php' ;
?>
<div id="page-wrapper">
            <div class="row">
                <div class="col-lg-12">
                    <h1 class="page-header">Change Password:</h1>
                </div>
                <!-- /.col-lg-12 -->
            </div>
            <!-- /.row -->
            <div class="row">
                <div class="col-lg-12">
                    <div class="panel panel-green">
                        <div class="panel-heading">
                            Change Password
                        </div>
                        <div class="panel-body">
                            <div class="row">
                                <div class="col-lg-6">
                                    <form role="form" method="POST">
                                        
                                        <div class="form-group">
                                            <label>Old Password :</label>
                                            <input type="password" class="form-control" name="oldpass" placeholder="Enter Old password" required>
                                        </div>
                                        <div class="form-group">
                                            <label>New Password :</label>
                                            <input type="password" class="form-control" name="newpass" placeholder="Enter New Password" required>
                                        </div>
                                        
                                        
                                        
                                        <button type="submit" name="change" class="btn btn-success">Submit</button>
                                        
                                    </form>
                                </div>
                                <!-- /.col-lg-6 (nested) -->
                                
                                <!-- /.col-lg-6 (nested) -->
                            </div>
                            <!-- /.row (nested) -->
                        </div>
                        <!-- /.panel-body -->
                    </div>
                    <!-- /.panel -->
                </div>
                <!-- /.col-lg-12 -->
            </div>
            <!-- /.row -->
        </div>
        <!-- /#page-wrapper -->

   <?php 
    include 'include/footer.php';
              }
              else 
              {
                header("location:index.php");
              }
              ?> ?>