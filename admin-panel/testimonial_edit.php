<?php
session_start();
if(!isset($_SESSION['un'])){
  header("Location:index.php");
  exit;
}
$id=$_GET['id'];
include 'include/config.php';
$sql=$conn->query("select * from `tbl_team` where id='$id'");
$row=$sql->fetch_assoc();
$file=$row['file'];

if(isset($_POST['Updatedata'])){
    
    $head=mysqli_real_escape_string($conn, $_POST["head"]);
    $name=mysqli_real_escape_string($conn, $_POST["name"]);
    $pdes=mysqli_real_escape_string($conn, $_POST["pdes"]);
    
    $conn->query("UPDATE `tbl_team` SET heading='$head', name='$name', file='$pdes' where id='$id'");

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
                          <b> Team Add</b>
                        </div>
                        <form method="post" enctype="multipart/form-data">
                        <div class="panel-body">                        
                        <div class="col-md-12">
                            <div class="col-md-12">      
                                <div class="form-group">
                                    <label for="im">Name:</label>
                                    <input type="text" name="name" class="form-control" placeholder="Name" value="<?php echo $row['name'];?>" />
                                </div>
                            </div>
                        </div>

                        <div class="col-md-12">
                            <div class="col-md-12">      
                                <div class="form-group">
                                    <label for="im">Position:</label>
                                    <input type="text" name="head" class="form-control" placeholder="Position" value="<?php echo $row['heading'];?>" />
                                </div>
                            </div>
                        </div>

                        <div class="col-md-12">
                            <div class="col-md-12">      
                                <div class="form-group">
                                    <label for="im">Description:</label>
                                    <textarea name="pdes" class="form-control" placeholder="Description" required><?php echo $row['file'];?></textarea> 
                                </div>
                            </div>
                        </div>
                
        <button type="submit" name="Updatedata" class="btn btn-primary btn-sm">Update</button>
                                 
                        </div></form>
                    </div> 
                       </div>
                                <!-- /.col-lg-6 (nested) -->
                            </div>
                    <!-- /.panel -->
                </div>
                <!-- /.col-lg-12 -->
            </div>
<script>
    function deleteMe(id) {
        var i = confirm("Are you sure?");
        if (i == true) {
            window.location.href = "team_delete.php?id=" + id;
        }
        return false;
    }
</script>
            <?php
                include 'include/footer.php';
             
              ?>

