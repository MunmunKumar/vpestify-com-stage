<?php echo $header; ?>
<div id="layoutSidenav">
    <?php echo $layoutSidenav_nav; ?>

    <div id="layoutSidenav_content">
        <main>
            <div class="container-fluid font-size-12">
                <h3 class="mt-4"><?php echo $title; ?></h3>

                <div class="card mb-4">
                    <div class="card-header"><i class="fas fa-table mr-1"></i>
                        <label>Customer Details</label>
                    </div>
                    <div class="card-body">
                        <div class="row">
                            <div class="col-md-4">
                                <dl>
                                    <label class="bold width-100">User Name: </label><span> <?php echo $users->UserName ?></span><br>
                                    <label class="bold width-100">Mobile: </label><span> <?php echo $users->Mobile ?></span><br>
                                    <label class="bold width-100">Address: </label><span> <?php echo $users->Address ?></span><br>                                    
                                </dl>                                
                            </div>
                            <div class="col-md-4">
                                <dl>
                                    <!--  <label class="bold width-100">Amount: </label><span> <?php echo $users->Amount ?></span><br>-->
                                    <label class="bold width-100">LeadSource: </label><span> <?php echo $users->LeadSource ?></span><br>
                                    <label class="bold width-100">LeadType: </label><span> <?php echo $users->LeadType ?></span><br>                                    
                                </dl>                                
                            </div>
                            <div class="col-md-4">
                                <dl>                                    
                                    <label class="bold width-100">City: </label><span> <?php echo $users->City ?></span><br>
                                    <label class="bold width-100">Service: </label><span> <?php echo $users->ServiceName ?></span><br>
                                </dl>                                
                            </div>
                        </div>
                    </div>
                </div>

                <div class="card mb-4">

                    <div class="card-header"><i class="fas fa-table mr-1"></i>
                        <span class="bold"><?php echo $title; ?> : </span>
                    </div>
                    <div class="card-body">

                        <?php //echo form_open('ServiceOrder/saveNewServiceOrder/' . $enquiryID); ?>
                        <div class="row">
                            <form action="<?php echo site_url('ServiceOrder/saveNewServiceOrder/' . $enquiryID) ?>" method="post" id="order_form">
                                <div class="col-md-12">
                                    <input type="hidden" name="order[serviceOrderID]" value="<?php echo @$cusService['serviceOrder']['ServiceOrderID'] ?>">
                                    <div class="col-md-2 form-group">
                                        <label>Total Order Value</label>
                                        <input type="text" readonly="" id="totalOrderValue" name="order[totalOrderValue]" value="<?php echo @$cusService['serviceOrder']['TotalOrderValue'] ?>" class="form-control" required="">                                    
                                    </div>
                                    <div class="col-md-2 form-group">
                                        <label>Total Paid</label>
                                        <input type="hidden" readonly="" id="orderPaidAmountOriginal" value="<?php echo @$cusService['serviceOrder']['Paid'] ?>">
                                        <input type="text" readonly="" id="orderPaidAmount" name="order[paidAmount]" value="<?php echo @$cusService['serviceOrder']['Paid'] ?>" class="form-control">
                                    </div>
                                    <div class="col-md-2 form-group">
                                        <label>Total Pending</label>
                                        <input type="hidden" readonly="" id="orderPendingAmountOriginal" name="order[pendingAmount]" value="<?php echo @$cusService['serviceOrder']['Pending'] ?>" class="form-control">
                                        <input type="text" readonly="" id="orderPendingAmount" name="order[pendingAmount]" value="<?php echo @$cusService['serviceOrder']['Pending'] ?>" class="form-control">
                                    </div>
                                    <div class="col-md-2 form-group">
                                        <label>Pay</label>
                                        <input type="text" readonly="" id="orderPay" name="order[pay]" onchange="calculateAmount(this.value)" class="form-control onlyNumberDecimal">                                    
                                    </div>
                                    <div class="col-md-2 form-group">
                                        <label>PaymentMode</label>
                                        <input type="text" readonly="" name="order[paymentMode]" value="<?php echo @$cusService['serviceOrder']['PaymentMode'] ?>" class="form-control">
                                    </div>
                                    <div class="col-md-2 form-group">
                                        <label>Paid Date</label>
                                        <input type="text" name="order[PaidDate]"  class="form-control datetimepicker">
                                    </div>
                                </div>

                                <div class="col-md-12">
                                    <ol class="breadcrumb mb-4">
                                        <li class="breadcrumb-item bold">Include Service</li>
                                    </ol>
                                </div>

                                <div class="col-md-12">
                                    <input type="hidden" name="enquiryid" value="<?php echo $enquiryID; ?>">
                                    <div class="table-responsive">
                                        <table class="table table-bordered table-condensed" width="100%" cellspacing="0">
                                            <thead>
                                                <tr class="font-size-13">
                                                    <th>ServiceName</th>
                                                    <th>Include</th>                                                
                                                    <th>NoOfServices</th>                                                
                                                    <th>TotalPayment</th>                                               
                                                    <th>Paid</th>
                                                    <th>Pending</th>
                                                    <th>Pay</th>
                                                    <th>PaymentMode</th>
                                                    <th>PaidDate</th>
                                                </tr>
                                            </thead>
                                            <tbody>
                                                <?php
                                                if (isset($cusService)) {
                                                    $i = 1;
                                                    foreach ($cusService['totalServiceOrder'] as $row) {
                                                        $checked = (isset($row['TotalServiceOrderID'])) ? "checked" : '';
                                                        ?>
                                                        <tr>
                                                            <?php echo "<input type='hidden' name='orderservice[$row[ServiceID]][TotalServiceOrderID]' value='" . @$row[TotalServiceOrderID] . "' class='text-center'>"; ?>
                                                            <td><?php echo $row['ServiceName']; ?></td>                                                        
                                                            <td class="text-center"><?php echo "<input type='checkbox' id='includeService$i' $checked name='orderservice[$row[ServiceID]][service]' value='$row[ServiceID]' alt='$i' class='text-center serviceinclude'>"; ?></td>
                                                            <td class="text-center"><?php echo "<input type='number' id='NoOfService$i' name='orderservice[$row[ServiceID]][NoOfService]' value='" . @$row[NoOfService] . "' class='text-center width-117' >"; ?></td>                                                        
                                                            <td class="text-center"><?php echo "<input type='text' id='serviceTotalAmount$i' onchange='checkTotalAmount(this.value, " . $i . ")' name='orderservice[$row[ServiceID]][TotalPayment]' value='" . @$row[TotalPayment] . "' alt='$i' class='text-center width-117 serviceTotalPayment onlyNumberDecimal'>"; ?></td>
                                                            <td class="text-center">
                                                                <?php echo "<input type='hidden' readonly='' id='servicePaidOriginal$i' value='" . @$row[Paid] . "'>"; ?>
                                                                <?php echo "<input type='text' readonly='' id='servicePaid$i' name='orderservice[$row[ServiceID]][Paid]' value='" . @$row[Paid] . "' class='text-center width-117 totalServicePaid'>"; ?>
                                                            </td>
                                                            <td class="text-center">
                                                                <?php echo "<input type='hidden' id='servicePendingOriginal$i' value='" . @$row[Pending] . "'>"; ?>
                                                                <?php echo "<input type='text' readonly id='servicePending$i' name='orderservice[$row[ServiceID]][Pending]' value='" . @$row[Pending] . "' class='text-center width-117 servicePendingAmount'>"; ?>
                                                            </td>
                                                            <td class="text-center">
                                                                <?php echo "<input type='hidden' id='servicePayOriginal$i' class='text-center width-117 servicePayOriginal'>"; ?>
                                                                <?php echo "<input type='text' id='servicePay$i' onchange='calculateServiceAmount(this.value, " . $i . ")'  name='orderservice[$row[ServiceID]][Pay]' class='text-center width-117 onlyNumberDecimal servicePay'>"; ?>
                                                            </td>
                                                            <td class="text-center"><?php echo "<input type='text' name='orderservice[$row[ServiceID]][PaymentMode]' value='" . @$row[PaymentMode] . "' class='text-center width-117'>"; ?></td>
                                                            <td class="text-center"><?php echo "<input type='text' name='orderservice[$row[ServiceID]][PaidDate]' class='text-center datetimedisplay width-117'>"; ?></td>                                                        
                                                        </tr>
                                                        <?php
                                                        $i++;
                                                    }
                                                }
                                                ?>
                                            </tbody>
                                        </table>
                                    </div>

                                </div>
                            </form>
                            <div class="col-md-12 form-group">
                                <input type="submit" id="order_save" value="Save Order" class="btn btn-primary mt-10">                                
                            </div> 
                        </div>

                        <?php //echo form_close(); ?>
                    </div>


                </div>
            </div>

        </main>

        <?php echo $footer; ?>
        <?php echo $serviceorderjs; ?>
        <script type="text/javascript">
            $(document).ready(function () {

            });
        </script>
