<?php echo $header; ?>
<div id="layoutSidenav">
    <?php echo $layoutSidenav_nav; ?>

    <div id="layoutSidenav_content">
        <main>
            <div class="container-fluid">
                <h4 class="mt-4">Search Online Enqiry Details</h4>

                <div class="row mb-17 border-top-1 pt-10">
                    <form action="<?php echo site_url('OnlineEnquiry') ?>" method="post">
                        <div class="col-md-2">
                            <label>Start Date</label>
                            <input type="text" name="search[startdate]" value="<?php if (isset($startdate)) echo $startdate; ?>" class="form-control datepicker">
                        </div>
                        <div class="col-md-2">
                            <label>End Date</label>
                            <input type="text" name="search[enddate]" value="<?php if (isset($enddate)) echo $enddate; ?>" class="form-control datepicker">
                        </div>
                        <div class="col-md-2">
                            <label>User ID</label>
                            <input type="text" name="search[userid]" value="<?php if (isset($userid)) echo $userid; ?>" class="form-control">
                        </div>
                        <div class="col-md-2">
                            <label>Customer Name</label>
                            <input type="text" name="search[name]" value="<?php if (isset($name)) echo $name; ?>" class="form-control">
                        </div>
                        <div class="col-md-2">
                            <label>Mobile</label>
                            <input type="text" name="search[mobile]" value="<?php if (isset($mobile)) echo $mobile; ?>" class="form-control">
                        </div>
                        <div class="col-md-2">                       
                            <input type="submit" name="Search" value="Search" class="btn btn-info btn-sm mt-28">
                        </div>
                    </form>
                </div>

                <div class="card mb-4">
                    <div class="card-header"><i class="fas fa-table mr-1"></i>
                        <?php //echo $reporttype; ?>
                    </div>
                    <div class="card-body">
                        <div class="table-responsive">
                            <table class="table table-bordered table-condensed" id="dataTableGrid" width="100%" cellspacing="0">
                                <thead>
                                    <tr class="font-size-13">                                        
                                        <th>Action</th>
                                        <th>NextFollowupDate</th>
                                        <th>NextVisitDate</th>
                                        <th>UserName</th>
                                        <th>Mobile</th>
                                        <th>Address</th>
                                        <th>Email</th>
                                        <th>CustomerPriority</th>
                                        <th>LeadType</th>
<!--                                        <th>Amount</th>-->
                                        <!-- <th>Telecaller</th>-->
                                        <th>Comments</th>
                                        <th>CreatedDate</th>
                                    </tr>
                                </thead>

                                <tbody>
                                    <?php
                                    if (isset($tableRow)) {
                                        foreach ($tableRow as $row) {
                                            $nextFollowupDate = ($row['NextFollowupDate']) ? date('d-m-Y', strtotime($row['NextFollowupDate'])) : null;
                                            $nextVisiteDate = ($row['NextVisitDate']) ? date('d-m-Y', strtotime($row['NextVisitDate'])) : null
                                            ?>
                                            <tr  class="font-size-12">
                                                <td>
                                                    <a href="<?php echo site_url('Enquiry/usersDetails/' . $row['EnquiryID']) ?>">View</a> |
                                                    <a href="<?php echo site_url('Enquiry/index?edit=' . $row['EnquiryID']) ?>">Edit </a> 
                                                </td>
                                                <td><?php echo $nextFollowupDate; ?></td>
                                                <td><?php echo $nextVisiteDate; ?></td>
                                                <td><?php echo $row['UserName']; ?></td>
                                                <td><?php echo $row['Mobile']; ?></td>
                                                <td><?php echo $row['Address']; ?></td>
                                                <td><?php echo $row['Email']; ?></td>
                                                <td><?php echo $row['CustomerPriority']; ?></td>
                                                <td><?php echo $row['LeadType']; ?></td>
        <!--                                                <td><?php echo $row['Amount']; ?></td>-->
                                                <!-- <td><?php echo $row['Telecaller']; ?></td>-->
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
        <script>
            $(document).ready(function () {
                $(".datepicker").datetimepicker({
                    format: 'DD-MM-YYYY'
                });
            });
        </script>