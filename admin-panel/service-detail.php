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
include 'include/header.php';
?>
<div id="page-wrapper"><br>
    <div class="row">
        <div class="col-lg-12">
            <div class="row">
                <div class="panel panel-green">
                    <div class="panel-heading">
                        <b>Details</b>
                    </div>
                    <div class="panel-body">
                        <form method="post" enctype="multipart/form-data">
                            <div class="row">
                                <div class="col-md-6">
                                    <div class="form-group">
                                        <label for="im">Category :</label>
                                        <select class="form-control" name="cat_name" onchange="serviceEdit(this.value)" disabled>
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
                                        <select class="form-control" name="sub_name" id="DataEdit" disabled>
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
                                        <p><?php echo $row['s_head']; ?></p>
                                    </div>
                                </div>
                                <div class="col-md-6">
                                    <div class="form-group">
                                        <label>Page Url:</label>
                                        <p><?php echo $row['s_head_url']; ?></p>
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
                                    </div>
                                </div>
                                <div class="col-md-12">
                                    <div class="form-group">
                                        <label>Short Description (For Home Page):</label>
                                        <p><?php echo $row['s_short_des']; ?></p>
                                    </div>
                                </div>
                                <div class="col-md-12">
                                    <div class="form-group">
                                        <label>Description:</label>
                                        <p><?php echo $row['s_des']; ?></p>
                                    </div>
                                </div>
                                <div class="clearfix"></div>
                                <div class="text-center" data-toggle="collapse" data-target="#demo"><h3>Others <i class="fa fa-caret-down"></i></h3></div>
                                <div id="demo" class="collapse">
                                    <div class="col-md-12">
                                        <div class="form-group">
                                            <label for="im">Service:</label>
                                            <p><?php echo $row['s_service']; ?></p>
                                        </div>
                                    </div>
                                    <div class="col-md-12">
                                        <div class="form-group">
                                            <label for="im">After Service:</label>
                                            <p><?php echo $row['s_after_service']; ?></p>
                                        </div>
                                    </div>
                                    <div class="col-md-12">
                                        <div class="form-group">
                                            <label for="im">Offers:</label>
                                            <p><?php echo $row['s_offer']; ?></p>
                                        </div>
                                    </div>
                                    <div class="col-md-12">
                                        <div class="form-group">
                                            <label for="im">Why Us:</label>
                                            <p><?php echo $row['s_whu_us']; ?></p>
                                        </div>
                                    </div>  
                                    <div class="text-center" data-toggle="collapse" data-target="#seo"><h3>SEO Relative <i class="fa fa-caret-down"></i></h3></div>
                                    <div id="seo" class="collapse">
                                        <div class="col-md-12">
                                            <div class="form-group">
                                                <label for="im">Page Title:</label>
                                                <p><?php echo $row['p_title']; ?></p>
                                            </div>
                                        </div>
                                        <div class="col-md-12">
                                            <div class="form-group">
                                                <label for="im">Page Keyword:</label>
                                                <p><?php echo $row['p_keyword']; ?></p>
                                            </div>
                                        </div>
                                        <div class="col-md-12">
                                            <div class="form-group">
                                                <label for="im">page Description:</label>
                                                <p><?php echo $row['p_description']; ?></p>
                                            </div>
                                        </div>
                                    </div>
                                </div>    
                                <div class="col-md-12">
                                    <br>
                                    <a href="service.php" class="btn btn-primary btn-sm">Go Back</a>
                                </div>
                            </div>

                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <?php
    include 'include/footer.php';
    ?>
