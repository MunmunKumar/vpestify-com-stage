<?php
session_start();
if(!isset($_SESSION['un'])){
  header("Location:index.php");
  exit;
}
include 'include/config.php';
include 'include/header.php';

if(isset($_SESSION["un"]))
{
$nquery=$conn->query("SELECT * FROM `tbl_mob`");

?>
<div id="page-wrapper"><br>
    <div class="row">
        <div class="panel panel-green">
            <div class="panel-heading">
                <b>Mobile Enquiry Manage</b>
            </div>
            <div class="panel-body">
                <table id="table.display" class="display" style="width:100%">
                    <?php if($nquery->num_rows > 0) {?>
                    <thead>
                        <tr>
                            <th>S.No.</th>
                            <th>Phone No.</th>
                        </tr>
                    </thead>
                    <tbody>
                        <?php 
                        $sid=0;
                        while($row=$nquery->fetch_array()){
                        $sid++;
                        ?>
                            <tr>
                                <td><?php echo $sid;?></td>
                                <td><?php echo $row['M_mob_no'];?></td>
                            </tr>
                            <?php  
                                } }
                                else
                                {
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
  }
  else 
  {
    header("location:index.php");
  }
?>

