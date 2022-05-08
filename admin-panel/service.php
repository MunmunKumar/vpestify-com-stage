<?php
session_start();
if (!isset($_SESSION['un'])) {
    header("Location:index.php");
    exit;
}
include 'include/config.php';
include 'include/header.php';

if (isset($_SESSION["un"])) {

//Pagination
    $cat_sql_data = $conn->query("select * from `tbl_menu`");
// $query=mysqli_query($conn,"select count(id) from `tb_service`");
//     $row = mysqli_fetch_row($query);
//     $rows = $row[0];
//     $page_rows = 10;
//     $last = ceil($rows/$page_rows);
//     if($last < 1){
//         $last = 1;
//     }
//     $pagenum = 1;
//     if(isset($_GET['pn'])){
//         $pagenum = preg_replace('#[^0-9]#', '', $_GET['pn']);
//     }
//     if ($pagenum < 1) { 
//         $pagenum = 1; 
//     } 
//     else if ($pagenum > $last) { 
//         $pagenum = $last; 
//     }
//     $limit = 'LIMIT ' .($pagenum - 1) * $page_rows .',' .$page_rows;
//     $nquery=mysqli_query($conn,"select * from `tb_service` order by id desc $limit");
    $nquery = $conn->query("SELECT * FROM ((tbl_service
                            INNER JOIN tbl_category ON tbl_service.s_sub_link = tbl_category.head_url)
                            INNER JOIN tbl_menu ON tbl_service.s_menu_link = tbl_menu.link)");

// SELECT * FROM ((tbl_service
// INNER JOIN tbl_category ON tbl_service.s_sub_link = tbl_category.head_url)
// INNER JOIN tbl_menu ON tbl_service.s_menu_link = tbl_menu.link); 
// SELECT Orders.OrderID, Customers.CustomerName, Shippers.ShipperName
// FROM ((Orders
// INNER JOIN Customers ON Orders.CustomerID = Customers.CustomerID)
// INNER JOIN Shippers ON Orders.ShipperID = Shippers.ShipperID); 
    // $paginationCtrls = '';
    // if($last != 1){
    // if ($pagenum > 1) {
    //     $previous = $pagenum - 1;
    //     $paginationCtrls .= '<a href="'.$_SERVER['PHP_SELF'].'?pn='.$previous.'" class="btn btn-primary btn-xs">Previous</a>&nbsp;';
    //     for($i = $pagenum-4; $i < $pagenum; $i++){
    //         if($i > 0){
    //             $paginationCtrls .= '<a href="'.$_SERVER['PHP_SELF'].'?pn='.$i.'" class="btn btn-primary btn-xs">'.$i.'</a>&nbsp;';
    //         }
    //     }
    // }
    // $paginationCtrls .= ''.$pagenum.' &nbsp; ';
    // for($i = $pagenum+1; $i <= $last; $i++){
    //     $paginationCtrls .= '<a href="'.$_SERVER['PHP_SELF'].'?pn='.$i.'" class="btn btn-primary btn-xs">'.$i.'</a>&nbsp;';
    //     if($i >= $pagenum+4){
    //         break;
    //     }
    // }
    // if ($pagenum != $last) {
    //     $next = $pagenum + 1;
    //     $paginationCtrls .= '<a href="'.$_SERVER['PHP_SELF'].'?pn='.$next.'" class="btn btn-primary btn-xs">Next</a>';
    // }
    // }
//upload multiple images



    if (isset($_POST['Submit_Data'])) {

        $im1 = time() . $_FILES['file1']['name'];
        move_uploaded_file($_FILES['file1']['tmp_name'], "gallery-image/icons/" . $im1);

        $im2 = time() . $_FILES['file2']['name'];
        move_uploaded_file($_FILES['file2']['tmp_name'], "gallery-image/" . $im2);

        $im3 = time() . $_FILES['file3']['name'];
        move_uploaded_file($_FILES['file3']['tmp_name'], "gallery-image/inner-banner/" . $im3);

        $im4 = time() . $_FILES['file4']['name'];
        move_uploaded_file($_FILES['file4']['tmp_name'], "gallery-image/" . $im4);

        $im5 = time() . $_FILES['file5']['name'];
        move_uploaded_file($_FILES['file5']['tmp_name'], "gallery-image/" . $im5);

        date_default_timezone_set('Asia/Kolkata');
        $currentTime = date('d-m-Y h:i:s', time());

        $cat_name = mysqli_real_escape_string($conn, $_POST["cat_name"]);
        $sub_name = mysqli_real_escape_string($conn, $_POST["sub_name"]);
        $s_title = ucwords(mysqli_real_escape_string($conn, $_POST["s_title"]));
        $s_head_url = mysqli_real_escape_string($conn, $_POST["s_head_url"]);
        $s_description1 = mysqli_real_escape_string($conn, $_POST["s_description1"]);
        $s_short_descrip = mysqli_real_escape_string($conn, $_POST["s_short_descrip"]);

        $s_service = mysqli_real_escape_string($conn, $_POST["s_service"]);
        $s_after_service = mysqli_real_escape_string($conn, $_POST["s_after_service"]);
        $s_offer = mysqli_real_escape_string($conn, $_POST["s_offer"]);
        $s_whu_us = mysqli_real_escape_string($conn, $_POST["s_whu_us"]);

        $p_title = mysqli_real_escape_string($conn, $_POST["p_title"]);
        $p_keyword = mysqli_real_escape_string($conn, $_POST["p_keyword"]);
        $p_description = mysqli_real_escape_string($conn, $_POST["p_description"]);

        $conn->query("INSERT INTO `tbl_service` (s_menu_link, s_sub_link, s_file1, s_file2, s_file3, s_file4, s_file5, s_head, s_head_url, s_des, s_short_des, s_service, s_after_service, s_offer, s_whu_us, p_title, p_keyword, p_description, s_date) VALUES('$cat_name', '$sub_name', '$im1', '$im2', '$im3', '$im4', '$im5', '$s_title', '$s_head_url', '$s_description1', '$s_short_descrip', '$s_service', '$s_after_service', '$s_offer', '$s_whu_us', '$p_title', '$p_keyword', '$p_description', '$currentTime')");
        echo"<script>alert('Successful.'); window.location='service.php'</script>";
    }
    ?>


    <div id="page-wrapper"><br>
        <div class="row">
            <div class="panel panel-green">
                <div class="panel-heading">
                    <b>Add Service</b>
                </div>
                <div class="panel-body">
                    <div class="row">
                        <div class="col-lg-12">
                            <form method="POST" enctype="multipart/form-data">

                                <div class="col-md-6">
                                    <div class="form-group">
                                        <label>Category:</label>
                                        <select class="form-control" onchange="showUser(this.value)" name="cat_name" required>
                                            <option value="">--- Select Category ---</option>
                                            <?php
                                            while ($cat_row_data = $cat_sql_data->fetch_assoc()) {
                                                echo'<option value="' . $cat_row_data['link'] . '">' . $cat_row_data['name'] . '</option>';
                                            }
                                            ?>                                            
                                        </select>
                                    </div>
                                </div>
                                <div id="txtHint"></div>
                                <div class="clearfix"></div>
                                <div class="col-md-6">  
                                    <div class="form-group">
                                        <label>Service Title:</label>
                                        <input type="text" class="form-control" name="s_title" placeholder="Service Title" id="txtFirst" onkeyup="populateSecondTextBox();" required>
                                    </div>
                                </div>
                                <div class="col-md-6">  
                                    <div class="form-group">
                                        <label>Page Url:</label>
                                        <input type="text" class="form-control" placeholder="Page Url" name="s_head_url" id="txtSecond" required>
                                    </div>
                                </div>
                                <div class="col-md-2">
                                    <div class="form-group">
                                        <label>Icon Image:</label>
                                        <input type="file" class="form-control" name="file1" required>
                                    </div>
                                </div>
                                <div class="col-md-2">
                                    <div class="form-group">
                                        <label>Image 1 :</label>
                                        <input type="file" class="form-control" name="file2" required>
                                    </div>
                                </div>
                                <div class="col-md-2">
                                    <div class="form-group">
                                        <label>Image 2 :</label>
                                        <input type="file" class="form-control" name="file4">
                                    </div>
                                </div>
                                <div class="col-md-2">
                                    <div class="form-group">
                                        <label>Image 3 :</label>
                                        <input type="file" class="form-control" name="file5">
                                    </div>
                                </div>
                                <div class="col-md-4">
                                    <div class="form-group">
                                        <label>Banner Image :</label>
                                        <input type="file" class="form-control" name="file3" required>
                                    </div>
                                </div>
                                <div class="col-md-12">
                                    <div class="form-group">
                                        <label>Short Description (For Home Page):</label>
                                        <textarea class="form-control" name="s_short_descrip" placeholder="Short Description (For Home Page)"></textarea>
                                    </div>
                                </div>
                                <div class="col-md-12">
                                    <div class="form-group">
                                        <label>Description:</label>
                                        <textarea id="textarea_des" class="form-control" name="s_description1"></textarea>
                                    </div>
                                </div>                        
                                <div class="text-center" data-toggle="collapse" data-target="#demo"><h3>Others <i class="fa fa-caret-down"></i></h3></div>
                                <div id="demo" class="collapse">
                                    <div class="col-md-12">
                                        <div class="form-group">
                                            <label for="im">Service:</label>
                                            <textarea class="form-control" name="s_service" placeholder="Service"></textarea>
                                        </div>
                                    </div>
                                    <div class="col-md-12">
                                        <div class="form-group">
                                            <label for="im">After Service:</label>
                                            <textarea class="form-control" name="s_after_service" placeholder="After Service"></textarea>
                                        </div>
                                    </div>
                                    <div class="col-md-12">
                                        <div class="form-group">
                                            <label for="im">Offers:</label>
                                            <textarea class="form-control" name="s_offer" placeholder="Offers"></textarea>
                                        </div>
                                    </div>
                                    <div class="col-md-12">
                                        <div class="form-group">
                                            <label for="im">Why Us:</label>
                                            <textarea class="form-control" name="s_whu_us" placeholder="Why Us"></textarea>
                                        </div>
                                    </div>  
                                    <div class="text-center" data-toggle="collapse" data-target="#seo"><h3>SEO Relative <i class="fa fa-caret-down"></i></h3></div>
                                    <div id="seo" class="collapse">
                                        <div class="col-md-12">
                                            <div class="form-group">
                                                <label for="im">Page Title:</label>
                                                <textarea class="form-control" name="p_title" placeholder="Page Title"></textarea>
                                            </div>
                                        </div>
                                        <div class="col-md-12">
                                            <div class="form-group">
                                                <label for="im">Page Keyword:</label>
                                                <textarea class="form-control" name="p_keyword" placeholder="Page Keyword"></textarea>
                                            </div>
                                        </div>
                                        <div class="col-md-12">
                                            <div class="form-group">
                                                <label for="im">page Description:</label>
                                                <textarea class="form-control" name="p_description" placeholder="page Description"></textarea>
                                            </div>
                                        </div>
                                    </div>
                                </div>                            
                                <div class="col-md-12">
                                    <button type="submit" name="Submit_Data" class="btn btn-primary btn-sm">Submit</button>
                                </div>
                            </form>
                        </div>
                    </div>
                </div>
            </div>

            <div class="panel panel-green">
                <div class="panel-heading">
                    <b>Service Manage</b>
                </div>
                <div class="panel-body">
                    <table id="table.display" class="display" style="width:100%">
                        <?php if ($nquery->num_rows > 0) { ?>
                            <thead>
                                <tr>
                                    <th>S.No.</th>
                                    <th>Service Title</th>
                                    <th>Sub Category</th>
                                    <th>Category</th>
                                    <th>Action</th>
                                </tr>
                            </thead>
                            <tbody>
                                <?php
                                $sid = 0;
                                while ($row = $nquery->fetch_array()) {
                                    $sid++;
                                    ?>
                                    <tr>
                                        <td><?php echo $sid; ?></td>
                                        <td><b><?php echo $row['s_head']; ?></b></td>
                                        <td><?php echo $row['head']; ?></td> 
                                        <td><?php echo $row['name']; ?></td>
                                        <td><a href="service_edit.php?id=<?php echo $row['s_id']; ?>" class="btn btn-warning btn-xs" title="Edit">Edit</a> | <a href="service-detail.php?id=<?php echo $row['s_id']; ?>" class="btn btn-success btn-xs" title="View">View</a> | <a href="javascript:;" onClick="deleteMe('<?php echo $row['s_id'] ?>')" title="Delete" class="btn btn-danger btn-xs">Delete</a></td>
                                    </tr>


                                    <?php
                                }
                            } else {
                                echo'<div class="empty"><b>Empty</b></div>';
                            }
                            ?>
                        </tbody>
                    </table>
                </div>
            </div>        
        </div>
        <!-- <div class="row">
            <div class="col-md-4"></div>
            <div class="col-md-8">
                <div id="pagination_controls" style="margin: 10px  0px;">
        <?php //echo $paginationCtrls;  ?>                            
                </div>
            </div>
        </div> -->
        <script>
            function deleteMe(id) {
                var i = confirm("Are you sure?");
                if (i == true) {
                    window.location.href = "service_delete.php?id=" + id;
                }
                return false;
            }
        </script>
    <!-- <script src="//cdn.ckeditor.com/4.14.0/standard/ckeditor.js"></script>-->
    <!-- <script src="//cdn.ckeditor.com/4.4.7/full-all/ckeditor.js"></script>-->

        <?php
        include 'include/footer.php';
    } else {
        header("location:index.php");
    }
    ?>

