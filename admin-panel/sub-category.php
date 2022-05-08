<?php
session_start();
include 'include/config.php';

if(!isset($_SESSION['un'])){
  header("Location:index.php");
  exit;
}

$menu=$conn->query("select * from `tbl_menu`");
$sql=$conn->query("SELECT * FROM tbl_category INNER JOIN tbl_menu ON tbl_category.menu_name = tbl_menu.link");
date_default_timezone_set('Asia/Kolkata');
$currentTime = date( 'd-m-Y h:i:s A', time ());

if(isset($_POST['sub'])){
    
    $menu_name=mysqli_real_escape_string($conn, $_POST["menu_name"]);
    $head=mysqli_real_escape_string($conn, $_POST["head"]);
    $head_url=mysqli_real_escape_string($conn, $_POST["head_url"]);

    // $im = $_FILES['file']['name'];
    // move_uploaded_file($_FILES['file']['tmp_name'], "gallery-image/".$im);
    
    $c_title=mysqli_real_escape_string($conn, $_POST["c_title"]);
    $c_keyword=mysqli_real_escape_string($conn, $_POST["c_keyword"]);
    $c_description=mysqli_real_escape_string($conn, $_POST["c_description"]);
    
    $conn->query("INSERT into `tbl_category` (menu_name, head, head_url, c_title, c_keyword, c_description, create_date) VALUES('$menu_name', '$head', '$head_url', '$c_title', '$c_keyword', '$c_description', '$currentTime'); ");
    echo"<script>alert('Successful.'); window.location='sub-category.php'</script>";
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
                            <label for="im">Select Category:</label>
                            <select name="menu_name" class="form-control" required>
                                <option value="">Select Category</option>
                                <?php while($menu_row=$menu->fetch_assoc()){
                                    echo'<option value="'.$menu_row['link'].'">'.$menu_row['name'].'</option>';
                                }?>                                        
                            </select>
                        </div>
                    </div>
                </div>
                <div class="col-md-12">
                    <div class="col-md-12">      
                        <div class="form-group">
                            <label for="im">Sub Category:</label>
                            <input type="text" name="head" class="form-control" placeholder="Sub Category" id="txtFirst" onkeyup="populateSecondTextBox();" required>
                            <input type="hidden" name="head_url" id="txtSecond" required>
                        </div>
                    </div>
                </div>
               <!--  <div class="col-md-12">
                    <div class="col-md-12">      
                        <div class="form-group">
                            <label for="im">Image:</label>
                            <input type="file" name="file" class="form-control"/>
                        </div>
                    </div>
                </div> 
        <div class="text-center" data-toggle="collapse" data-target="#demo"><h3>SEO Relative <i class="fa fa-caret-down"></i></h3></div>-->
        
        <div id="demo" class="collapse">
                <div class="col-md-12">
                    <div class="col-md-12">
                        <div class="form-group">
                            <label for="im">Title:</label>
                            <textarea class="form-control" name="c_title" placeholder="Title..."></textarea>
                        </div>
                    </div>
                </div>
                <div class="col-md-12">
                    <div class="col-md-12">
                        <div class="form-group">
                            <label for="im">Keyword:</label>
                            <textarea class="form-control" name="c_keyword" placeholder="Keyword..."></textarea>
                        </div>
                    </div>
                </div>
                <div class="col-md-12">
                    <div class="col-md-12">
                        <div class="form-group">
                            <label for="im">Description:</label>
                            <textarea class="form-control" name="c_description" placeholder="Description..."></textarea>
                        </div>
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
                    <b>Sub Category Manage</b>
                </div>
                <!-- /.panel-heading -->
                <div class="panel-body">
                        <table id="table.display" class="display" style="width:100%">
                            <?php if ($sql->num_rows > 0) {?>
                                    <thead>
                                        <tr>
                                            <th>S.No.</th>
                                            <th>Sub Category</th>
                                            <th>Category</th>
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
                                            <td><?php echo $sid++;?></td>
                                            <td><?php echo $row['head'];?></td>
                                            <td><?php echo $row['name'];?></td> 
                                            <td><a href="sub-category_edit.php?id=<?php echo $row['id'];?>" title="Edit" class="btn btn-warning btn-xs">Edit</a> | <a href="javascript:;" onClick="deletesub('<?php echo $row['id']?>')" title="Delete" class="btn btn-danger btn-xs">Delete</a></td>
                                        </tr>
                              <?php } }else{
                                            echo'<tr><th colspan="2" style="text-align: center; font-size: 26px; color: red;">Empty</th></tr>'; 
                                }?>                    
                                    </tbody>
                        </table>                        
                    <!-- /.table-responsive -->
                </div>
                <!-- /.panel-body -->
            </div>
            <!-- /.panel -->
        </div>
    </div>         

<?php
    include 'include/footer.php';
 
?>

