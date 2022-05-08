<?php
session_start();
include 'include/config.php';
if (!isset($_SESSION['un'])) {
    header("Location:index.php");
    exit;
}

if (empty($_GET['id'])) {
    header("location:service.php");
} else {
    $id = $_GET['id'];
}
$Menu_Sql = $conn->query("select * from `tbl_menu`");
$Sub_Sql = $conn->query("select * from `tbl_category`");
$sql = $conn->query("select * from `tbl_service` where s_id='$id'");
$row = $sql->fetch_assoc();

if (isset($_POST['UPDate'])) {

    if (empty($_FILES['file1']['name'])) {
        $im1 = $row['s_file1'];
    } else {
        $im1 = time() . $_FILES['file1']['name'];
        move_uploaded_file($_FILES['file1']['tmp_name'], "gallery-image/icons/" . $im1);
    }

    if (empty($_FILES['file2']['name'])) {
        $im2 = $row['s_file2'];
    } else {
        $im2 = time() . $_FILES['file2']['name'];
        move_uploaded_file($_FILES['file2']['tmp_name'], "gallery-image/" . $im2);
    }

    if (empty($_FILES['file3']['name'])) {
        $im3 = $row['s_file3'];
    } else {
        $im3 = time() . $_FILES['file3']['name'];
        move_uploaded_file($_FILES['file3']['tmp_name'], "gallery-image/inner-banner/" . $im3);
    }

    if (empty($_FILES['file4']['name'])) {
        $im4 = $row['s_file4'];
    } else {
        $im4 = time() . $_FILES['file4']['name'];
        move_uploaded_file($_FILES['file4']['tmp_name'], "gallery-image/" . $im4);
    }

    if (empty($_FILES['file5']['name'])) {
        $im5 = $row['s_file5'];
    } else {
        $im5 = time() . $_FILES['file5']['name'];
        move_uploaded_file($_FILES['file5']['tmp_name'], "gallery-image/" . $im5);
    }

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

    $conn->query("UPDATE `tbl_service` SET s_menu_link='$cat_name', s_sub_link='$sub_name',  s_file1='$im1', s_file2='$im2', s_file3='$im3', s_file4='$im4', s_file5='$im5',  s_head='$s_title', s_head_url='$s_head_url', s_des='$s_description1', s_short_des='$s_short_descrip', s_service='$s_service', s_after_service='$s_after_service', s_offer='$s_offer', s_whu_us='$s_whu_us', p_title='$p_title', p_keyword='$p_keyword', p_description='$p_description' where s_id='$id'");

    echo"<script>alert('Successfully Updated.'); window.location='service.php'</script>";
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
                                        <label for="im">Category :</label>
                                        <select class="form-control" name="cat_name" onchange="serviceEdit(this.value)">
                                            <?php
                                            while ($Menu_Row = $Menu_Sql->fetch_assoc()) {
                                                $checked = "selected";

                                                if ($Menu_Row['link'] == $row['s_menu_link']) {
                                                    echo'<option value="' . $Menu_Row['link'] . '" ' . $checked . '>' . $Menu_Row['name'] . '</option>';
                                                } else {
                                                    echo'<option value="' . $Menu_Row['link'] . '">' . $Menu_Row['name'] . '</option>';
                                                }
                                            }
                                            ?>

                                        </select>
                                    </div>
                                </div>
                                <div class="col-md-6">
                                    <div class="form-group">
                                        <label for="im">Sub Cat :</label>
                                        <select class="form-control" name="sub_name" id="DataEdit">
                                            <?php
                                            while ($Sub_Row = $Sub_Sql->fetch_assoc()) {
                                                $checked = "selected";

                                                if ($Sub_Row['head_url'] == $row['s_sub_link']) {
                                                    echo'<option value="' . $Sub_Row['head_url'] . '" ' . $checked . '>' . $Sub_Row['head'] . '</option>';
                                                } else if ($row['s_menu_link'] == $Sub_Row['menu_name']) {
                                                    echo'<option value="' . $Sub_Row['head_url'] . '">' . $Sub_Row['head'] . '</option>';
                                                }
                                            }
                                            ?>
                                        </select>
                                    </div>      
                                </div>  
                                <div class="col-md-6">  
                                    <div class="form-group">
                                        <label>Service Title:</label>
                                        <input type="text" class="form-control" name="s_title" placeholder="Service Title" id="txtFirst" onkeyup="populateSecondTextBox();" value="<?php echo $row['s_head']; ?>" required>
                                    </div>
                                </div>
                                <div class="col-md-6">  
                                    <div class="form-group">
                                        <label>Page Url:</label>
                                        <input type="text" class="form-control" placeholder="Page Url" name="s_head_url" id="txtSecond" value="<?php echo $row['s_head_url']; ?>" required>
                                    </div>
                                </div>
                                <div class="col-md-2">
                                    <div class="form-group">
                                        <label>Icon Image :</label>
                                        <?php
                                        if (!empty($row['s_file1'])) {
                                            echo'<br><img src="gallery-image/icons/' . $row['s_file1'] . '" width="100%;">';
                                        }
                                        ?>                                        
                                        <input type="file" class="form-control" name="file1">
                                    </div>
                                </div>
                                <div class="col-md-2">
                                    <div class="form-group">
                                        <label>Image 1 :</label>
                                        <?php
                                        if (!empty($row['s_file2'])) {
                                            echo'<br><img src="gallery-image/' . $row['s_file2'] . '" width="100%;">';
                                        }
                                        ?>
                                        <input type="file" class="form-control" name="file2">
                                    </div>
                                </div>
                                <div class="col-md-2">
                                    <div class="form-group">
                                        <label>Image 2 :</label>
                                        <?php
                                        if (!empty($row['s_file4'])) {
                                            echo'<br><img src="gallery-image/' . $row['s_file4'] . '" width="100%;">';
                                        }
                                        ?>
                                        <input type="file" class="form-control" name="file4">
                                    </div>
                                </div>
                                <div class="col-md-2">
                                    <div class="form-group">
                                        <label>Image 3 :</label>
                                        <?php
                                        if (!empty($row['s_file5'])) {
                                            echo'<br><img src="gallery-image/' . $row['s_file5'] . '" width="100%;">';
                                        }
                                        ?>
                                        <input type="file" class="form-control" name="file5">
                                    </div>
                                </div>
                                <div class="col-md-4">
                                    <div class="form-group">
                                        <label>Banner Image :</label>
                                        <?php
                                        if (!empty($row['s_file3'])) {
                                            echo'<br><img src="gallery-image/inner-banner/' . $row['s_file3'] . '" width="100%;">';
                                        }
                                        ?>
                                        <input type="file" class="form-control" name="file3">
                                    </div>
                                </div>
                                <div class="col-md-12">
                                    <div class="form-group">
                                        <label>Short Description (For Home Page):</label>
                                        <textarea class="form-control" name="s_short_descrip" placeholder="Short Description (For Home Page)"><?php echo $row['s_short_des']; ?></textarea>
                                    </div>
                                </div>
                                <div class="col-md-12">
                                    <div class="form-group">
                                        <label>Description:</label>
                                        <textarea id="textarea_des" class="form-control" name="s_description1"><?php echo $row['s_des']; ?></textarea>
                                    </div>
                                </div>
                                <div class="clearfix"></div>
                                <div class="text-center" data-toggle="collapse" data-target="#demo"><h3>Others <i class="fa fa-caret-down"></i></h3></div>
                                <div id="demo" class="collapse">
                                    <div class="col-md-12">
                                        <div class="form-group">
                                            <label for="im">Service:</label>
                                            <textarea class="form-control" name="s_service" placeholder="Service"><?php echo $row['s_service']; ?></textarea>
                                        </div>
                                    </div>
                                    <div class="col-md-12">
                                        <div class="form-group">
                                            <label for="im">After Service:</label>
                                            <textarea class="form-control" name="s_after_service" placeholder="After Service"><?php echo $row['s_after_service']; ?></textarea>
                                        </div>
                                    </div>
                                    <div class="col-md-12">
                                        <div class="form-group">
                                            <label for="im">Offers:</label>
                                            <textarea class="form-control" name="s_offer" placeholder="Offers"><?php echo $row['s_offer']; ?></textarea>
                                        </div>
                                    </div>
                                    <div class="col-md-12">
                                        <div class="form-group">
                                            <label for="im">Why Us:</label>
                                            <textarea class="form-control" name="s_whu_us" placeholder="Why Us"><?php echo $row['s_whu_us']; ?></textarea>
                                        </div>
                                    </div> 
                                    <div class="text-center" data-toggle="collapse" data-target="#seo"><h3>SEO Relative <i class="fa fa-caret-down"></i></h3></div>
                                    <div id="seo" class="collapse">
                                        <div class="col-md-12">
                                            <div class="form-group">
                                                <label for="im">Page Title:</label>
                                                <textarea class="form-control" name="p_title" placeholder="Page Title"><?php echo $row['p_title']; ?></textarea>
                                            </div>
                                        </div>
                                        <div class="col-md-12">
                                            <div class="form-group">
                                                <label for="im">Page Keyword:</label>
                                                <textarea class="form-control" name="p_keyword" placeholder="Page Keyword"><?php echo $row['p_keyword']; ?></textarea>
                                            </div>
                                        </div>
                                        <div class="col-md-12">
                                            <div class="form-group">
                                                <label for="im">page Description:</label>
                                                <textarea class="form-control" name="p_description" placeholder="page Description"><?php echo $row['p_description']; ?></textarea>
                                            </div>
                                        </div>
                                    </div> 
                                </div>    
                                <div class="col-md-12">
                                    <br>
                                    <button type="submit" name="UPDate" class="btn btn-primary btn-sm">Update</button>
                                    <a href="service.php" class="btn btn-primary btn-sm">Go Back</a>
                                </div>
                            </div>

                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>
<!--    <script src="//cdn.ckeditor.com/4.4.7/full-all/ckeditor.js"></script>-->
    <?php
    include 'include/footer.php';
    ?>
