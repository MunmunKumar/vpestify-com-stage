<?php echo $header; ?>
<div id="layoutSidenav">
    <?php echo $layoutSidenav_nav; ?>

    <div id="layoutSidenav_content">
        <main>
            <div class="container-fluid">
                <h3 class="mt-4">Service Details</h3>

                <div class="card mb-4">
                    <!--  Customer Details-->
                    <div class="card-body">
                        <div class="row">
                            <div class="col-md-7">
                                <?php echo form_open('CustomerService/includeCustomerService/' . $enquiryID); ?>
                                <input type="hidden" name="enquiryid" value="<?php echo $enquiryID; ?>">
                                <div class="col-md-12 mb-2  text-right">
                                    <input type="submit" name="save_service" value="EditService" class="btn btn-sm btn-primary">
                                </div>                              

                                <div class="table-responsive">
                                    <table class="table table-bordered table-condensed" id="dataTable" width="100%" cellspacing="0">
                                        <thead>
                                            <tr>
                                                <th>Service Name</th>
                                                <th>Created Date</th>
                                                <th>Include</th>                                                
                                                <th>No Of Services</th>                                                
                                                <th>Details</th>
                                            </tr>
                                        </thead>

                                        <tbody>
                                            <?php
                                            if (isset($cusService)) {
                                                foreach ($cusService as $row) {
                                                    $selected = (isset($row['EnquiryID'])) ? 'checked' : "";
                                                    $NoOfService = (isset($row['NoOfService'])) ? $row['NoOfService'] : "";
                                                    ?>
                                                    <tr>
                                                        <td><?php echo $row['ServiceName']; ?></td>
                                                        <td><?php if (isset($row['CreatedDate'])) echo $row['CreatedDate']; ?></td>
                                                        <td class="text-center"><?php echo "<input $selected type='checkbox' name='$row[ServiceID][service]' value='$row[ServiceID]'>"; ?></td>
                                                        <td class="text-center width-117"><?php echo "<input class='text-center width-117' type='number' name='$row[ServiceID][NoOfService]' value='" . $NoOfService . "'>"; ?></td>
                                                        <td class="text-center"><span serviceID="<?php echo $row['ServiceID'] ?>" class="btn btn-xs btn-info customer-service">Details</span></td>
                                                    </tr>
                                                    <?php
                                                }
                                            }
                                            ?>
                                        </tbody>
                                    </table>
                                </div>
                                <?php echo form_close(); ?>
                            </div>

                            <div class="col-md-5 border-left-1" id="customer-service-details">
                                jfhgkjghkjh    
                            </div>


                        </div>
                    </div>

                </div>
            </div>

        </main>

        <?php echo $footer; ?>
        <?php echo $customjs; ?>