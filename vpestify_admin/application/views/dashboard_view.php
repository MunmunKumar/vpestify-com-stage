<?php echo $header; ?>
<div id="layoutSidenav">
    <?php echo $layoutSidenav_nav; ?>

    <div id="layoutSidenav_content">
        <main>
            <div class="container-fluid">
                <h2 class="mt-4">Dashboard</h2>

                <div class="row">
                    <div class="col-md-3">
                        <div class="card bg-primary text-white mb-4">
                            <div class="card-body">Online enquiry (<?php echo $totalOnline->total ?>)</div>
                            <div class="card-footer d-flex align-items-center justify-content-between">
                                <a class="small text-white stretched-link" href="<?php echo site_url('OnlineEnquiry/'); ?>">View Details</a>
                                <div class="small text-white"><i class="fas fa-angle-right"></i></div>
                            </div>
                        </div>
                    </div>
                    
                    <div class="col-md-3">
                        <div class="card bg-primary text-white mb-4">
                            <div class="card-body">Today Schedule (<?php echo $totalToday->total ?>)</div>
                            <div class="card-footer d-flex align-items-center justify-content-between">
                                <a class="small text-white stretched-link" href="<?php echo site_url('Report/index/?report=todayservice'); ?>">View Details</a>
                                <div class="small text-white"><i class="fas fa-angle-right"></i></div>
                            </div>
                        </div>
                    </div>

                    <div class="col-md-3">
                        <div class="card bg-primary text-white mb-4">
                            <div class="card-body">Tomorrow Schedule (<?php echo $tomorrowService->total ?>)</div>
                            <div class="card-footer d-flex align-items-center justify-content-between">
                                <a class="small text-white stretched-link" href="<?php echo site_url('Report/index/?report=tomorrowservice'); ?>">View Details</a>
                                <div class="small text-white"><i class="fas fa-angle-right"></i></div>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-3">
                        <div class="card bg-primary text-white mb-4">
                            <div class="card-body">Today Followup (<?php echo $todayFolloupDate['total'] ?>)</div>
                            <div class="card-footer d-flex align-items-center justify-content-between">
                                <a class="small text-white stretched-link" href="<?php echo site_url('Report/followup/?report=todayfollowup'); ?>">View Details</a>
                                <div class="small text-white"><i class="fas fa-angle-right"></i></div>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-3">
                        <div class="card bg-primary text-white mb-4">
                            <div class="card-body">Monthly Followup (<?php echo $monthlyFolloupDate['total'] ?>)</div>
                            <div class="card-footer d-flex align-items-center justify-content-between">
                                <a class="small text-white stretched-link" href="<?php echo site_url('Report/followup/?report=monthlyfollowup'); ?>">View Details</a>
                                <div class="small text-white"><i class="fas fa-angle-right"></i></div>
                            </div>
                        </div>
                    </div>
                </div>

                <div class="card mb-4">
                    <div class="card-header"><i class="fas fa-table mr-1"></i>Enquiry Details</div>
                    <div class="card-body">
                        <div class="table-responsive">
                            <table class="table table-bordered table-condensed" id="usersDetailsdataTable" width="100%" cellspacing="0">
                                <thead>
                                    <tr class="font-size-13">                                        
                                        <th>Action</th>
                                        <th>UserName</th>
                                        <th>CompanyName</th>
                                        <th>Mobile</th>
                                        <th>Email</th>
                                        <th>ServiceName</th>
                                        <th>Address</th>
                                        <th>CreatedDate</th>
                                        <th>UpdatedDate</th>
                                    </tr>
                                </thead>

                                <tbody>
                                    <?php
                                    if (isset($getEnquiry)) {
                                        foreach ($getEnquiry as $row) {
                                            ?>
                                            <tr  class="font-size-12">
                                                <td>
                                                    <a href="<?php echo site_url('Enquiry/usersDetails/' . $row['EnquiryID']) ?>">View</a> |
                                                    <a href="<?php echo site_url('Enquiry/index?edit=' . $row['EnquiryID']) ?>">Edit </a> 
                                                </td>
                                                <td><?php echo $row['UserName']; ?></td>
                                                <td><?php echo $row['CompanyName']; ?></td>
                                                <td><?php echo $row['Mobile']; ?></td>
                                                <td><?php echo $row['Email']; ?></td>
                                                <td><?php echo $row['ServiceName']; ?></td>
                                                <td><?php echo $row['Address']; ?></td>
                                                <td><span class='hidden'></span><?php echo $row['CreatedDate']; ?></td>
                                                <td><?php echo $row['UpdatedDate']; ?></td>                                                
                                            </tr>
                                            <?php
                                        }
                                    }
                                    ?>
                                </tbody>
                            </table>
                        </div>
                    </div>
                </div>
            </div>
        </main>

        <?php echo $footer; ?>
        <?php echo $datatable_js; ?>