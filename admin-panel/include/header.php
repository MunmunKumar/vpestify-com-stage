<!DOCTYPE html>
<html lang="en">

<head>

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>Admin panel</title>    
    <link rel="shortcut icon" href="logo/xyz.png">

    <!-- Bootstrap Core CSS -->
    <link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
    <link href="vendor/bootstrap/css/bootstrap.css" rel="stylesheet">
    <!-- MetisMenu CSS -->
    <link href="vendor/metisMenu/metisMenu.min.css" rel="stylesheet">

    <!-- Custom CSS -->
    <link href="dist/css/sb-admin-2.css" rel="stylesheet">

    <!-- Morris Charts CSS -->
    <link href="vendor/morrisjs/morris.css" rel="stylesheet">

    <!-- Custom Fonts -->
    <link href="vendor/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css">
    <link rel="stylesheet" href="https://cdn.datatables.net/1.10.19/css/jquery.dataTables.min.css">
    <style type="text/css">
   body {
  font-family: "Poppins", sans-serif;
  height: 100vh;
/*  background-image: url("logo/3.jpg");*/
}
</style>

</head>

<body>

    <div id="wrapper">

        <!-- Navigation -->
        <nav class="navbar navbar-default navbar-static-top" role="navigation" style="margin-bottom: 0">
            <div class="navbar-header">
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                <a class="navbar-brand" href="index.php"> Admin </a>
            </div>
            <!-- /.navbar-header -->

            <ul class="nav navbar-top-links navbar-right">
                
                <li class="dropdown">
                    <a class="dropdown-toggle" data-toggle="dropdown" href="#">
                        <b>User:- </b><?php echo $_SESSION["un"];?> <i class="fa fa-caret-down"></i>
                    </a>
                    <ul class="dropdown-menu dropdown-user">
                       
                        <li><a href="password.php"><i class="fa fa-key fa-fw"></i> Change Password</a>
                        </li>
                        <li class="divider"></li>
                        <li><a href="logout.php"><i class="fa fa-sign-out fa-fw"></i> Logout</a>
                        </li>
                    </ul>
                    <!-- /.dropdown-user -->
                </li>
                <!-- /.dropdown -->
            </ul>
            <!-- /.navbar-top-links -->

            <div class="navbar-default sidebar" role="navigation">
                <div class="sidebar-nav navbar-collapse">
                    <ul class="nav" id="side-menu">
                        <li>
                            <a href="dashboard.php"><i class="fa fa-dashboard fa-fw"></i> Dashboard</a>
                        </li>
                        <li>
                            <a href="menu.php"><i class="glyphicon glyphicon-euro"></i> Category</a>
                        </li>
                        <li>
                            <a href="sub-category.php"><i class="glyphicon glyphicon-euro"></i> Sub Category</a>
                        </li>                        
                        <li>
                            <a href="service.php"><i class="glyphicon glyphicon-euro"></i> Service</a>
                        </li>
                        <li>
                            <a href="testimonial.php"><i class="glyphicon glyphicon-euro"></i> Testimonial</a>
                        </li>
                        <li>
                            <a href="order-show.php"><i class="glyphicon glyphicon-euro"></i> Order BY Service</a>
                        </li> 
                         <li>
                            <a href="enquiry.php"><i class="glyphicon glyphicon-euro"></i> Enquiry</a>
                        </li>                         
                         <li>
                            <a href="mobile-no.php"><i class="glyphicon glyphicon-euro"></i> Mob Enquiry</a>
                        </li> 
                        <li>
                            <a href="blog.php"><i class="glyphicon glyphicon-euro"></i> Blog</a>
                        </li> 
                    </ul>
                </div>
                <!-- /.sidebar-collapse -->
            </div>
            <!-- /.navbar-static-side -->
        </nav>

        