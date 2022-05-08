<?php echo $header; ?>
<div id="layoutSidenav">
    <?php echo $layoutSidenav_nav; ?>

    <div id="layoutSidenav_content">
        <main>
            <div class="container-fluid">
                <h3 class="mt-4">Service Details</h3>

                <div class="row"> </div>

                <div class="card mb-4">
                    <div class="card-header"><i class="fas fa-table mr-1"></i>
                        <?php echo $reporttype; ?>
                    </div>
                    <div class="card-body">
                        <div class="table-responsive">
                            <table class="table table-bordered table-condensed" id="dataTableGrid" width="100%" cellspacing="0">
                                <thead>
                                    <tr class="font-size-13">                                        
                                        <th>Action</th>
                                        <th>User Name</th>
                                        <th>Mobile</th>
                                        <th>Email</th>
                                        <th>ServiceName</th>
                                        <th>Address</th>
                                        <th>ScheduleDate</th>
                                        <th>Technician</th>
                                        <th>Comments</th>
                                        <th>CreatedDate</th>                                        
                                    </tr>
                                </thead>

                                <tbody>
                                    <?php
                                    if (isset($tableRow)) {
                                        foreach ($tableRow as $row) {
                                            ?>
                                            <tr  class="font-size-12">
                                                <td>
                                                    <a href="<?php echo site_url('Enquiry/usersDetails/' . $row['EnquiryID']) ?>">View</a> |
                                                    <a href="<?php echo site_url('Enquiry/index?edit=' . $row['EnquiryID']) ?>">Edit </a> 
                                                </td>
                                                <td><?php echo $row['UserName']; ?></td>
                                                <td><?php echo $row['Mobile']; ?></td>
                                                <td><?php echo $row['Email']; ?></td>
                                                <td><?php echo $row['ServiceName']; ?></td>
                                                <td><?php echo $row['Address']; ?></td>
                                                <td><?php echo $row['ScheduleDate']; ?></td>
                                                <td><?php echo $row['Technician']; ?></td>                                                
                                                <td><?php echo $row['Comments']; ?></td>
                                                <td><?php echo $row['CreatedDate']; ?></td>                                                                                            
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