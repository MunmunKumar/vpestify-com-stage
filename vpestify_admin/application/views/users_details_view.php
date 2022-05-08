<?php echo $header; ?>
<div id="layoutSidenav">
    <?php echo $layoutSidenav_nav; ?>

    <div id="layoutSidenav_content">
        <main>
            <div class="container-fluid font-size-12">
                <h3 class="mt-4">Customer Details</h3>                
                <div class="card mb-4">
                    <div class="card-header"><i class="fas fa-table mr-1"></i>
                        <span class="bold">Schedule On : </span><?php echo $users->orderSchedule ?> <span class="color-red"> | </span>
                        <span class="bold">Priority : </span>                        
                        (<?php echo $users->CustomerPriority; ?>)
                        </span>

                    </div>
                    <div class="card-body">
                        <div class="row">
                            <div class="col-md-4">
                                <dl>                                   
                                    <label class="bold width-100">User Name: </label><span> <?php echo $users->UserName ?></span><br>
                                    <label class="bold width-100">Company Name: </label><span> <?php echo $users->CompanyName ?></span><br>
                                    <label class="bold width-100">Mobile: </label><span> <?php echo $users->Mobile ?></span><br>
                                    <label class="bold width-100">Address: </label><span> <?php echo $users->Address ?></span><br>                                    
                                    <label class="bold width-100">Amount: </label><span> <?php echo $users->Amount ?></span><br>
                                    <label class="bold width-100">LeadSource: </label><span> <?php echo $users->LeadSource ?></span><br>
                                    <label class="bold width-100">LeadType: </label><span> <?php echo $users->LeadType ?></span><br>
                                    <label class="bold width-100">City: </label><span> <?php echo $users->City ?></span><br>
                                    <label class="bold width-100">Service: </label><span> <?php echo $users->ServiceName ?></span><br>

                                </dl>
                                <a href="<?php echo site_url('ServiceOrder/createServiceOrder/' . $users->EnquiryID); ?>" class="btn btn-primary">Create New Order</a>
                            </div>
                            <div class="col-md-3 border-right-1">
                                <dl> 
                                    <label class="bold width-100">Email: </label><span> <?php echo $users->Email ?></span><br>
                                    <label class="bold width-100">CreatedDate: </label><span> <?php echo $users->CreatedDate ?></span><br>
                                    <label class="bold width-100">UpdatedDate: </label><span> <?php echo $users->UpdatedDate ?></span><br>
                                    <label class="bold width-100">Telecaller: </label><span> <?php echo $users->Telecaller ?></span><br>
                                    <label class="bold width-100">Technician: </label><span> <?php echo $users->Technician ?></span><br>
                                    <label class="bold width-100">SalesExecutive: </label><span> <?php echo $users->SalesExecutive ?></span><br>
                                    <label class="bold width-100">State: </label><span> <?php echo $users->State ?></span><br>

                                    <label class="bold width-100">Follow up Date: </label><span> <?php echo $users->FollowupDate ?></span><br>
                                    <label class="bold width-100">Visite Date: </label><span> <?php echo $users->VisitDate ?></span><br>
                                </dl>
                                <button type="button" onclick="editCustomerDetails(<?php echo $users->EnquiryID ?>)" id="editCustomerDetails" class="btn btn-sm btn-primary"> Edit </button>                                
                            </div>

                            <div class="col-md-3 form-group">
                                <?php echo form_open("Enquiry/usersDetails/" . $users->EnquiryID); ?>

                                <?php
                                $comments = (isset($users->Comments)) ? $users->Comments : $users->Message;
                                $FollowupDate = (isset($users->NextFollowupDate)) ? $users->NextFollowupDate : $users->EnquiryFollowupDate;
                                $NextVisitDate = (isset($users->NextVisitDate)) ? $users->NextVisitDate : $users->EnquiryVisitDate;
                                ?>
                                <div class="form-group">
                                    <label>Comment</label>
                                    <input type="hidden" name="enquiryid" value="<?php echo $users->EnquiryID ?>">
                                    <input type="text" name="message" value="<?php echo $comments ?>" class="form-control">
                                    <label>Next Followup Date</label>
                                    <input type="text" name="FollowupDate" value="<?php echo $FollowupDate ?>" class="form-control datetimepicker">
                                </div>
                            </div> 
                            <div class="col-md-2 form-group">
                                <div class="form-group">
                                    <label>Next Visit Date</label>
                                    <input type="text" name="NextVisitDate" value="<?php echo $NextVisitDate ?>" class="form-control datetimepicker">
                                </div>
                                <input type="submit" value="Save" class="btn btn-xs btn-primary mt-10">
                                <?php echo form_close(); ?>
                            </div> 
                        </div>
                    </div>

                    <div class="card-header"><i class="fas fa-table mr-1"></i>
                        <label>Service Details</label>
                    </div>
                    <div class="card-body">
                        <div class="row mb-10">
                            <div class="col-md-10">
                                <!-------Service details accordian----------->
                                <div class="panel-group" id="accordion" role="tablist" aria-multiselectable="true">
                                    <?php
                                    if (isset($order) && is_array($order)) {
                                        $inc = 1;
                                        foreach ($order['serviceOrder'] as $row) {
                                            ?>
                                            <div class="panel panel-default">
                                                <div class="panel-heading" role="tab" id="heading<?php echo $inc; ?>">
                                                    <h4 class="panel-title">
                                                        <a role="button" data-toggle="collapse" data-parent="#accordion" href="#collapse<?php echo $inc; ?>" aria-expanded="true" aria-controls="collapse<?php echo $inc; ?>">
                                                            <i class="more-less glyphicon glyphicon-plus"></i>
                                                            <?php echo $inc . ' Order'; ?>
                                                        </a>
                                                    </h4>
                                                </div>
                                                <div id="collapse<?php echo $inc; ?>" class="panel-collapse collapse" role="tabpanel" aria-labelledby="heading<?php echo $inc; ?>">
                                                    <div class="panel-body">
                                                        <button onclick="orderPaymentDetails(<?php echo $row['EnquiryID'] . ', ' . $row['ServiceOrderID']; ?>)" class="btn btn-info">Payment Details</button>
                                                        <a href="<?php echo site_url('ServiceOrder/createServiceOrder/' . $row['EnquiryID'] . '?editOrder=' . $row['ServiceOrderID']); ?>" class="btn btn-info">Edit Order</a>
                                                        <div class="mt-10">
                                                            <ol class="breadcrumb mb-4">
                                                                <li class="breadcrumb-item bold">Service Details</li>
                                                            </ol>
                                                        </div>
                                                        <?php
                                                        if (is_array($order['totalServiceOrder'])) {
                                                            foreach ($order['totalServiceOrder'] as $val) {
                                                                if ($row['ServiceOrderID'] == $val['ServiceOrderID']) {
                                                                    $ServiceName = $val['ServiceName'];
                                                                    $TotalServiceOrderID = $val['TotalServiceOrderID'];
                                                                    $totalSchedule = $val['totalSchedule'];
                                                                    ?>
                                                                    <button id="servicenamebtn<?php echo $TotalServiceOrderID; ?>" onclick='getServiceDetails("<?php echo $ServiceName ?>", "<?php echo $TotalServiceOrderID ?>", "<?php echo $val['ServiceID'] ?>")' class="btn btn-info deactive-btn"><?php echo $val['ServiceName'] . ' (' . $val['NoOfService'] . '/' . $totalSchedule . ')'; ?></button>
                                                                    <?php
                                                                }
                                                            }
                                                        }
                                                        ?>                                                        
                                                    </div>
                                                </div>
                                            </div>

                                            <?php
                                            $inc++;
                                        }
                                    }
                                    ?>
                                </div><!-- panel-group -->
                            </div>

                            <div class="col-md-12" id="service-details-block">

                            </div>
                        </div>                        
                    </div>

                    <!--  Add Service Details-->
                    <div class="card-header"><i class="fas fa-table mr-1"></i>
                        <label>Add Service Details</label>
                    </div>
                    <div class="card-body">
                        <div class="row">
                            <div class="card-body font-size-12">
                                <?php echo form_open("CustomerService/addServiceScheduleDetails/" . $users->EnquiryID); ?>
                                <div class="row pb-10">
                                    <div class="col-md-3">
                                        <input type="hidden" name="enquiryid" value="<?php echo $users->EnquiryID; ?>">
                                        <input type="hidden" name="serviceid" id="serviceid" class="form-control">
                                        <div id="servicename" class="form-control"></div>
                                        <input type="hidden" name="totalServiceOrderID" id='totalServiceOrderID' class="form-control">
                                    </div>
                                    <div class="col-md-9 text-right">
                                        <input type="submit" name="saveservice" value="Save" class="btn btn-info">
                                    </div>
                                </div>
                                <div id="customer-service-details_container">

                                </div>
                                <div class="col-md-12 text-right">
                                    <span id="add_more_service" class="btn btn-info">Add More Service</span>
                                </div>                               
                                <?php echo form_close(); ?>
                            </div>
                        </div>
                    </div>

                    <div class="card-header mb-10"><i class="fas fa-table mr-1"></i>
                        <label>Comments Details</label>
                    </div>
                    <div class="card-body">                        
                        <div class="row">
                            <div class="col-md-8 border-right-1">
                                <div class="table-responsive">
                                    <table class="table table-bordered table-condensed" id="dataTable" width="100%" cellspacing="0">
                                        <thead>
                                            <tr class="font-size-13">
                                                <th>Comments</th>
                                                <th>FollowupDate</th>
                                                <th>Next Visit Date</th>
                                                <th>CreatedDate</th>                                             
                                            </tr>
                                        </thead>

                                        <tbody>
                                            <?php
                                            if (isset($msg)) {
                                                foreach ($msg as $row) {
                                                    ?>
                                                    <tr class="font-size-13">
                                                        <td><?php echo $row['Comments']; ?></td>
                                                        <td><?php echo $row['NextFollowupDate']; ?></td> 
                                                        <td><?php echo $row['NextVisitDate']; ?></td> 
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

                </div>
            </div>

        </main>

        <?php echo $footer; ?>
        <?php echo $customjs; ?>

        <!-- Modal popup for edit customer details-->
        <div id="editCustomerModal" class="modal in" tabindex="-1" role="dialog">
            <div class="modal-dialog modal-lg modal-dialog-centered">
                <!-- Modal content-->
                <div class="modal-content">
                    <div class="modal-header">
                        <h4 class="modal-title">Customer Edit Form</h4>
                        <button type="button" class="close" data-dismiss="modal">&times;</button>
                    </div>
                    <?php echo form_open('CustomerService/updateCustomerDetails/' . $users->EnquiryID); ?>                   
                    <div class="modal-body" id="modal-body-container">

                    </div>

                    <div class="modal-footer">
                        <button type="submit" class="btn btn-success">Save</button>
                        <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
                    </div>
                </div>
                <?php echo form_close(); ?>

            </div>
        </div>


        <!-- Modal popup for customerPaymentDetailsModal details-->
        <div id="customerPaymentDetailsModal" class="modal in" tabindex="-1" role="dialog">

        </div>

        <!-- Modal popup for Update service status-->
        <div id="updateServiceStatus" class="modal in" tabindex="-1" role="dialog">
            <div class="modal-dialog modal-lg modal-dialog-centered">
                <!-- Modal content-->
                <div class="modal-content">
                    <div class="modal-header">
                        <h4 class="modal-title">Update Service Status </h4>
                        <button type="button" class="close" data-dismiss="modal">&times;</button>
                    </div>
                    <?php echo form_open('CustomerService/updateServiceStatus/' . $users->EnquiryID); ?>                   
                    <div class="modal-body" id="modalUpdateServiceStatus">

                    </div>

                    <div class="modal-footer">           
                        <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
                    </div>
                </div>
                <?php echo form_close(); ?>

            </div>

        </div>