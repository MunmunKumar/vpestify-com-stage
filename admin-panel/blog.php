<?php
session_start();
if (!isset($_SESSION['un'])) {
    header("Location:index.php");
    exit;
}
include 'include/config.php';
include 'include/header.php';

if (isset($_SESSION["un"])) {

    $blog = $conn->query("select * from `blog` where IsDelete = '0'");

    if (isset($_POST['Submit_Data'])) {
        
        date_default_timezone_set('Asia/Kolkata');
        $currentTime = date('Y-m-d h:i:s', time());
        $post_by = mysqli_real_escape_string($conn, $_POST["post_by"]);
        $Blog_title = mysqli_real_escape_string($conn, $_POST["Blog_title"]);
        $Blog_url = mysqli_real_escape_string($conn, $_POST["BlogUrl"]);
        $blog_description = (mysqli_real_escape_string($conn, $_POST["blog_description"]));
        $ShortDesc = (mysqli_real_escape_string($conn, $_POST["ShortDesc"]));
        

        if(isset($_POST["BlogID"]) && !empty($_POST["BlogID"])){
            if($_FILES['blog_image']['name']){
                $im1 = time() . $_FILES['blog_image']['name'];
                move_uploaded_file($_FILES['blog_image']['tmp_name'], "gallery-image/blogs/" . $im1);

                $insQry =   $conn->query("UPDATE `blog` SET PostBy='$post_by', BlogTitle='$Blog_title', BlogUrl='$Blog_url', ShortDesc='$ShortDesc', BlogDesc = '$blog_description', BlogImage='$im1'   where BlogID='$_POST[BlogID]'");

            }
            else{
                $insQry =   $conn->query("UPDATE `blog` SET PostBy='$post_by', ShortDesc='$ShortDesc',  BlogTitle='$Blog_title', BlogUrl='$Blog_url',  BlogDesc = '$blog_description' where  BlogID='$_POST[BlogID]'");

            }
        }
        else{
            $im1 = time() . $_FILES['blog_image']['name'];
            move_uploaded_file($_FILES['blog_image']['tmp_name'], "gallery-image/blogs/" . $im1);

            $insQry =  $conn->query("INSERT INTO blog (PostBy, BlogTitle, BlogUrl,  ShortDesc, BlogDesc, BlogImage, CreatedOn) VALUES('$post_by', '$Blog_title', '$Blog_url', '$ShortDesc', '$blog_description', '$im1', '$currentTime')");

        }
       
        if($insQry){
            echo"<script>alert('Successful.'); window.location='blog.php'</script>";
        }
        else{
            echo mysqli_error($conn); die;
        }
        
    }


    if(isset($_GET['id'])){
        $id = $_GET['id'];
        $editQry = $conn->query("select * from `blog` where BlogID = $id");
        $rowEdit = $editQry->fetch_assoc();
    }

    if(isset($_GET['deleteid'])){
        $id = $_GET['deleteid'];
        $deltQry = $conn->query("UPDATE `blog` SET IsDelete='1' where BlogID = $id");        
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
                                <div class="clearfix"></div>

                                <input type="hidden" value="<?php if(isset ($rowEdit['BlogID'])) echo $rowEdit['BlogID']; ?>" class="form-control" name="BlogID" placeholder="Name" id="BlogID">

                                <div class="col-md-3">  
                                    <div class="form-group">
                                        <label>Post By:</label>
                                        <input type="text" value="<?php if(isset ($rowEdit['PostBy'])) echo $rowEdit['PostBy']; ?>" class="form-control" name="post_by" placeholder="Name" id="post_by" required>
                                    </div>
                                </div>

                                <div class="col-md-6">  
                                    <div class="form-group">
                                        <label>Blog Title:</label>
                                        <input type="text" value="<?php if(isset ($rowEdit['BlogTitle'])) echo $rowEdit['BlogTitle']; ?>" class="form-control" name="Blog_title" placeholder="Blog Title" id="blog_title" required>
                                    </div>
                                </div>
                               
                                <div class="col-md-3">
                                    <div class="form-group">
                                        <label>Blog Image:</label>
                                        <input type="file" class="form-control" name="blog_image">
                                    </div>
                                </div>

                                <div class="col-md-6">  
                                    <div class="form-group">
                                        <label>Short Description:</label>
                                        <input type="text" value="<?php if(isset ($rowEdit['ShortDesc'])) echo $rowEdit['ShortDesc']; ?>" class="form-control" name="ShortDesc" placeholder="Short Desc" id="ShortDesc" required>
                                    </div>
                                </div>

                                <div class="col-md-4">  
                                    <div class="form-group">
                                        <label>Blog Url:</label>
                                        <input type="text" value="<?php if(isset ($rowEdit['BlogUrl'])) echo $rowEdit['BlogUrl']; ?>" class="form-control" name="BlogUrl" placeholder="Blog Url" id="BlogUrl" required>
                                    </div>
                                </div>
                                                                
                                <div class="col-md-12">
                                    <div class="form-group">
                                        <label>Blog Description:</label>
                                        <textarea id="blog_des" class="form-control" name="blog_description"><?php if(isset ($rowEdit['BlogDesc'])) echo $rowEdit['BlogDesc']; ?></textarea>
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
                        <?php if ($blog->num_rows > 0) { ?>
                            <thead>
                                <tr>
                                    <th>S.No.</th>
                                    <th>Title</th>
                                    <th>Short Desc</th>
                                    <!-- <th>Description</th> -->
                                    <th>Image</th>
                                    <th>Action</th>
                                </tr>
                            </thead>
                            <tbody>
                                <?php
                                $sid = 0;
                                while ($row = $blog->fetch_array()) {
                                    $sid++;
                                    ?>
                                    <tr>
                                        <td><?php echo $sid; ?></td>
                                        <td><b><?php echo $row['BlogTitle']; ?></b></td>
                                        <td><?php echo $row['ShortDesc']; ?></td> 
                                        <!-- <td><?php echo $row['BlogDesc']; ?></td>  -->
                                        <td><?php echo $row['BlogImage']; ?></td>
                                        <td><a href="blog.php?id=<?php echo $row['BlogID']; ?>" class="btn btn-warning btn-xs" title="Edit">Edit</a> <a href="javascript:;" onClick="deleteMe('<?php echo $row['BlogID'] ?>')" title="Delete" class="btn btn-danger btn-xs">Delete</a></td>
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
     
        <script>
            function deleteMe(id) {
                var i = confirm("Are you sure?");
                if (i == true) {
                    window.location.href = "blog.php?deleteid=" + id;
                }
                return false;
            }
        </script>

        <?php
        include 'include/footer.php';
    } else {
        header("location:index.php");
    }
    ?>

