<?php
session_start();
include 'include/config.php';
if(!isset($_SESSION['un'])){
  header("Location:index.php");
  exit;
}

if(empty($_GET['id'])){
    header("location:order-show.php");
}else{
    $id=$_GET['id'];
}
$sql=$conn->query("select * from `tbl_ordes` where o_id='$id'");
$row=$sql->fetch_assoc();

if(isset($_POST['UPDate'])){
    $title=mysqli_real_escape_string($conn, $_POST["title"]);
    
    $conn->query("UPDATE `tbl_ordes` SET o_order_by='$title' where o_id='$id'");
    
    echo"<script>alert('Successfully Updated.'); window.location='order-show.php'</script>";
}

include 'include/header.php';
?>
<div id="page-wrapper"><br>
    <div class="row">
        <div class="col-lg-12">
            <div class="row">
                <div class="panel panel-green">
                    <div class="panel-heading">
                      <b>Edit</b>
                    </div>
                    <div class="panel-body">
                        <form method="post" enctype="multipart/form-data">
                            <div class="row">  
                                <div class="col-md-6">  
                                    <div class="form-group">
                                        <label>Title:</label>
                                        <input type="text" class="form-control" name="s_title" value="<?php echo $row['o_head'];?>" disabled>
                                    </div>
                                </div>
                                <div class="col-md-6">  
                                    <div class="form-group">
                                        <label>Order By:</label>
                                        <input type="number" class="form-control" name="title" value="<?php echo $row['o_order_by'];?>" placeholder="Order By">
                                    </div>
                                </div>
                                <div class="col-md-12">
                                    <div class="form-group">
                                        <label>Image :</label>
                                        <?php if(!empty($row['o_file'])){
                                            echo'<br><img src="gallery-image/static/'.$row['o_file'].'" width="300px;">';
                                        }?>  
                                    </div>
                                </div>                                
                                <div class="col-md-12">
                                    <br>
                                    <button type="submit" name="UPDate" class="btn btn-primary btn-sm">Update</button>
                                    <a href="order-show.php" class="btn btn-primary btn-sm">Go Back</a>
                                </div>
                            </div>
                            
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>
 <script src="//cdn.ckeditor.com/4.4.7/full-all/ckeditor.js"></script>
<?php
    include 'include/footer.php';             
?>
