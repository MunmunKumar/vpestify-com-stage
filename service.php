<?php
include_once("admin-panel/include/config.php");
$request = basename($_SERVER['REQUEST_URI']);
$url_post = $conn->real_escape_string(htmlspecialchars($request));
$Sql_Service = $conn->query("SELECT * FROM ((tbl_service
        INNER JOIN tbl_category ON tbl_service.s_sub_link = tbl_category.head_url)
        INNER JOIN tbl_menu ON tbl_service.s_menu_link = tbl_menu.link) WHERE s_head_url='$url_post'");
$Row_Service = $Sql_Service->fetch_assoc();

$title = $Row_Service['p_title'];
$keyword = $Row_Service['p_keyword'];
$description = $Row_Service['p_description'];
$page = "home";

include_once("include/header.php");
if ($Sql_Service->num_rows > 0) {
    ?>
    <section class="banner">
        <img class="inner-banner-135" src="<?php echo $images . 'inner-banner/' . $Row_Service['s_file3']; ?>" width="100%">
    </section>
    <nav aria-label="breadcrumb ">
        <ol class="breadcrumb blue-grey lighten-4 mb-5">
            <li class="breadcrumb-item"><a class="black-text" href="./">Home</a><i class="fas fa-angle-double-right mx-2" aria-hidden="true"></i></li>
            <li class="breadcrumb-item"><?php echo $Row_Service['name']; ?><i class="fas fa-angle-double-right mx-2" aria-hidden="true"></i></li>
            <li class="breadcrumb-item"><?php echo $Row_Service['head']; ?><i class="fas fa-angle-double-right mx-2" aria-hidden="true"></i></li>
            <li class="breadcrumb-item active"><?php echo $Row_Service['s_head']; ?></li>

        </ol>
    </nav>

    <div class="service-individual-container">
        <div class="container">
            <div class="row">
                <div class="col-md-8 col-xs-12">
                    <div class="mobile-number-container">
                        <p class="query-line"> For our services or query call us on <span><i class="fa fa-phone"></i> +91 9806161974 </span></p>
                    </div>

                    <div class="row mt-3">
                        <div class="col-md-12 col-xs-12">
                            <div class="services-content-container">
                                <h3 class="in-head"><img src="<?php echo $images . 'icons/' . $Row_Service['s_file1'] ?>" width="30" alt=""> <?php echo $Row_Service['s_head']; ?></h3>
                                <div>
                                    <?php
                                    if (!empty($Row_Service['s_file2'])) {
                                        echo'<div class="flot">
                                                <img src="' . $images . $Row_Service['s_file2'] . '" alt="' . $Row_Service['s_head'] . '" title="' . $Row_Service['s_head'] . '">
                                            </div>';
                                    }
                                    ?>
                                    <div>
                                        <?php
                                        $htmlDom = new DOMDocument;
                                        $htmlDom->loadHTML($Row_Service['s_des']);
                                        $imageTags = $htmlDom->getElementsByTagName('img');
                                        $extractedImages = array();
                                        foreach ($imageTags as $imageTag) {
                                            $old_src = $imageTag->getAttribute('src');
                                            $oldSRC = substr($old_src, 3);
                                            $new_src_url = $oldSRC;
                                            $imageTag->setAttribute('src', $new_src_url);
                                        }
                                        echo $htmlDom->saveHTML();
                                        ?>

                                    </div>
                                    <div class="mobile-number-container">
                                        <p class="query-line"> For our services or query call us on <span><i class="fa fa-phone"></i> +91 9806161974 </span></p>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>

                    <!-- Nav tabs -->
                    <ul class="nav nav-tabs mt-5" role="tablist">
                        <?php
                        if (!empty($Row_Service['s_service'])) {
                            echo'<li class="nav-item">
                                    <a class="nav-link" data-toggle="tab" href="#home">Service</a>
                                </li>';
                        }
                        if (!empty($Row_Service['s_after_service'])) {
                            echo'<li class="nav-item">
                                    <a class="nav-link" data-toggle="tab" href="#menu1">After Service</a>
                                </li>';
                        }
                        if (!empty($Row_Service['s_offer'])) {
                            echo'<li class="nav-item">
                                    <a class="nav-link" data-toggle="tab" href="#menu2">Offers</a>
                                </li>';
                        }
                        if (!empty($Row_Service['s_whu_us'])) {
                            echo'<li class="nav-item">
                                    <a class="nav-link" data-toggle="tab" href="#menu3">Why Us</a>
                                </li>';
                        }
                        ?>
                    </ul>

                    <!-- Tab panes -->
                    <div class="tab-content mb-5">
                        <?php
                        if (!empty($Row_Service['s_service'])) {
                            echo'<div id="home" class="container tab-pane  fade"><br>
                                    <h3>Service</h3>
                                    <p>' . $Row_Service['s_service'] . '</p>
                                     <p class="query-line"> For our services or query call us on <span><i class="fa fa-phone"></i> +91 9806161974 </span></p>
                                </div>';
                        }
                        if (!empty($Row_Service['s_after_service'])) {
                            echo'<div id="menu1" class="container tab-pane fade"><br>
                                    <h3>After Service</h3>
                                    <p>' . $Row_Service['s_after_service'] . '</p>
                                     <p class="query-line"> For our services or query call us on <span><i class="fa fa-phone"></i> +91 9806161974 </span></p>
                                </div>';
                        }
                        if (!empty($Row_Service['s_offer'])) {
                            echo'<div id="menu2" class="container tab-pane fade"><br>
                                    <h3>Offers</h3>
                                    <p>' . $Row_Service['s_offer'] . '</p>
                                     <p class="query-line"> For our services or query call us on <span><i class="fa fa-phone"></i> +91 9806161974 </span></p>
                                </div>';
                        }
                        if (!empty($Row_Service['s_whu_us'])) {
                            echo'<div id="menu3" class="container tab-pane fade"><br>
                                    <h3>Why Us</h3>
                                    <p>' . $Row_Service['s_whu_us'] . '</p>
                                     <p class="query-line"> For our services or query call us on <span><i class="fa fa-phone"></i> +91 9806161974 </span></p>
                                </div>';
                        }
                        ?>
                    </div>

                </div>

                <div class="col-md-4  col-xs-12">
                    <?php
                    include_once("include/sidebar.php");
                    if (!empty($Row_Service['s_file4'])) {
                        echo'<div class="img-container mtb-2">
                                <img src="' . $images . $Row_Service['s_file4'] . '" alt="' . $Row_Service['s_head'] . '">
                            </div>';
                    }
                    if (!empty($Row_Service['s_file5'])) {
                        echo'<div class="img-container mtb-2">
                                <img src="' . $images . $Row_Service['s_file5'] . '" alt="' . $Row_Service['s_head'] . '">
                            </div>';
                    }
                    ?>
                </div>
            </div>
        </div>

        <!-- Our Services -->
        <section class="services-inside">
            <div class="container">
                <h2 class="heading">
                    Our Services
                </h2>
                <?php include_once("include/same-nav.php"); ?>
            </div>
        </section>
    </div>

    <!-- Contact Us -->
    <?php
    include_once("include/down-form.php");
    include_once("include/footer.php");
} else {
    include_once("404.php");
}
?>
