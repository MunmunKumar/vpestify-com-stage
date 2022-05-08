<?php
include_once("admin-panel/include/config.php");
$Sql_Menu = $conn->query("SELECT * FROM `tbl_menu`");
?>
<!doctype html>
<html lang="en">
    <head>
        <!-- Google Tag Manager -->
        <script>(function (w, d, s, l, i) {
                w[l] = w[l] || [];
                w[l].push({'gtm.start':
                            new Date().getTime(), event: 'gtm.js'});
                var f = d.getElementsByTagName(s)[0],
                        j = d.createElement(s), dl = l != 'dataLayer' ? '&l=' + l : '';
                j.async = true;
                j.src =
                        'https://www.googletagmanager.com/gtm.js?id=' + i + dl;
                f.parentNode.insertBefore(j, f);
            })(window, document, 'script', 'dataLayer', 'GTM-58NCFT5');</script>
        <!-- End Google Tag Manager -->

        <script async src="https://www.googletagmanager.com/gtag/js?id=AW-751511576"></script>
        <script>
            window.dataLayer = window.dataLayer || [];
            function gtag() {
                dataLayer.push(arguments);
            }
            gtag('js', new Date());

            gtag('config', 'AW-751511576');
        </script>


        <!-- REQUIRED META TAGS -->
        <!-- TITLE -->
        <title><?php echo $title; ?></title>
        <meta name="keyword" content="<?php echo $keyword; ?>">
        <meta name="description" content="<?php echo $description; ?>">
        <meta name="google-site-verification" content="q85Gfe8QcHvjRMZ54nUPj8wPzkeMtd7G9oA9_7hL4Mc" />
        <!--<meta name="google-site-verification" content="google27cbdfaff59c4304.html" />-->
        <link rel="canonical" href="https://www.vpestify.com/">
        <meta name="robots" content="index, follow"/>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <!-- Bootstrap Min CSS -->
        <link rel="stylesheet" href="assets/css/bootstrap.min.css">
        <!-- Owl Carousel Min CSS -->
        <link rel="stylesheet" href="assets/css/owl.carousel.min.css">
        <!-- Owl Theme Default Min CSS -->
        <!--        <link rel="stylesheet" href="assets/css/owl.theme.default.min.css">-->
        <!-- Animate Min CSS -->
        <link rel="stylesheet" href="assets/css/animate.min.css">
        <!-- FontAwesome Min CSS -->
        <link rel="stylesheet" href="assets/css/fontawesome.min.css">
        <!-- Flaticon CSS -->
        <link rel="stylesheet" href="assets/css/flaticon.css">
        <!-- Style CSS -->
        <link rel="stylesheet" href="assets/css/style.css">
        <!-- Responsive CSS -->
        <link rel="stylesheet" href="assets/css/responsive.css">
        <link rel="stylesheet" href="assets/font/flaticon.css">
        <link href="https://fonts.googleapis.com/css?family=Inria+Serif:300,400,700&display=swap" rel="stylesheet">
        <!--<link rel="stylesheet" href="lg/dist/css/lightgallery.css">-->
        <!--<link rel="stylesheet" href="custom.css">-->
        <link rel="stylesheet" href="assets/css/new_custom.css">
        <!-- Favicon -->
        <link rel="icon" type="image/png" href="assets/img/favicon.png">
        <!--i<meta name="google-site-verification" content="e6MXu5rwakcTNpg5DChO35jR7Dvishr5CDkpAvlqzmk" /> --->
        <!-- Global site tag (gtag.js) - Google Analytics -->
        <script async src="https://www.googletagmanager.com/gtag/js?id=UA-174677750-1"></script>
        <script>
            window.dataLayer = window.dataLayer || [];
            function gtag() {
                dataLayer.push(arguments);
            }
            gtag('js', new Date());

            gtag('config', 'UA-174677750-1');
        </script>

        <style>
            .fix-footer {
                display: none;
                position: fixed;
                bottom: 0;
                left: 0;
                right: 0;
                background: #fff;
                padding: 5px 0;
                z-index: 9;
                border-top: 1px solid #525252;
            }

            .fix-footer p {
                float: left;
                width: 50%;
                text-align: center;
                margin: 0;
                padding: 0;
            }

            .fix-footer p a {
                float: left;
                width: 100%;
                margin: 0;
                padding: 0;
                font-size: 25px;
                font-weight: bold;
            }

            .fix-footer p a span i.fa,
            .fix-footer p a span i.fab {
                font-size: 25px;
                line-height: normal;
                vertical-align: middle;
            }

            .fix-footer p a img {
                width: 50px;
            }

            .fix-footer p a span {
                float: left;
                width: 100%;
                line-height: 28px;
            }

            .fix-footer p a span.whatsUp {
                color: #1e9600;
            }

            .fix-footer p a span.call {
                color: #d22a2a;
            }
                        
            .navbar-brand-logo{
                width: 253px;
            }



            @media (max-width: 880px) {
                body {
                    margin-bottom: 22px;
                }
                .fix-footer {
                    display: block;
                }

                div[id^="gb-widget-"]{
                    display:none}
            }

        </style>

    </head>

    <body>
        <!-- Google Tag Manager (noscript) -->
        <noscript><iframe src="https://www.googletagmanager.com/ns.html?id=GTM-58NCFT5"
                          height="0" width="0" style="display:none;visibility:hidden"></iframe></noscript>
        <!-- End Google Tag Manager (noscript) -->

        <div class="floating-form">
            <div class="container">
                <h3 class="mb-4">Submit Your Query</h3>
                <form action="#">
                    <div class="row">
                        <div class="col-sm-6 col-xs-12">
                            <div class="form-group">
                                <input type="text" class="form-control" placeholder="Name">
                            </div>
                        </div>
                        <div class="col-sm-6 col-xs-12">
                            <div class="form-group">
                                <input type="text" class="form-control" placeholder="Phone">
                            </div>
                        </div>

                        <div class="col-sm-6 col-xs-12">
                            <div class="form-group mb-10">
                                <input type="text" class="form-control" placeholder="service">
                            </div>
                        </div>

                        <div class="col-sm-6 col-xs-12">
                            <div class="form-group mb-10">
                                <input type="text" class="form-control" placeholder="City">
                            </div>
                        </div>

                        <div class="col-sm-12">
                            <textarea class="form-control" id="message" rows="8" placeholder="Message" required=""></textarea>
                        </div>

                        <div class="col-sm-12">
                            <input type="submit" class="btn btn-red mt-3" value="submit">
                        </div>
                    </div>
                </form>
            </div>

            <i class="far fa-times-circle"></i>
        </div>

        <div class="main-body">
            <!-- Start Header Area -->
            <header class="header-section">
                <!-- Start Top Header Area -->
                <div class="top-header">
                    <div class="container-fluid">
                        <div class="row align-items-center">
                            <div class="col-lg-2 col-md-2">
                                <ul class="social-links">
                                    <li><a href="https://www.facebook.com/vpestifycom" target="_blank"><i class="fab fa-facebook-f"></i></a></li>
                                    <li><a href="https://twitter.com/vpestify" target="_blank"><i class="fab fa-twitter"></i></a></li>
                                    <li><a href="#" target="_blank"><i class="fab fa-youtube"></i></a></li>
                                    <li><a href="https://www.linkedin.com/in/vpestify-services-5b8176199/" target="_blank"><i class="fab fa-linkedin-in"></i></a></li>
                                </ul>
                            </div>
                            <div class="col-md-3 text-center color-white">
                                <!--Covid-19 is spreading faster than we think Sanitize to survive.-->
                                <!--<a class="color-white display-inline bold weight-500" href="sanitization-services">READ MORE</a>-->
                            </div>
                            <div class="col-lg-7 col-md-7">
                                <ul class="header-contact-info">                                    
                                    <li><i class="fas fa-phone"></i> <a href="tel:9806161974">+91 9806161974</a></li>
                                    <li><i class="fas fa-envelope"></i> <a href="mailto:vpestify@gmail.com">vpestify@gmail.com</a></li>
<!--                                    <li class="d-none d-sm-inline-block"><i class="fas fa-map-marker-alt"></i>-->
                                    <!--  <a href="#">Bhardwaj Complex, Ground Floor, Jharsa Village, Sector 39, Gurgaon - 122022, (HR)</a>-->
                                    </li>
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- End Top Header Area -->

                <!-- Start Navbar Area -->
                <nav class="navbar navbar-expand-lg navbar-light bg-light p-0 sticky--nav">
                    <div class="container-fluid mw-1200">
                        <a class="navbar-brand navbar-brand-logo" href="./"><img src="newimg/logo/logo.png" alt="logo"></a>
                        <button class="navbar-toggler" id="togglemobilemenu">
                            <span class="navbar-toggler-icon"></span>
                        </button>
                        <div class="collapse navbar-collapse" id="navbarSupportedContent">
                            <ul class="navbar-nav ">
                                <li class="nav-item dropdown">
                                    <a class="nav-link active" href="./">Home</a>
                                </li>

                                <li class="nav-item dropdown">
                                    <a class="nav-link dropdown-toggle" href="#" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">About vpestify</a>

                                    <div class="dropdown-menu">
                                        <div class="container-fluid">
                                            <div class="row">
                                                <div class="col-lg-4 col-md-4">
                                                    <div class="drop-down-items-container">
                                                        <ul class="list-style-none">
                                                            <h6 class="sub-menu-heading">Who We Are</h6>
                                                            <li><a href="about">About vPestify Control Services</a></li>
                                                            <li><a href="health-and-safety">Health and Safety</a></li>
                                                            <li><a href="our-expert-technician">Our Expert Technician</a></li>
                                                            <!-- <li><a href="#">Get A Free Inspection</a> <li> -->
                                                            <li> <a href="pest-control-services">Pest Control Services</a></li>
                                                            <li><a href="residential-pest-control">Residential Pest control</a></li>
                                                            <li><a href="commercial-pest-control">Commercial Pest Control</a></li>
                                                            <li><a href="why-vpestify">Why vPestify</a></li>
                                                            <li><a href="pest-prevention-tips">Pest Prevention Tips</a> </li>
                                                            <li> <a href="sanitization-services">Sanitization Services</a></li>
                                                        </ul>
                                                    </div>
                                                </div>
                                                <div class="col-lg-4 col-md-4">
                                                    <div class="drop-down-items-container">
                                                        <h6 class="sub-menu-heading">Office Address</h6>

                                                        <h6>Head Office</h6>
                                                        <p> C-37, Chanakya Palace 1,  Uttam Nagar, <br> Delhi -110059 </p>
                                                        <h6>Branch Office</h6>
                                                        <p> Bhardwaj Complex, Ground <br> Floor, Jharsa Village, Sector 39, <br> Gurgaon - 122022, (HR)</p>
                                                        
                                                        <p> Nikunj Bhawan, jhijhor, Sector-53, Noida, <br> UP -201307 </p>
                                                        <p> I-605/7, Hari Nagar, Main, Jaitpur Rd, Extension, Badarpur, Delhi, 110044</p>                                                        
                                                        <p> SD/25, Ground Floor, Shastri Nagar, Ghaziabad, UP 201002 </p>
                                                        
                                                    </div>
                                                </div>

                                            </div>
                                        </div>
                                    </div>
                                </li>

                                <?php
                                while ($Row_Menu = $Sql_Menu->fetch_array()) {
                                    $M_Id = $Row_Menu['link'];
                                    $Sql_Sub = $conn->query("SELECT * FROM `tbl_category` WHERE menu_name='$M_Id'");
                                    ?>
                                    <li class="nav-item dropdown">
                                        <a class="nav-link dropdown-toggle" href="#" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"><?php echo $Row_Menu['name']; ?></a>

                                        <div class="dropdown-menu">
                                            <div class="container-fluid">
                                                <div class="row">
                                                    <?php
                                                    while ($Row_Sub = $Sql_Sub->fetch_array()) {
                                                        $S_Id = $Row_Sub['head_url'];
                                                        $Sql_Ser = $conn->query("SELECT * FROM `tbl_service` WHERE s_menu_link='$M_Id' && s_sub_link='$S_Id'");
                                                        ?>
                                                        <div class="col-lg-3 col-md-4 col-sm-6">
                                                            <div class="drop-down-items-container">
                                                                <h6 class="sub-menu-heading"><?php echo $Row_Sub['head']; ?></h6>
                                                                <ul class="list-style-none">
                                                                    <?php
                                                                    while ($Row_Ser = $Sql_Ser->fetch_array()) {
                                                                        echo'<li><a href="' . $Row_Ser['s_head_url'] . '">' . $Row_Ser['s_head'] . '</a></li>';
                                                                    }
                                                                    ?>
                                                                </ul>
                                                            </div>
                                                        </div>
                                                    <?php } ?>
                                                </div>
                                            </div>
                                        </div>
                                    </li>
                                <?php } ?>


                                <li class="nav-item dropdown">
                                    <!-- <a class="nav-link dropdown-toggle" href="contact" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">Contact Us</a> -->
                                    <a class="nav-link dropdown-toggle" href="blogs" role="button" aria-haspopup="true" aria-expanded="false">Blogs</a>

                                    <!-- <div class="dropdown-menu small-menu">
                                        <div class="container-fluid">
                                            <div class="row">
                                                <div class="col-lg-12 col-12">
                                                    <div class="drop-down-items-container">
                                                        <ul class="list-style-none">    
                                                            <h6 class="sub-menu-heading">Our Feartured</h6>
                                                            <a href="contact"> Contact Us</a>
                                                            <li><a href="#">Blogs</a> 
                                                                <a href="#">Videos</a>
                                                                <a href="#">Gallery</a>
                                                            </li>                                                            
                                                        </ul>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div> -->
                                </li>


                                <li class="nav-item dropdown">
                                    <a class="nav-link dropdown-toggle" href="#" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"><i class="fas fa-2x fa-phone"></i></a>

                                    <div class="dropdown-menu small-menu">
                                        <div class="container-fluid">
                                            <div class="row">
                                                <div class="col-lg-12 col-12">
                                                    <div class="drop-down-items-container">
                                                        <ul class="list-style-none">
                                                            <!-- <h6 class="sub-menu-heading">Birds &amp; Pigeon Control</h6>-->
                                                            <li>
                                                                <a href="#"><i class="fas fa-phone"></i> 
                                                                    For Booking And Enquiries <br> Mobile : &nbsp;&nbsp;&nbsp;&nbsp;91 9806161974
                                                                    <!-- <br> Tolle Free : &nbsp;&nbsp;&nbsp;&nbsp; 18008916434-->
                                                                </a>
                                                            </li>
                                                            <li>
                                                                <a href="contact"><i class="fas fa-phone"></i> Contact Us</a>
                                                                <br>
                                                            </li>
                                                        </ul>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </li>
                            </ul>
                        </div>
                    </div>
                </nav>
                <!-- End Navbar Area -->

            </header>
            <!-- End Header Area -->
