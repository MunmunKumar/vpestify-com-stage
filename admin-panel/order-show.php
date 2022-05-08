<?php
session_start();
include 'include/config.php';

if(!isset($_SESSION['un'])){
  header("Location:index.php");
  exit;
}

$sql=$conn->query("SELECT * FROM `tbl_ordes`");
include 'include/header.php';
?>

<div id="page-wrapper"><br>
    <div class="row">
        <div class="col-lg-12">
            <div class="panel panel-green">
                <div class="panel-heading">
                    <b>Our Service Manage</b>
                </div>
                <!-- /.panel-heading -->
                <div class="panel-body">
                        <table id="table.display" class="display" style="width:100%">
                            <?php if ($sql->num_rows > 0) {?>
                                    <thead>
                                        <tr>
                                            <th>S.No.</th>           
                                            <th>Image</th>
                                            <th>Order By</th>
                                            <th>Title</th>
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
                                            <td><img src="gallery-image/static/<?php echo $row['o_file'];?>" width="50"></td>
                                            <td><?php echo $row['o_order_by'];?></td>
                                            <td><?php echo $row['o_head'];?></td> 
                                            <td><a href="order-show-edit.php?id=<?php echo $row['o_id'];?>" title="Edit" class="btn btn-warning btn-xs">Edit</a></td>
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

