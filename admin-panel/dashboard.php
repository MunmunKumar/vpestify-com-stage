<?php 
session_start();
include 'include/config.php';
if(isset($_SESSION["un"])) 
{
$show=$conn->query('select * from `tbl_service`');
include 'include/header.php' ;
?>
<div id="page-wrapper">
    <div class="row">
        <div class="col-lg-12">
            <h1 class="page-header">Dashboard</h1>
        </div>
        <!-- /.col-lg-12 -->
    </div>
    <!-- /.row -->
    <div class="row">

        <div class="col-lg-3 col-md-6">
            <div class="panel panel-primary">
                <div class="panel-heading">
                    <div class="row">
                        <div class="col-xs-3">
                            <i class="fa fa-image fa-5x"></i>
                        </div>
                        <div class="col-xs-9 text-right">
                            <div class="huge"><?php echo $show->num_rows ?></div>
                            <div>Service</div>
                        </div>
                    </div>
                </div>
                <a href="service.php">
                    <div class="panel-footer">
                        <span class="pull-left">View Details</span>
                        <span class="pull-right"><i class="fa fa-arrow-circle-right"></i></span>
                        <div class="clearfix"></div>
                    </div>
                </a>
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