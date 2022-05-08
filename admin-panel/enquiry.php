<?php
session_start();
if (!isset($_SESSION['un'])) {
    header("Location:index.php");
    exit;
}
include 'include/config.php';
include 'include/header.php';

if (isset($_SESSION["un"])) {
    $nquery = $conn->query("SELECT * FROM `tbl_enquiry`");
    ?>
    <div id="page-wrapper"><br>
        <div class="row">
            <div class="panel panel-green">
                <div class="panel-heading">
                    <b>Enquiry Manage</b>
                </div>
                <div class="panel-body">
                    <table id="table.display" class="display" style="width:100%">
                        <?php if ($nquery->num_rows > 0) { ?>
                            <thead>
                                <tr>
                                    <th>S.No.</th>
                                    <th>Name</th>
                                    <th>Phone No.</th>
                                    <th>Service Name</th>
                                    <th>City</th>
                                    <th>Message</th>
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
                                        <td><?php echo $row['Name']; ?></td>
                                        <td><?php echo $row['Phone_no']; ?></td> 
                                        <td><?php echo $row['Service_name']; ?></td>
                                        <td><?php echo $row['City']; ?></td>
                                        <td><?php echo $row['Message']; ?></td>
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
        <?php
        include 'include/footer.php';
    } else {
        header("location:index.php");
    }
    ?>

