<?php
session_start();
include 'include/config.php';
if(!isset($_SESSION['un'])){
  header("Location:index.php");
  exit;
}

$category=$conn->query("select * from `tbl_category`");
$sql=$conn->query("select * from `tbl_service`");
date_default_timezone_set('Asia/Kolkata');
$currentTime = date( 'd-m-Y h:i:s A', time () );

if(isset($_POST['SubMit'])){
    
    $head=$_POST["head"];   
    $a=array("-","/"," ");
    $b=array("a","b","-");
    $head_url=str_replace($a,$b,$head); 
    
    $itinerary=mysqli_real_escape_string($conn, $_POST["itinerary"]);    
    $s_title=mysqli_real_escape_string($conn, $_POST["s_title"]);
    $s_keyword=mysqli_real_escape_string($conn, $_POST["s_keyword"]);
    $s_description=mysqli_real_escape_string($conn, $_POST["s_description"]);
    $category=mysqli_real_escape_string($conn, $_POST["category"]);    
    
    $im = $_FILES['file']['name'];
  move_uploaded_file($_FILES['file']['tmp_name'], "gallery-image/".$im);
    
    $conn->query("INSERT into `tbl_service`(category, file, head, head_url, itinerary, s_title, s_keyword, s_description, reg_date) VALUES('$category', '$im', '$head', '$head_url', '$itinerary', '$s_title', '$s_keyword', '$s_description', '$currentTime'); ");
    echo"<script>alert('Successful.'); window.location='service.php'</script>";
}

include 'include/header.php';
?>
<div id="page-wrapper">
  <br>
            <div class="row">
                <div class="col-lg-12">
                    <div class="row">
                                <div class="panel panel-green">
                        <div class="panel-heading">
                          <b> Service Add</b>
                        </div>
                        <div class="panel-body">
                            <form method="post" enctype="multipart/form-data">
                        <div class="col-md-12">
                            <div class="col-md-12">
                                <div class="form-group">
                                    <label for="im">Category :</label>
                                    <select name="category" class="form-control" required>
                                        <option value="">Select </option>
                                    <?php while($categ =$category->fetch_assoc()){?>
                                        <option value="<?php echo $categ['head_url'];?>"><?php echo $categ['head'];?></option>
                                    <?php }?>
                                    </select>
                                </div>      
                            </div> 
                        </div>
                        <div class="col-md-12">
                            <div class="col-md-12">
                                <div class="form-group">
                                    <label for="im">Heading:</label>
                                    <input type="text" name="head" class="form-control" placeholder="Heading" required />
                                </div>
                            </div>                        
                        </div>
                        <div class="col-md-12">
                            <div class="col-md-12">
                                <div class="form-group">
                                    <label for="im">Image:</label>
                                    <input type="file" name="file" class="form-control">
                                </div>
                            </div>
                        </div>
                        <div class="col-md-12">
                            <div class="col-md-12">
                                <div class="form-group">
                                    <label for="im">Description:</label>
                                    <textarea name="itinerary"></textarea>
                                </div>
                            </div>
                        </div>
                        
                                <div class="text-center" data-toggle="collapse" data-target="#demo"><h3>SEO Relative <i class="fa fa-caret-down"></i></h3></div>
                                
                <div id="demo" class="collapse">
                        <div class="col-md-12">
                            <div class="col-md-12">
                                <div class="form-group">
                                    <label for="im">Title:</label>
                                    <textarea class="form-control" name="s_title" placeholder="Title..."></textarea>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-12">
                            <div class="col-md-12">
                                <div class="form-group">
                                    <label for="im">Keyword:</label>
                                    <textarea class="form-control" name="s_keyword" placeholder="Keyword..."></textarea>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-12">
                            <div class="col-md-12">
                                <div class="form-group">
                                    <label for="im">Description:</label>
                                    <textarea class="form-control" name="s_description" placeholder="Description..."></textarea>
                                </div>
                            </div>
                        </div>        
                </div>
                            <button type="submit" name="SubMit" class="btn btn-primary">Submit</button>
                                  </form>
                        </div>
                    </div> 
                            </div>
                    <!-- /.panel -->
                </div>
                <!-- /.col-lg-12 -->
            </div>
              

            <div class="row">
                    <div class="panel panel-green">
                        <div class="panel-heading">
                            <b>Service Manage</b>
                        </div>
                        <!-- /.panel-heading -->
                        <div class="panel-body">
                            <div class="table-responsive">
                                <table class="table table-hover">
                                <?php if ($sql->num_rows > 0) {?>
                                    <thead>
                                        <tr>
                                            <th>S.No.</th>
                                            <th>Image</th>
                                            <th>Name</th>
                                            <th>Action</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                <?php 
                   $sid=1;
               while($row =$sql->fetch_assoc())
                   { 
                   
                ?>
                                        <tr>
                                            <td><?php echo $sid;?></td>
                                            <td><img class="img-rounded" src="gallery-image/<?php echo $row["file"];?>" width="150px" height="100px"></td>
                                            <td><?php echo $row['head'];?></td> 
                                            <td><a href="service_edit.php?id=<?php echo $row['id'];?>"><input type="submit"  value="Edit" title="Edit" class="btn btn-warning"></a> | <a href="javascript:;" onClick="deleteMe('<?php echo $row['id']?>')"><input type="submit" title="Delete" value="Delete" class="btn btn-danger"></a> | <a href="service-detail.php?id=<?php echo $row['id'];?>" class="btn btn-success">View</a></td>
                                        </tr>
                              <?php  $sid++; }  }else{
                                echo'<tr><th colspan="2" style="text-align: center;
    font-size: 26px; color: red;">Empty</th></tr>'; 
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
<script src="//cdn.ckeditor.com/4.4.7/full-all/ckeditor.js"></script>
<script>
    CKEDITOR.replace('itinerary');
    function deleteMe(id){
        var i = confirm("Are you sure?");
            if (i == true){
            window.location.href = "service_delete.php?id=" + id;
            }
            return false;
    }
</script>

<?php
    include 'include/footer.php';             
?>

