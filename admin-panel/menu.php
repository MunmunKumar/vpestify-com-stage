<?php
session_start();
include 'include/config.php';

if (!isset($_SESSION['un'])) {
    header("Location:index.php");
    exit;
}
$sql = $conn->query("select * from `tbl_menu`");

include 'include/header.php';
?>

<div id="page-wrapper">
    <br>
    <div class="row">
        <div class="col-lg-12">
            <div class="panel panel-green">
                <div class="panel-heading">
                    <b>Category Manage</b>
                </div>
                <div class="panel-body">
                    <table id="table.display" class="display" style="width:100%">
                        <?php if ($sql->num_rows > 0) { ?>
                            <thead>
                                <tr>
                                    <th>S.No.</th>
                                    <th>Name</th>
                                    <!-- <th>Action</th> -->
                                </tr>
                            </thead>
                            <tbody>
                                <?php
                                $sid = 1;
                                while ($row = $sql->fetch_assoc()) {
                                    ?>
                                    <tr>
                                        <td><?php echo $sid; ?></td>
                                        <td><b><?php echo $row['name']; ?></b></td> 
                                        <!-- <td><a href="menu-edit.php?id=<?php echo $row['m_id']; ?>"><input type="submit"  value="Edit" title="Edit" class="btn btn-warning btn-sm"></a> | <a href="javascript:;" onClick="deleteMe('<?php echo $row['m_id'] ?>')"><input type="submit" title="Delete" value="Delete" class="btn btn-danger btn-sm"></a></td> -->
                                    </tr>
                                    <?php
                                    $sid++;
                                }
                            } else {
                                echo'<tr><th colspan="2" style="text-align: center;
                                    font-size: 26px; color: red;">Empty</th></tr>';
                            }
                            ?>                    
                        </tbody>
                    </table>
                </div>
            </div>
        </div>
    </div>

    <?php
    include 'include/footer.php';
    ?>

