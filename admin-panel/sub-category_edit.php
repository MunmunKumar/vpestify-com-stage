<?php
session_start();
include 'include/config.php';
if(!isset($_SESSION['un'])){
  header("Location:index.php");
  exit;
}
if(empty($_GET['id'])){
    header("location:sub-category.php");
}else{
    $id=$_GET['id'];
}

$sql=$conn->query("select * from `tbl_category` where id='$id'");
$row=$sql->fetch_assoc();

$Menu_Sql=$conn->query("select * from `tbl_menu`");
date_default_timezone_set('Asia/Kolkata');
$currentTime = date( 'd-m-Y h:i:s A', time () );

if(isset($_POST['Update'])){
    
    $menu_name=mysqli_real_escape_string($conn, $_POST["menu_name"]);
    $head=mysqli_real_escape_string($conn, $_POST["head"]);
    $head_url=mysqli_real_escape_string($conn, $_POST["head_url"]);
               
    
    $c_title=mysqli_real_escape_string($conn, $_POST["c_title"]);
    $c_keyword=mysqli_real_escape_string($conn, $_POST["c_keyword"]);
    $c_description=mysqli_real_escape_string($conn, $_POST["c_description"]);
    
    $conn->query("UPDATE tbl_category SET menu_name='$menu_name', head='$head', head_url='$head_url',  c_title='$c_title', c_keyword='$c_keyword', c_description='$c_description' where id='$id'");
    
    
    echo"<script>alert('Updated Successfully.'); window.location='sub-category.php'</script>";
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
                          <b>Sub Category Add</b>
                        </div>
                        <form method="post" enctype="multipart/form-data">
                        <div class="panel-body">
                        <div class="col-md-12">
                            <div class="col-md-12">      
                                <div class="form-group">
                                    <label for="im">Category:</label>                                  
                                    <select class="form-control" name="menu_name">
                                        <?php while($Menu_Row=$Menu_Sql->fetch_assoc()){   
                                                    $checked="selected";

                                            if($Menu_Row['link']==$row['menu_name']){
                                                echo'<option value="'.$Menu_Row['link'].'" '.$checked.'>'.$Menu_Row['name'].'</option>';
                                                }else{
                                                echo'<option value="'.$Menu_Row['link'].'">'.$Menu_Row['name'].'</option>';
                                                }
                                        }?>
                                        
                                    </select>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-12">
                            <div class="col-md-12">      
                                <div class="form-group">
                                    <label for="im">Sub Category:</label>
                                    <input type="text" name="head" class="form-control" placeholder="Sub Category" id="txtFirst" onkeyup="populateSecondTextBox();" value="<?php echo $row['head'];?>" required />
                                    <input type="hidden" name="head_url" id="txtSecond" value="<?php echo $row['head_url'];?>" required />
                                </div>
                            </div>
                                
                        </div>
                <!-- <div class="text-center" data-toggle="collapse" data-target="#demo"><h3>SEO Relative <i class="fa fa-caret-down"></i></h3></div> -->
                
                <div id="demo" class="collapse">
                        <div class="col-md-12">
                            <div class="col-md-12">
                                <div class="form-group">
                                    <label for="im">Title:</label>
                                    <textarea class="form-control" name="c_title" placeholder="Title..."><?php echo $row['c_title'];?></textarea>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-12">
                            <div class="col-md-12">
                                <div class="form-group">
                                    <label for="im">Keyword:</label>
                                    <textarea class="form-control" name="c_keyword" placeholder="Keyword..."><?php echo $row['c_keyword'];?></textarea>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-12">
                            <div class="col-md-12">
                                <div class="form-group">
                                    <label for="im">Description:</label>
                                    <textarea class="form-control" name="c_description" placeholder="Description..."><?php echo $row['c_description'];?></textarea>
                                </div>
                            </div>
                        </div>        
                </div>
                        <button type="submit" name="Update" class="btn btn-primary btn-sm">Update</button>
                        <a href="sub-category.php" class="btn btn-primary btn-sm">Go Back</a>
                                 
                        </div></form>
                    </div> 
                       </div>
                                <!-- /.col-lg-6 (nested) -->
                            </div>
                    <!-- /.panel -->
                </div>
                <!-- /.col-lg-12 -->
            </div>
            <?php
                include 'include/footer.php';
             
              ?>

