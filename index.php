<?php
error_reporting(0);
header('Content-Type: text/html; charset=utf-8');
?>
<?php
include_once 'admin-panel/include/config.php';
$Sql_Testimonials = $conn->query("select * from `tbl_team` order by id desc limit 6");
$Sql_Index = $conn->query("SELECT * FROM `tbl_category` WHERE head_url != 'flying-insects-treatment' LIMIT 10");
$title = "Best Pest Control Services In Noida, Gurgaon, Faridabad- Vpestify";
$keyword = "Best Pest Control Services Company In Gurgaon, Best Pest Control Services Company In Faridabad, Best Pest Control Services Company In Noida";
$description = "If you are looking for the Best pest Control Services In Noida, Gurgaon, Faridabad. Vpestify one of the Best pest Control Services In Noida, Gurgaon, Faridabad at affordable price.";
$page = "home";
include_once("include/header.php");
?>
<!-- Start Home Area -->
<section class="slider-section">
    <div class="container-fluid">
        <div class="row">            
            <img src="newimg/sliders/home.jpg" class="img-responsive home-banner" alt="PEST CONTROL">
            <div class="centered">
                <h4 class="color-white font-size-1em">Professional Bird & Pest Control Services Provider</h4>
                <p class="color-white">Hire Us! Let us be at your service.</p>
                <!--                <a class="default-btn" href="contact">contact us</a>-->
            </div>                    
        </div>
    </div>
</section>
<!-- End Home Area -->


<div class="contact-section bg-net p-2 d-xs-block d-md-none">
    <div class="container">

        <div class="row">
            <div class="col-sm-12">
                <p class="font-weight-bold">Need help finding the right person?</p>
                <p>vPestify's Customer Care will contact you shortly to answer any questions and get a free inspection.</p>
                <form id="mform">
                    <span id="error_message" class="text-danger"></span>
                    <p id="mobilehomepage"></p>
                    <div class="row ai-c">
                        <div class="col-sm-12 col-12">
                            <div class="form-group mb-0">
                                <input type="text" class='mobile' onkeypress="return isNumberKey(event)" maxlength="10" id="mobile_number" placeholder="Phone Number">
                                <button type="button" class="btn btn-black" id="mobilesend_mobile">Submit</button>                            
                            </div>                               
                        </div>
                        <!--   <div class="col-sm-4 col-4">
                            <div class="form-group mb-0 mq-mt-1r">
                                <button type="button" class="btn btn-black mq-mb-1r" id="mobilesend_mobile">Submit</button>
                            </div>
                        </div>-->
                    </div>
                </form>
                <a href="tel:9806161974" class="contact-a"><i class="fa fa-phone"></i> +91 9806161974</a>
            </div>
            <div class="col-md-6 col-xs-12 p-3">
                <div class="contact-side-container">

                    <div class="pigeon-container">

                        <img src="newimg/contact-pigeon/pigeon.png" alt="Pigeon-and-Bird-control">
                        <h4>Pigeon & Bird Control</h4>
                        <p>Protect your home from bird with vPestify. Specialized services for <font color="red">Pigeon & Bird Control.</font></p>
                        <a href="birds-and-pigeon" class="btn btn-black">More About</a>


<!--<img src="newimg/sanitization/image-sanitize.png" width="100%" alt="">-->
                        <!--<h4>Sanitization Experts</h4>-->
                        <!--<p>Specialized sanitizing services for a healthier lifestyle against <font color="red">COVID-19.</font></p>-->
                        <!--<a href="sanitization-services" class="btn btn-black">More About</a>-->
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

<!-- Start Boxes Area -->
<section class="boxes-section">
    <div class="container">
        <div class="row">
            <div class="col-lg-3 col-md-6 col-sm-6">
                <a href="pigeons-control-service">
                    <div class="single-box">
                        <i class="flaticon-cage"></i>
                        <h3>Pigeon Control Services</h3>
                        <p>We all know about the defilement caused by birds, especially.</p>
                    </div>
                </a>
            </div>

            <div class="col-lg-3 col-md-6 col-sm-6">
                <a href="residential-pest-control">
                    <div class="single-box">
                        <i class="flaticon-paint-spray"></i>
                        <h3>Residential Pest control</h3>
                        <p>Pests in a domestic home aren’t just a superficial annoyance.</p>
                    </div>
                </a>
            </div>

            <div class="col-lg-3 col-md-6 col-sm-6">
                <a href="commercial-pest-control">
                    <div class="single-box">
                        <i class="flaticon-fly-swatter"></i>
                        <h3>Commercial Pest Control</h3>
                        <p>At vPestify, we provide pest control services to a variety.</p>
                    </div>
                </a>
            </div>

            <div class="col-lg-3 col-md-6 col-sm-6">
                <a href="pest-prevention-tips">
                    <div class="single-box">
                        <i class="flaticon-wiping-swipe-for-floors"></i>
                        <h3>Pest Prevention Tips</h3>
                        <p>At vPestify we help to keep your family, home and business safe from pests. Our professionally.</p>
                    </div>
                </a>
            </div>

            <!--<div class="col-lg-3 col-md-6 col-sm-6">-->
            <!--    <a href="sanitization-services">-->
            <!--        <div class="single-box">-->
            <!--            <i class="flaticon-wiping-swipe-for-floors"></i>-->
            <!--            <h3>Sanitization Services</h3>-->
            <!--            <p>vPestify helps to keep your family, home and business safe from virus.</p>-->
            <!--        </div>-->
            <!--    </a>-->
            <!--</div>-->
        </div>
    </div>
</section>
<!-- End Boxes Area -->

<div class="contact-section bg-net padding-10 mt-5 mb-5 d-none d-md-block" >
    <div class="container">

        <div class="row">
            <div class="col-md-6 col-xs-12">
                <p class="font-weight-bold">Need help finding the right person?</p>
                <p>vPestify's Customer Care will contact you shortly to answer any questions and get a free inspection.</p>
                <form id="hform">
                    <span id="error_message" class="text-danger"></span>
                    <p id="homepage"></p>
                    <div class="row ai-c">
                        <div class="col-md-10 col-10">
                            <div class="form-group mb-0">
                                <input type="text" id="mob" class='form-control mob' maxlength="10" onkeypress="return isNumberKey(event)" placeholder="Phone Number">
                            </div>
                        </div>
                        <div class="col-md-2 col-2">
                            <div class="form-group mb-0 left-div mq-mt-1r">
                                <button id="mobilesend" type="button" class="btn btn-black">Submit</button>
                            </div>
                        </div>
                    </div>
                </form>
                <p class="contact-a"><i class="fa fa-phone"></i> +91 9806161974</p>
            </div>
            <div class="col-md-6 col-xs-12">
                <!-- <div class="contact-side-container">
                    <div class="pigeon-container">
                        <img src="newimg/contact-pigeon/pigeon.png" width="100%" alt="">                        
                        <h4>Bird Control</h4>
                        <p>Protect your home from bird with vPestify.</p>
                        <a href="birds-and-pigeon" class="btn btn-black">More About</a>
                    </div>-->

                <div class="row">
                    <div class="col-md-1"></div>
                    <div class="col-md-7">
                        <h5 class="color-red">Pigeon & Bird Control</h5>
                        <p>Protect your home from bird with vPestify. Specialized services for <font color="red"> Pigeon & Bird Control.</font></p>
                        <a href="https://vpestify.com/birds-and-pigeon-control" class="btn btn-black">More About</a>               
                    </div>
                    <div class="col-md-4 homesanitizationSecImg webView">
                        <img src="newimg/contact-pigeon/pigeon.png" alt="Pigeon-and-Bird-control" style=" height: 223px; bottom: 0;z-index: 0;">  
                    </div>
                </div>

                <!--<div class="row">-->
                <!--    <div class="col-md-1"></div>-->
                <!--    <div class="col-md-7">-->
                <!--        <h5 class="color-red">Sanitization Experts</h5>-->
                <!--        <p>Specialized sanitizing services for a healthier lifestyle against <font color="red">COVID-19.</font></p>-->
                <!--        <a href="sanitization-services" class="btn btn-black">More About</a>               -->
                <!--    </div>-->
                <!--    <div class="col-md-4 homesanitizationSecImg webView">-->
                <!--        <img src="newimg/sanitization/image-sanitize.png" alt="Sanitization">  -->
                <!--    </div>-->
                <!--</div>-->

            </div>
        </div>
    </div>
</div>

<section class="home-bird-net-section pb-40 pt-40">
    <div class="container">
        <div class="row align-items-center">
            <div class="col-lg-12">
                <h1>Bird Netting</h1>
                <div class="mobile-number-container">
                    <p class="query-line"> For our information or query please call us on <span><a href="tel:9806161974"><i class="fa fa-phone"></i> +91 9806161974 </a></span></p>
                </div>
                <div class="__web-inspector-hide-shortcut__">
                    <p>Don't worry, Vpestify is there for you!</p>
                    <p>&nbsp;We've got the expertise from working on every type of building and structure where birds could perch, nest or roost at night. we are here to provide you the best pigeons control service. The offered service is highly applauded among our valuable clients for its promptness and reliability. The provided service is rendered as per the needs of our valuable clients. In this service our highly skilled professionals using optimum quality tools and techniques.</p>
                    <p>Whether it’s a shop front, office roof or warehouse canopy, call Vpestify to provide you with the most suitable and effective solutions for pigeon control.</p>
                </div>
            </div>
        </div>

        <div class="row align-items-center pt-10">
            <div class="col-lg-4 col-md-6 col-sm-6">
                <div class="single-services-image img-container" onclick="window.location.href = 'contact'">
                    <img src="newimg/birdnet-image/birdnet-img-1.jpeg" class="img-responsive width-348 height-260" alt="anti-bird-net-services">
                    <div class="text-center">
                        <a href="contact">For Enquiry</a>    
                    </div>                                        
                </div>
            </div>

            <div class="col-lg-4 col-md-6 col-sm-6">
                <div class="single-services-image img-container" onclick="window.location.href = 'contact'">
                    <img alt="pigeon-bird-netting-services" src="newimg/birdnet-image/birdnet-img-2.jpeg" class="img-responsive width-348 height-260">
                    <div class="text-center">
                        <a href="contact">For Enquiry</a>    
                    </div>                                        
                </div>
            </div>
            <div class="col-lg-4 col-md-6 col-sm-6">
                <div class="single-services-image img-container" onclick="window.location.href = 'contact'">
                    <img alt="bird-control-net-services" src="newimg/birdnet-image/vpestify_Bird_Netting_img.jpg" class="img-responsive width-348 height-260">
                    <div class="text-center">
                        <a href="contact">For Enquiry</a>    
                    </div>                                        
                </div>
            </div>
        </div>
    </div>
</section>

<!-- Start About Area -->
<section class="about-section pb-40">
    <div class="container">
        <div class="row align-items-center">           
            <div class="col-lg-7">
                <div class="about-text">
                    <span>About Us</span>
                    <h2>Most popular and 100% satisfation to our customer in pest control service</h2>
                    <p>We are highly experienced & well established pest control services provider Company in Delhi, India. We are specialized in reactive as well as proactive and preventative pest control. To help protect you and your family’s health, lifestyle and property by delivering affordable pest management solutions to control the pests in your environment effectively and safely.</p>
                    <p>We believe in providing the best service for our clients and working with them to deliver quality solutions within budget and in the safest possible way for our site teams, the public and our clients’ employees.</p>
                    <p>We provide a swift response, with fast detection and effective pest control solutions, through our team of local experts. All our service technicians go through the rigorous training program to ensure the highest qualified pest control employees in Delhi.</p>
                    <p>We’re not just providing Control solutions; we’re building a relationship based on trust and a service you can depend upon.</p>
                    <p>Call us on +91 9806161974 or email vpestify@gmail.com to find out more without any obligation.</p>

                    <p class="query-line"> For our services or query call us on <span><i class="fa fa-phone"></i> +91 9806161974 </span></p>

                    <a class="default-btn" href="about">Read More</a>
                </div>
            </div>

            <div class="col-lg-5">
                <div class="about-img wow fadeInLeft" data-wow-delay=".5s">
                    <img src="newimg/about/about-img.jpg" class="img-responsive" alt="image">
                </div>
            </div>
        </div>
    </div>
</section>
<!-- End About Area -->


<section class="pest-problem wow p-40 fadeInUp">
    <div class="container">
        <h3 class="heading">Pest Library</h3>
        <h6 class="text-center">Trying to Identify a Pest Type?</h6>
        <p class="sub-heading text-center">
            Browse our pest library for useful information on specific pests. Click on the pest icons below to learn more.
        </p>
        <?php include_once("include/same-nav.php"); ?>
    </div>
</section>

<section class="call-to-action wow fadeInUp">
    <div class="container">
        <div class="row">
            <div class="col-sm-8 cs-12">
                <div class="call-to-action-container mt-5 mb-3">
                    <h3>At vPestify we put you and your family first</h3>
                    <p>
                        We have worked hard to develop the most effective treatment plan to dramatically reduce high levels of pest activity very rapidly. It is our goal to knock out your pest issue on the first service.
                    </p>
                    <ul>
                        <li>Complete and Thorough Inspection</li>
                        <li>Complete and Thorough Treatment</li>
                        <li>Integrated Pest Monitoring Plan</li>
                        <li>Weekly, Bi-Weekly and Monthly Service Plans</li>
                        <li>Eco-Friendly Approach</li>
                        <li>Coverage options based on your budget</li>
                    </ul>
                    <p class="query-line"> For our services or query call us on <span><i class="fa fa-phone"></i> +91 9806161974 </span></p>

                </div>
            </div>
            <div class="col-sm-4 cs-12">
                <div class="call-to-action-img">
                    <img src="newimg/call-to-action/score_img.jpg" width="80%" alt="">
                </div>
            </div>
        </div>
    </div>
</section>

<!-- Start Our Process Area -->
<!--<section class="our-process-section ptb-100 wow fadeInUp">
    <div class="container">
        <div class="section-title">
            <span>How We Works</span>
            <h2> control All Your Pest Problems with vPestify</h2>
        </div>

        <div class="row">
            <div class="col-sm-4 col-12 stepone">
                <div class="works-container">
                    <div class="img-container">
                        <img src="newimg/work/images.jpg" width="100%" alt="">
                    </div>
                    <div class="img-title text-center">
                        Book
                    </div>
                </div>
            </div>
            <div class="col-sm-4 col-12 steptwo">
                <div class="works-container">
                    <div class="img-container">
                        <img src="newimg/work/schedule.jpg" width="100%" alt="">
                    </div>
                    <div class="img-title text-center">
                        Schedule
                    </div>
                </div>
            </div>
            <div class="col-sm-4 col-12">
                <div class="works-container">
                    <div class="img-container">
                        <img src="newimg/work/relax.jpg" width="100%" alt="">
                    </div>
                    <div class="img-title text-center">
                        Relax
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>-->
<!-- End Our Process Area -->

<!-- Start Services Area -->
<section class="services-section ptb-46 wow fadeInUp">
    <div class="container">
        <div class="section-title text-left">
            <span>Our Services</span>
            <h2>Offering Best Pest Control Services</h2>
            <p>We are proving all type of cleaning solutions for every small and big businesses, organizations and homes. All type of cleaning solutions for.</p>
        </div>

        <div class="row">
            <!-- <div class="col-lg-3 col-md-4 col-sm-6">
                <div class="single-services" onclick="window.location.href = 'pest-control-services'">                   
                    <div class="services-content-wrapper">
                        <div class="icon-container">
                            <img src="admin-panel/gallery-image/icons/stap1.png" alt="image">
                        </div>
                        <h3>Pest Control Services</h3>
                        <p>We work hard to exceed your expectations and deliver the highest quality pest control</p>
                        <a href="pest-control-services">Read More</a>
                        <div class="services-icon">
                            <a href="pest-control-services"><i class="fas fa-chevron-right"></i></a>
                        </div>
                    </div>
                </div>
            </div> -->

            <div class="col-lg-3 col-md-4 col-sm-6">
                <div class="single-services" onclick="window.location.href = 'residential-pest-control'">
                    <!--                    <div class="services-img">
                                            <img src="newimg/services/services2.jpg" alt="image" width="100%">
                                        </div>-->

                    <div class="services-content-wrapper">
                        <div class="icon-container">
                            <img src="admin-panel/gallery-image/icons/stap2.png" alt="image">
                        </div>
                        <h3>Residential Pest Control</h3>
                        <p>Pests in a domestic home aren’t just a superficial annoyance. They can cause severe</p>
                        <a href="residential-pest-control">Read More</a>
                        <div class="services-icon">
                            <a href="residential-pest-control"><i class="fas fa-chevron-right"></i></a>
                        </div>
                    </div>
                </div>
            </div>

            <div class="col-lg-3 col-md-4 col-sm-6">
                <div class="single-services" onclick="window.location.href = 'commercial-pest-control'">
                    <!--                    <div class="services-img">
                                            <img src="newimg/services/services3.jpg" alt="image" width="100%">
                                        </div>-->

                    <div class="services-content-wrapper">
                        <div class="icon-container">
                            <img src="admin-panel/gallery-image/icons/stap3.png" alt="image">
                        </div>
                        <h3>Commercial Pest Controls</h3>
                        <p>At vPestify, we provide pest control services to a variety of businesses and commercial sites for</p>
                        <a href="commercial-pest-control">Read More</a>
                        <div class="services-icon">
                            <a href="commercial-pest-control"><i class="fas fa-chevron-right"></i></a>
                        </div>
                    </div>
                </div>
            </div>

            <div class="col-lg-3 col-md-4 col-sm-6">
                <div class="single-services" onclick="window.location.href = 'pest-prevention-tips'">
                    <!--                    <div class="services-img">
                                            <img src="newimg/services/services5.jpg" alt="image" width="100%">
                                        </div>-->

                    <div class="services-content-wrapper">
                        <div class="icon-container">
                            <img src="admin-panel/gallery-image/icons/stap5.png" alt="image">
                        </div>
                        <h3>Pest Prevention Tips</h3>
                        <p>At vPestifywe help to keep your family, home and business safe from pests</p>
                        <a href="pest-prevention-tips">Read More</a>
                        <div class="services-icon">
                            <a href="pest-prevention-tips"><i class="fas fa-chevron-right"></i></a>
                        </div>
                    </div>
                </div>
            </div>
            <?php
            while ($Row_Index = $Sql_Index->fetch_array()) {
                $Index_Id = $Row_Index['head_url'];
                $S_Sql = $conn->query("select * from `tbl_service` where s_sub_link='$Index_Id' AND s_sub_link != 'flies'");
                $S_Row = $S_Sql->fetch_assoc();
                if($S_Row['s_head_url'] == 'termites-control'){
                    $head = 'Termite Control';
                }else{
                    $head = $Row_Index['head'];

                }
                ?>
                    <div class="col-lg-3 col-md-4 col-sm-6">
                        <div class="single-services" onclick="window.location.href = '<?php echo $S_Row['s_head_url'] ?>'">                        
                            <div class="services-content-wrapper">
                                <div class="icon-container">
                                    <img src="<?php echo $images . 'icons/' . $S_Row['s_file1']; ?>" alt="image">
                                </div>
                                <h3><?php echo $head; ?></h3>
                                <p><?php echo $S_Row['s_short_des']; ?></p>
                                <a href="<?php echo $S_Row['s_head_url'] ?>">Read More</a>
                                <div class="services-icon">
                                    <a href="#"><i class="fas fa-chevron-right"></i></a>
                                </div>
                            </div>
                        </div>
                    </div>
            <?php } ?>
        </div>
    </div>
</section>
<!-- End Services Area -->

<!-- Start Why Choose Us Area -->
<section class="why-choose-section wow fadeInLeft">
    <div class="container-fluid p-0">
        <div class="row m-0">
            <div class="col-lg-8 col-md-8 p-0">
                <div class="why-choose-wrapper">
                    <div class="section-title text-left">
                        <span>WHY CHOOSE VPESTIFY</span>
                        <p>We care for you in the name of protecting health, safety, property and reputation. Now, you’re in safe hands with vPestify.</p>
                    </div>

                    <div class="row">
                        <div class="col-lg-6 col-md-12 col-sm-6">
                            <div class="choose-text-wrapper">
                                <div class="icon">
                                    <i class="flaticon-service"></i>
                                </div>

                                <h3>Experienced Technician</h3>
                                <p>Our professional pest technicians are trained not only to treat the pest problem but also to look at the root cause. They will take the time to understand your concerns and provide feedback and recommendations on how to minimize pests in and around the property.</p>
                            </div>
                        </div>

                        <div class="col-lg-6 col-md-12 col-sm-6">
                            <div class="choose-text-wrapper">
                                <div class="icon">
                                    <i class="flaticon-product"></i>
                                </div>

                                <h3>Natural Products</h3>
                                <p>Our treatments and products are pest specific and natural, and thus not harmful to humans or pets. Therefore, your family can rest a little easier knowing your pest concern will be treated with the highest quality products.</p>
                            </div>
                        </div>

                        <div class="col-lg-6 col-md-12 col-sm-6">
                            <div class="choose-text-wrapper">
                                <div class="icon">
                                    <i class="flaticon-scooter"></i>
                                </div>

                                <h3>Fast Service</h3>
                                <p>We provide you fast and same day service at your scheduled time. Our fast and immediate control service is our identity.We can’t compromise with your pest problems.</p>
                            </div>
                        </div>

                        <div class="col-lg-6 col-md-12 col-sm-6">
                            <div class="choose-text-wrapper">
                                <div class="icon">
                                    <i class="flaticon-heavy"></i>
                                </div>

                                <h3>Best Equipment</h3>
                                <p>We do innovative and unique treatments that resolve Pest Problems effectively with the best equipment.</p>
                            </div>
                        </div>
                    </div>
                    <a class="default-btn btn-right" href="why-vpestify">Read More</a>
                </div>
            </div>

            <div class="col-lg-4 col-md-4 p-0">
                <div class="choose-why-img" style="height: 74%;
                     background-image: url(assets/img/why-choose-1.jpg);
                     background-position: center center;
                     background-size: cover;
                     background-repeat: no-repeat;">
             <!--<img src="assets/img/why-choose-1.jpg" alt="image">-->
                </div>
            </div>
        </div>
    </div>
</section>


<!-- End Why Choose Us Area -->

<!--<section class="wow fadeInRight lightgallery">
    <div class="container-fluid">
        <div class="heading">
            Our gallery
        </div>
        <div class="row">
            <div class="col-sm-4 col-12">
                <div class="gallery-img-container">
                    <a href="newimg/gallery/images1.jpg" class="item">
                        <img src="newimg/gallery/images1.jpg" alt="" width="100%">
                    </a>
                </div>
            </div>
            <div class="col-sm-4 col-12">
                <div class="gallery-img-container">
                    <a href="newimg/gallery/images2.jpg" class="item">
                        <img src="newimg/gallery/images2.jpg" alt="" width="100%">
                    </a>
                </div>
            </div>
            <div class="col-sm-4 col-12">
                <div class="gallery-img-container">
                    <a href="newimg/gallery/images3.jpg" class="item">
                        <img src="newimg/gallery/images3.jpg" alt="" width="100%">
                    </a>
                </div>
            </div>
            <div class="col-sm-4 col-12">
                <div class="gallery-img-container">
                    <a href="newimg/gallery/images4.jpg" class="item">
                        <img src="newimg/gallery/images4.jpg" alt="" width="100%">
                    </a>
                </div>
            </div>
            <div class="col-sm-4 col-12">
                <div class="gallery-img-container">
                    <a href="newimg/gallery/images5.jpg" class="item">
                        <img src="newimg/gallery/images5.jpg" alt="" width="100%">
                    </a>
                </div>
            </div>
            <div class="col-sm-4 col-12">
                <div class="gallery-img-container">
                    <a href="newimg/gallery/images6.jpg" class="item">
                        <img src="newimg/gallery/images6.jpg" alt="" width="100%">
                    </a>
                </div>
            </div>
            <div class="col-sm-4 col-12">
                <div class="gallery-img-container">
                    <a href="newimg/gallery/images7.jpg" class="item">
                        <img src="newimg/gallery/images7.jpg" alt="" width="100%">
                    </a>
                </div>
            </div>
            <div class="col-sm-4 col-12">
                <div class="gallery-img-container">
                    <a href="newimg/gallery/images8.jpg" class="item">
                        <img src="newimg/gallery/images8.jpg" alt="" width="100%">
                    </a>
                </div>
            </div>
        </div>
    </div>
</section>-->

<!-- Start Counter Area -->
<!-- <section class="counter-section ptb-100">
    <div class="container">
        <div class="row">
            <div class="col-lg-3 col-md-3 col-sm-6">
                <div class="single-counter">
                    <h3><span class="counter">2000</span></h3>
                    <p>Happy Customers</p>
                </div>
            </div>

            <div class="col-lg-3 col-md-3 col-sm-6">
                <div class="single-counter">
                    <h3><span class="counter">100</span>%</h3>
                    <p>Services Guarantee</p>
                </div>
            </div>

            <div class="col-lg-3 col-md-3 col-sm-6">
                <div class="single-counter">
                    <h3><span class="counter">30</span>+</h3>
                    <p>Professional Staff</p>
                </div>
            </div>

            <div class="col-lg-3 col-md-3 col-sm-6">
                <div class="single-counter">
                    <h3>
                        <span class="counter">500</span>+</h3>
                    <p>Cleans Completed</p>
                </div>
            </div>
        </div>
    </div>
</section> -->
<!-- End Counter Area -->

<!-- Start Testimonials Area -->
<section class="testimonials-section ptb-100 ">
    <div class="container">
        <h3 class="heading">Our Testimonial</h3>
        <div class="testimonial-wrapper owl-carousel owl-theme">
            <?php while ($Row_Testimonials = $Sql_Testimonials->fetch_array()) { ?>
                <div class="testimonial-single-item">
                    <div class="icon">
                        <i class="flaticon-quote"></i>
                    </div>

                    <h3><?php echo $Row_Testimonials['name']; ?></h3>
                    <span><?php echo $Row_Testimonials['heading']; ?></span>

                    <p><?php echo $Row_Testimonials['file']; ?></p>

                    <div class="rating">
                        <i class="fas fa-star"></i>
                        <i class="fas fa-star"></i>
                        <i class="fas fa-star"></i>
                        <i class="fas fa-star"></i>
                        <i class="fas fa-star"></i>
                    </div>
                </div>
            <?php } ?>
        </div>
    </div>
</section>

<!-- End Testimonials Area -->
<!-- Start Partner Area -->
<!--<section class="partner-section ptb-60 gray-bg">
    <div class="container">
        <div class="section-title">
            <span>Support by</span>
            <h2>Business Partner</h2>
            <p>There are variations available majoritaey suffered alteration words which look believable dolor sit amet consectetuer adipiscing.</p>
        </div>

        <div class="partner-wrapper owl-carousel owl-theme">
            <div class="partner-logo">
                <a href="#"><img src="assets/img/brand/brand-1.png" alt="image"></a>
            </div>

            <div class="partner-logo">
                <a href="#"><img src="assets/img/brand/brand-2.png" alt="image"></a>
            </div>

            <div class="partner-logo">
                <a href="#"><img src="assets/img/brand/brand-3.png" alt="image"></a>
            </div>

            <div class="partner-logo">
                <a href="#"><img src="assets/img/brand/brand-4.png" alt="image"></a>
            </div>

            <div class="partner-logo">
                <a href="#"><img src="assets/img/brand/brand-5.png" alt="image"></a>
            </div>
        </div>
    </div>
</section>-->
<!-- End Partner Area -->
<?php
include_once("include/down-form.php");
include_once("include/footer.php");
?>

