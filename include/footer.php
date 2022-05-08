<?php
include_once("admin-panel/include/config.php");
$Sql_Menu1 = $conn->query("SELECT * FROM `tbl_menu`");
?>
<!-- Start Footer Area -->
<section class="footer-section extra-pt">

    <div class="container">
        <div class="row">
            <div class="col-lg-4 col-md-6 col-sm-6">
                <div class="single-footer-widget">
                    <div class="logo">
                    <!--  <a class="footer-logo" href="./"><img src="newimg/logo/logo.JPG" alt="logo"></a> -->
                        <a class="footer-logo footer-logo-text" href="./">vPestify</a><br>&nbsp;
                        <span class="white-color">Here Easy To Being Hygiene</span>
                        <p>We are highly experienced & well established pest control services provider Company in Delhi, India. We are specialized in reactive as well as proactive and preventative pest control. To help protect you and your family’s health.</p>
                    </div>
                    
                    <ul class="social-links">
                        <li><a href="https://www.facebook.com/vpestifycom" target="_blank"><i class="fab fa-facebook-f"></i></a></li>
                        <li><a href="https://twitter.com/vpestify" target="_blank"><i class="fab fa-twitter"></i></a></li>
                        <li><a href="#" target="_blank"><i class="fab fa-youtube"></i></a></li>
                        <li><a href="https://www.linkedin.com/in/vpestify-services-5b8176199/" target="_blank"><i class="fab fa-linkedin-in"></i></a></li>
                    </ul>

                </div>
            </div>

            <div class="col-lg-2 col-md-6 col-sm-6">
                <div class="single-footer-widget pl-3 ml-3">
                    <h3>Pages</h3>

                    <ul class="footer-nav-list">
                        <li><a href="./">Home</a></li>
                        <li><a href="about">About vPestify Control</a></li>
                        <li><a href="#">Pest Control Services</a></li>
                        <li><a href="#">Birds</a></li>
                        <!--  <li><a href="#">Our Services</a></li>-->
                        <li><a href="contact">Contact Us</a></li>
                    </ul>
                </div>
            </div>

            <div class="col-lg-3 col-md-6 col-sm-6">
                <div class="single-footer-widget">
                    <h3>Contact Info</h3>

                    <ul class="footer-info-list">
                        <li class="font-18">Head Office: </li>
                        <li>  C-37, Chanakya Palace 1,  Uttam Nagar, Delhi -110059 </li>
                         <li><a href="tel:9806161974">Contact On +91 9806161974</a></li>
                         <li><a href="mailto:vpestify@gmail.com">vpestify@gmail.com</a></li>
                       <li>24 Hours Office Open</li>
                        <li> Monday To Sunday </li>
                    </ul>
                </div>
            </div>

            <div class="col-lg-3 col-md-6 col-sm-6">
                <div class="single-footer-widget">
                    <h3>Office</h3>
                    <ul class="working-hours"> 
                    
                     <li class="font-18">Branch Office: </li>
                        <li>Bhardwaj Complex, Ground Floor, Jharsa Village, Sector 39, Gurgaon - 122022, (HR)</li>

                        <li>  Nikunj Bhawan, jhijhor, Sector-53, Noida, <br> UP -201307 </li>  
                        <li>I-605/7, Hari Nagar, Main, Jaitpur Rd, Extension, Badarpur, Delhi, 110044</li>
                        <li>SD/25, Ground Floor, Shastri Nagar, Ghaziabad, UP 201002</li>
                    </ul>
                    
                </div>
            </div>
        </div>
    </div>

    <div class="copyright-area">
        <div class="container">
            <div class="row">
                <div class="col-sm-4 col-12">
                    <p>Copyright 2019 © all rights reserved.</p>
                </div>
                <div class="col-sm-8 col-12">
                    <!--<a href="https://www.webxpertindia.com" target="_blank" class="link-down">Designed and Promoted by Web Expert India - ( A Unit of EWS Technologies Pvt. Ltd. )-->
                    <!--</a>-->
                </div>
            </div>

        </div>
    </div>
</section>

<div class="sidenav">
    <ul>
        <li>
            <a href="./"><i class="fas fa-home"></i> home</a>
        </li>

        <li>
            <a href="#">about vpestify control</a>
            <ul>
                <li><a href="#"> <i class="fas fa-backward"></i> Back</a></li>
                <li>
                    <a href="#">who we are</a>
                    <ul>
                        <li><a href="about">about vpestify control servies</a></li>
                        <li><a href="health-and-safety">health and safety</a></li>
                        <li><a href="our-expert-technician">our expert technician</a></li>
                        <li><a href="#">get a free inspection</a></li>
                    </ul>
                </li>
                <li>
                    <a href="#">office address</a>
                    <ul>
                        <li><a href="#"> Bhardwaj Complex, Ground <br> Floor, Jharsa Village, Sector 39, <br> Gurgaon - 122022, (HR)</a></li>
                        <li><a href="#"> C-37, Chanakya Palace 1,  Uttam Nagar, <br> Delhi -110059 </a></li>
                        <li><a href="#"> Nikunj Bhawan, jhijhor, Sector-53, Noida, <br> UP -201307 </a></li>
                        <li><a href="#"> I-605/7, Hari Nagar, Main, Jaitpur Rd, Extension, Badarpur, Delhi, 110044</a></li>
                        
                        <li><a href="#">SD/25, Ground Floor, Shastri Nagar, Ghaziabad, UP 201002 </a></li>

                    </ul>
                </li>
            </ul>
        </li>

        <?php
        while ($Row_Menu1 = $Sql_Menu1->fetch_array()) {
            $M_Id1 = $Row_Menu1['link'];
            $Sql_Sub1 = $conn->query("SELECT * FROM `tbl_category` WHERE menu_name='$M_Id1'");
            ?>
            <li>
                <a href="#"><?php echo $Row_Menu1['name']; ?></a>

                <ul>
                    <li><a href="#"> <i class="fas fa-backward"></i> Back</a></li>
                    <?php
                    while ($Row_Sub1 = $Sql_Sub1->fetch_array()) {
                        $S_Id1 = $Row_Sub1['head_url'];
                        $Sql_Ser1 = $conn->query("SELECT * FROM `tbl_service` WHERE s_menu_link='$M_Id1' && s_sub_link='$S_Id1'");
                        ?>
                        <li><a href="#"><?php echo $Row_Sub1['head']; ?></a>
                            <ul>
                                <?php
                                while ($Row_Ser1 = $Sql_Ser1->fetch_array()) {
                                    echo'<li><a href="' . $Row_Ser1['s_head_url'] . '">' . $Row_Ser1['s_head'] . '</a></li>';
                                }
                                ?>
                            </ul>
                        </li>
                    <?php } ?>
                </ul>
            </li>
        <?php } ?>

        <li>
            <a href="#">our services</a>

            <ul>
                <li><a href="#"> <i class="fas fa-backward"></i> Back</a></li>
                <li><a href="pest-control-services">pest control serviecs</a></li>
                <li><a href="residential-pest-control">Residential Pest control</a></li>
                <li><a href="commercial-pest-control">Commercial Pest Control</a></li>
                <li><a href="why-vpestify">why vpestify</a></li>
                <li><a href="pest-prevention-tips">pest prevention tips</a></li>
            </ul>
        </li>

        <li>
            <a href="contact">contact us</a>
        </li>
    </ul>
</div>

<div class="fix-footer">
    <p><a onclick="gtag('event', 'Click', {'event_category': 'Call'}); gtag_call_conversion();" href="tel:+91 9806161974"><span class="call"><i class="fa fa-phone" aria-hidden="true"></i> Call</span></a></p>
    <p><a onclick="gtag('event', 'Click', {'event_category': 'Whatsapp'}); gtag_whatsapp_conversion();" href="https://api.whatsapp.com/send?phone=+919806161974&amp;text=Hello,%20I%20am%20interested%20in%20Vpestify's%20services%20!%20Please%20get%20in%20touch%E2%80%A6"><span class="whatsUp"><i class="fab fa-whatsapp" aria-hidden="true"></i> Whatsapp</span></a></p>
</div>
<!-- End Footer Area -->

<!-- jQuery Min JS -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script src="assets/js/jquery-3.2.1.slim.min.js"></script>
<!-- Popper Min JS -->
<!--<script src="assets/js/popper.min.js"></script>-->
<!-- Bootstrap Min JS -->
<script src="assets/js/bootstrap.min.js"></script>
<!-- Owl Carousel Min JS -->
<script src="assets/js/owl.carousel.min.js"></script>
<!-- WOW Min JS -->
<script src="assets/js/wow.min.js"></script>
<!-- Waypoints Min JS -->
<script src="assets/js/waypoints.min.js"></script>
<!-- CounterUp Min JS -->
<script src="assets/js/jquery.counterup.min.js"></script>

<!--<script src="lg/src/js/lightgallery.js"></script>-->
<!--<script src="lg/modules/lg-thumbnail.js"></script>
<script src="lg/modules/lg-fullscreen.js"></script>-->
<!-- Active JS -->
<script src="assets/js/active.js"></script>  
<script src="assets/js/contact.js"></script>        

<!-- WhatsHelp.io widget -->
<script type="text/javascript">
        (function () {
            var options = {
                whatsapp: "9806161974", // WhatsApp number
                call: "9806161974", // Call phone number
                call_to_action: "Message us", // Call to action
                button_color: "#A8CE50", // Color of button
                position: "left", // Position may be 'right' or 'left'
                order: "whatsapp,call", // Order of buttons
            };
            var proto = document.location.protocol,
                    host = "getbutton.io",
                    url = proto + "//static." + host;
            var s = document.createElement('script');
            s.type = 'text/javascript';
            s.async = true;
            s.src = url + '/widget-send-button/js/init.js';
            s.onload = function () {
                WhWidgetSendButton.init(host, proto, options);
            };
            var x = document.getElementsByTagName('script')[0];
            x.parentNode.insertBefore(s, x);
        })();

</script>
<script async src="https://www.googletagmanager.com/gtag/js?id=UA-159215695-1"></script>
<script>
        window.dataLayer = window.dataLayer || [];
        function gtag() {
            dataLayer.push(arguments);
        }
        gtag('js', new Date());

        gtag('config', 'UA-159215695-1');
</script>

</div>

<script>
    $(document).ready(function () {
        Tawk_API.onLoad = function () {
            Tawk_API.maximize();
        };
    });
</script>
<!--Start of Tawk.to Script-->
<script type="text/javascript">
    var Tawk_API = Tawk_API || {}, Tawk_LoadStart = new Date();
    (function () {
        var s1 = document.createElement("script"), s0 = document.getElementsByTagName("script")[0];
        s1.async = true;
        s1.src = 'https://embed.tawk.to/5fecb76bdf060f156a925543/1eqqaovv0';
        s1.charset = 'UTF-8';
        s1.setAttribute('crossorigin', '*');
        s0.parentNode.insertBefore(s1, s0);
    })();
</script>
<!--End of Tawk.to Script-->
</body>


</html>