<div id="layoutSidenav_nav">
    <nav class="sb-sidenav accordion sb-sidenav-dark" id="sidenavAccordion">
        <div class="sb-sidenav-menu">
            <div class="nav">
                <div class="sb-sidenav-menu-heading">Core</div>
                <a class="nav-link" href="<?php echo site_url('AdminDashboard/dashboard'); ?>">
                    <div class="sb-nav-link-icon"><i class="fas fa-tachometer-alt"></i></div>
                    Dashboard
                </a>

                <a class="nav-link" href="<?php echo site_url('Enquiry/index'); ?>">                                     
                    <div class="sb-nav-link-icon"><i class="fas fa-tachometer-alt"></i></div>
                    Enquiry Form
                </a>
               
                <a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#collapsePages" aria-expanded="false" aria-controls="collapsePages">
                    <div class="sb-nav-link-icon"><i class="fas fa-book-open"></i></div>
                    Report
                    <div class="sb-sidenav-collapse-arrow"><i class="fas fa-angle-down"></i></div>
                </a>
                <div class="collapse" id="collapsePages" aria-labelledby="headingTwo" data-parent="#sidenavAccordion">
                    <nav class="sb-sidenav-menu-nested nav accordion" id="sidenavAccordionPages">
                        <a class="nav-link" href="<?php echo site_url('OnlineEnquiry/'); ?>">Online Enquiry </a>
                        <a class="nav-link" href="<?php echo site_url('Report/searchFollowup'); ?>"> Search Follow Up </a>
                        <a class="nav-link" href="<?php echo site_url('Report/index/?report=todayservice'); ?>"> Today Schedule </a>
                        <a class="nav-link" href="<?php echo site_url('Report/index/?report=tomorrowservice'); ?>">Tomorrow Schedule</a>
                        <a class="nav-link" href="<?php echo site_url('Report/followup/?report=todayfollowup'); ?>">Today Folllow Up</a>
                        <a class="nav-link" href="<?php echo site_url('Report/followup/?report=monthlyfollowup'); ?>">Monthly Follow Up </a>
                        <a class="nav-link" href="#">Next visite Date</a>
                        <a class="nav-link" href="#">Monthly Service Done</a>
                        <a class="nav-link" href="#">Monthly Cancel Service</a>
                    </nav>
                </div>

                <a class="nav-link" href="<?php echo site_url('Complaint/index'); ?>">                                     
                    <div class="sb-nav-link-icon"><i class="fas fa-tachometer-alt"></i></div>
                    Complaint
                </a>

                <div class="sb-sidenav-menu-heading">Addons</div>
                <a class="nav-link" href="charts.html">
                    <div class="sb-nav-link-icon"><i class="fas fa-chart-area"></i></div>Charts
                </a>
                <a class="nav-link" href="tables.html">
                    <div class="sb-nav-link-icon"><i class="fas fa-table"></i></div>Tables
                </a>
            </div>
        </div>

    </nav>
</div>