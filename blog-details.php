<?php 
include_once("admin-panel/include/config.php");

   $blogUrl = $_GET['blog'];

   $allBlog = $conn->query("select * from blog where IsDelete = '0'");


    $selQry = $conn->query("select * from blog where IsDelete = '0' AND BlogUrl='$blogUrl'");
    $blogData = $selQry->fetch_assoc();

    $title="Blogs- Vpestify";
    $keyword="blogs, Polycarbonate Bird spike manufacturers in Manesar, Polycarbonate Bird spike manufacturers in Gurgaon";
    $description="If you are looking for the Best Polycarbonate Bird spike manufacturers in Gurgaon & Manesar. Vpestify is leading one of the Best Polycarbonate Bird spike manufacturers in Gurgaon & Manesar at affordable price.";
    $page="blog";

    include_once("include/header.php");
?>

<style>
    
.padding-15 {
    padding: 15px;
}
    
.single-blog-container{
    position: relative;
    margin: 3rem 0;
    /* cursor: pointer; */
}

.single-blog-container{
    margin-bottom: 30px;
    -webkit-transition: 0.5s;
    transition: 0.5s;
    background-color: #ffffff;
    /* border-radius: 5px; */
    border: 1px solid lightgray;
}

.height-412{
    height: 412px;
}

.pl-15{
    padding-left: 15px;
}

.blog-image{
    height: 300px;
    width: 100%;
    border-top-left-radius: calc(5px - 1px);
    border-top-right-radius: calc(5px - 1px);
    box-shadow: 0 0 5px #0009;
}
.blog-list{
    margin-top: 47px;
    margin-bottom: 50px;
    border: 1px #ffff;
    box-shadow: 0 0 5px #0009;
    padding: 5px;;
}

.img-thumnail{
    padding: 0.25rem;
    background-color: #f2f2f4;
    border: 1px solid #e5e6ea;
    border-radius: 3px;
    height: 60px;
    width: 70px;
    margin-bottom: 5px;
    /* max-width: 100%; */
    
}

.blog-title-list{
    margin-bottom: 5px;
    padding-left: 0px;;
}
</style>

<section class="banner" style="background-size:cover; background-position:center">
<img class="inner-banner-135" src="newimg/banners/blog.jpg">
    <!-- <img class="inner-banner-135" src="https://i.picsum.photos/id/1084/536/354.jpg?grayscale&hmac=Ux7nzg19e1q35mlUVZjhCLxqkR30cC-CarVg-nlIf60"> -->
    <div class="banner-content"><!-- <h2>Health and Safety</h2>--> </div>
</section>
<nav aria-label="breadcrumb ">
    <ol class="breadcrumb blue-grey lighten-4 mb-5">
        <li class="breadcrumb-item"><a class="black-text" href="./">Home</a><i class="fas fa-angle-double-right mx-2" aria-hidden="true"></i></li>
        <li class="breadcrumb-item active">Blogs</li>
    </ol>
</nav>

<div class="service-individual-container">
    <div class="container">    
        <div class="row pt-10">
        <div class="col-md-12 text-center font-italic"><h3 class="font-size-40"><?php echo $blogData['BlogTitle']; ?></h3></div>

                <div class="col-lg-8 col-md-12 col-sm-12">
                    <div class="single-blog-container img-container">
                        <img alt="blog-post" src="admin-panel/gallery-image/blogs/<?php echo $blogData['BlogImage']?>" class="img-responsive blog-image">
                        <div class="text-left mt-3 pl-15">
                            <h6><i class="fa fa-calendar" aria-hidden="true"></i> 
                                <?php echo date('F d, Y', strtotime($blogData['CreatedOn']));  ?> &nbsp;&nbsp;&nbsp;
                                <?php echo $blogData['PostBy']; ?>
                            </h6>
                        </div> 
                        
                        <div class="text-center padding-10">
                            <?php echo $blogData['BlogDesc']; ?>
                        </div>
                    </div>
                </div>

                <div class="col-lg-4 col-md-12 col-sm-12">
                    <div class="row blog-list">
                        <?php
                            $sid = 0;
                            if($allBlog->num_rows>0){                      
                                    foreach($allBlog as $row){
                                    $sid++;
                                ?>
                                    <div class="col-lg-3 col-md-3 mb-10">
                                      <a href="blog-posts?blog=<?php echo $row['BlogUrl']?>">  
                                        <img class="img-thumnail" src="admin-panel/gallery-image/blogs/<?php echo $row['BlogImage']?>">
                                    </a>
                                    </div>
                                    <div class="col-lg-9 col-md-9 blog-title-list">
                                        <?php echo $row['BlogTitle']; ?>
                                    </div>


                            <?php 
                                }
                            }
                            ?>
                    </div>
                </div>


            <div class="mobile-number-container">
                <p class="query-line"> For our services or query call us on <span><i class="fa fa-phone"></i> +91 9806161974 </span></p>
            </div>

        </div>
    </div>
        <section class="services-inside">
        <div class="container">
            <h2 class="heading">
                Our Services
            </h2>
            <?php include_once("include/same-nav.php");?>
        </div>
    </section>
</div>
<?php 
    include_once("include/down-form.php");
    include_once("include/footer.php");
?>
