<?php
session_start();

include 'include/config.php';

if(!isset($_SESSION['un'])){
  header("Location:index.php");
  exit;
}
$sql=$conn->query("select * from `tbl_team`");
date_default_timezone_set('Asia/Kolkata');
$currentTime = date( 'd-m-Y h:i:s A', time () );

if(isset($_POST['sub'])){
    
    $head=mysqli_real_escape_string($conn, $_POST["head"]);
    $name=mysqli_real_escape_string($conn, $_POST["name"]);
    $pdes=mysqli_real_escape_string($conn, $_POST["pdes"]);

        // $im = $_FILES['file']['name'];
        // move_uploaded_file($_FILES['file']['tmp_name'], "gallery-image/".$im);
    
    $conn->query("INSERT into `tbl_team` (heading, name, file, real_date) VALUES('$head', '$name', '$pdes', '$currentTime'); ");
    echo"<script>alert('Successful.'); window.location='testimonial.php'</script>";
}

include 'include/header.php';
?>

<div id="page-wrapper">
  <br>
            <div class="row">
                <div class="col-lg-12">
                    <div class="row">
                                <div class="col-md-12">
                                <div class="panel panel-green">
                        <div class="panel-heading">
                          <b> Testimonial Add</b>
                        </div>
                        <form method="post" enctype="multipart/form-data">
                        <div class="panel-body">                        
                        <div class="col-md-12">
                            <div class="col-md-12">      
                                <div class="form-group">
                                    <label for="im">Name:</label>
                                    <input type="text" name="name" class="form-control" placeholder="Name" required />
                                </div>
                            </div>
                        </div>
                        <div class="col-md-12">
                            <div class="col-md-12">      
                                <div class="form-group">
                                    <label for="im">Position:</label>
                                    <input type="text" name="head" class="form-control" placeholder="Position" required />
                                </div>
                            </div>
                        </div>
                        <div class="col-md-12">
                            <div class="col-md-12">      
                                <div class="form-group">
                                    <label for="im">Description:</label>
                                    <textarea name="pdes" class="form-control" placeholder="Description" required></textarea> 
                                </div>
                            </div>
                        </div>

        <button type="submit" name="sub" class="btn btn-primary btn-sm">Submit</button>
                                 
                        </div></form>
                    </div> 
                       </div>
                                <!-- /.col-lg-6 (nested) -->
                            </div>
                    <!-- /.panel -->
                </div>
                <!-- /.col-lg-12 -->
            </div>
              

            <div class="row">
                <div class="col-lg-12">
                    <div class="panel panel-green">
                        <div class="panel-heading">
                            <b>Testimonial Manage</b>
                        </div>
                        <!-- /.panel-heading -->
                        <div class="panel-body">
                            <div class="table-responsive">
                                <table class="table table-hover">
                            <?php if ($sql->num_rows > 0) {?>
                                    <thead>
                                        <tr>
                                            <th>Name</th>
                                            <th>Position</th>
                                            <th>Description</th>
                                            <th>Action</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                <?php 
                                   $sid=1;
                                   while($row =$sql->fetch_assoc())
                                       { ?>
                                        <tr>
                                            <td><?php echo $row['name'];?></td> 
                                            <td><b><?php echo $row['heading'];?></b></td>
                                            <td><?php echo $row['file'];?></td> 
                                            <td><a href="testimonial_edit.php?id=<?php echo $row['id'];?>" title="Edit" class="btn btn-warning btn-xs">Edit</a> | <a href="javascript:;" onClick="deleteMe('<?php echo $row['id']?>')" title="Delete" class="btn btn-danger btn-xs">Delete</a></td>
                                        </tr>
                              <?php  $sid++; } }else{
                                echo'<tr><th colspan="2" style="text-align: center; font-size: 26px; color: red;">Empty</th></tr>'; 
                              }?>                    
                                    </tbody>
                                </table>
                            </div>
                            <!-- /.table-responsive -->
                        </div>
                        <!-- /.panel-body -->
                    </div>
                    <!-- /.panel -->
                </div>
            </div>         
<script>
    function deleteMe(id) {
        var i = confirm("Are you sure?");
        if (i == true) {
            window.location.href="team_delete.php?id=" + id;
        }
        return false;
    }
</script>
            <?php
                include 'include/footer.php';
             
              ?>

