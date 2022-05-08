<?php 
session_start();

include'include/config.php';

if(isset($_SESSION["un"]))
{
    header("location:dashboard.php");
}

if(isset($_POST['login'])){
    
    $user=$_POST["log"];
      $user=$conn->real_escape_string(htmlspecialchars($user));
   $pass=$_POST["pass"];
      $pass=$conn->real_escape_string(htmlspecialchars($pass));

    $sql=$conn->query("select * from `user` where name='$user' and password='$pass' ");
      
      if($sql->num_rows > 0)
      {
        $_SESSION["un"]=$user;
        header("location:dashboard.php");
      }else{
        echo"<script>alert('Username or Password not Matched'); window.location='index.php'</script>";
      }
  }


?>
<!DOCTYPE html>
<html>
<head>
    <title>Admin</title>
   <link rel="shortcut icon" href="logo/xyz.png">
<link href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<link href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet">
<script src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<!------ Include the above in your HEAD tag ---------->
<style type="text/css">
.register {
    background: -webkit-linear-gradient(left,  #1143a6, #00c6ff);
    margin-top: 3%;
    padding: 3%;
}

.register-left {
    text-align: center;
    color: #fff;
    margin-top: 4%;
}

.register-left input {
    border: none;
    border-radius: 1.5rem;
    padding: 2%;
    width: 60%;
    background: #f8f9fa;
    font-weight: bold;
    color: #383d41;
    margin-top: 30%;
    margin-bottom: 3%;
    cursor: pointer;
}

.register-right {
    background: #f8f9fa;
    border-top-left-radius: 15% 50%;
    border-bottom-left-radius: 15% 50%;
}

.register-left img {
    margin-top: 15%;
    margin-bottom: 5%;
    width: 50%;
    -webkit-animation: mover 2s infinite alternate;
    animation: mover 1s infinite alternate;
}

.register-left p {
    font-weight: lighter;
    padding: 12%;
    margin-top: -9%;
}

.register-right {
  margin-left: 70px;
    padding: 65px;
}

.profile_card{
  margin-left: 10px;
    margin-top: 20px;
}

.input-group{
  margin:5px;
}

.register .nav-tabs .nav-link:hover {
    border: none;
}

.register-heading {
    text-align: center;
    color:  #1143a6;
}

</style>
</head>
<body>
  <div class="container register">
<div class="row">
    <div class="col-md-3 register-left">
      <img src="logo/logo.jpg" alt="Admin Panel" />
        <h3>Welcome</h3>
        <p>Vpestify Admin.</p>
    </div>
<div class="col-md-offset-2 col-md-7 register-right">

<h3 class="register-heading">Login</h3>
<div class="col-md-12 profile_card">
    <form class="form-inline" method="POST">
      <div class="col-md-12">
        <div class="input-group">
          <div class="input-group-prepend">
            <span class="input-group-text"><i class="fa fa-user"></i></span>
          </div>
          <input type="text" class="form-control" name="log" placeholder="Username" required="">
        </div>
      </div>
      <div class="col-md-12">
        <div class="input-group">
          <div class="input-group-prepend">
            <span class="input-group-text"><i class="fa fa-lock"></i></span>
          </div>
          <input type="password" class="form-control" name="pass" required="" placeholder="Password">
        </div>
      </div>
      <div class="float-right">
        <!-- <input type="submit" class="btn btn-primary" name="login" value="Login" /> -->
        <button type="submit" class="btn btn-primary" name="login">Login <i class="fa fa-sign-in" aria-hidden="true"></i></button>
      </div>
      </form>
</div>
</div>
</div>
</div>
</body>
</html>