<div class="modal-dialog modal-lg modal-dialog-centered">
    <!-- Modal content-->
    <div class="modal-content">
        <div class="modal-header">
            <h4 class="modal-title">Order Payment Details </h4>
            <span class="font-bold"> &nbsp;&nbsp;Customer: <?php echo $users->UserName; ?>
                Mobile : <?php echo $users->Mobile; ?>
                UserID : <?php echo $users->UserID; ?>
            </span>
            <button type="button" class="close" data-dismiss="modal">&times;</button>
        </div>
        <?php echo form_open('CustomerService/updateCustomerDetails/' . $EnquiryID); ?>                   
        <div class="modal-body" id="modal-body-container">
            <div class="table-responsive">
                <table class="table table-bordered table-condensed" id="paymentDetailsTable" width="100%" cellspacing="0">
                    <thead>
                        <tr class="font-size-13">
                            <th>TotalOrderValue</th>
                            <th>AmountToBePay</th>
                            <th>PaidAmount</th>
<!--                             <th>Paid</th>-->
                            <th>Pending</th>
                            <th>PaidDate</th>
                            <th>PaymentMode</th>
                            <th>UpdatedDate</th>
                        </tr>
                    </thead>

                    <tbody>
                        <?php
                        if (isset($orderpayment)) {
                            foreach ($orderpayment as $row) {
                                ?>
                                <tr class="font-size-13">
                                    <td><?php echo $row['TotalOrderValue']; ?></td>
                                    <td><?php echo ($row['PayAmount']) + ($row['Pending']); ?></td>
                                    <td><?php echo $row['PayAmount']; ?></td> 
<!--                                     <td><?php echo $row['Paid']; ?></td> -->
                                    <td><?php echo $row['Pending']; ?></td>                                    
                                    <td><?php echo $row['PaidDate']; ?></td>  
                                    <td><?php echo $row['PaymentMode']; ?></td>
                                    <td><?php echo $row['UpdatedDate']; ?></td>
                                </tr>
                                <?php
                            }
                        }
                        ?>
                    </tbody>
                </table>
            </div>


            <div class="table-responsive">
                <table class="table table-bordered table-condensed" id="paymentDetailsTable" width="100%" cellspacing="0">
                    <thead>
                        <tr class="font-size-13">
                            <th>Sarvice</th>
                            <th>NoOfService</th>
                            <th>TotalValue</th>
                            <th>AmountToBePay</th>
                            <th>PaidAmount</th>
<!--                            <th>Paid</th>-->
                            <th>Pending</th>
                            <th>PaidDate</th>
                            <th>PaymentMode</th>
                            <th>UpdatedDate</th>
                            <!-- <th>CreatedDate</th>-->
                        </tr>
                    </thead>

                    <tbody>
                        <?php
                        if (isset($servicePaymentDetails)) {
                            foreach ($servicePaymentDetails as $row) {
                                ?>
                                <tr class="font-size-13">
                                    <td><?php echo $row['ServiceName']; ?></td>
                                    <td><?php echo $row['NoOfService']; ?></td> 
                                    <td><?php echo $row['TotalPayment']; ?></td>
                                    <td><?php echo ($row['PayAmount']) + ($row['Pending']); ?></td>
                                    <td><?php echo $row['PayAmount']; ?></td> 
<!--                                    <td><?php echo $row['Paid']; ?></td>  -->
                                    <td><?php echo $row['Pending']; ?></td>  
                                    <td><?php echo $row['PaidDate']; ?></td>  
                                    <td><?php echo $row['PaymentMode']; ?></td>  
                                    <td><?php echo $row['UpdatedDate']; ?></td>  
                                    <!--   <td><?php echo $row['CreatedDate']; ?></td>-->
                                </tr>
                                <?php
                            }
                        }
                        ?>
                    </tbody>
                </table>
            </div>
        </div>

        <div class="modal-footer">           
            <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
        </div>
    </div>
    <?php echo form_close(); ?>

</div>
<style>
    #modal-body-container{
        height: 325px;
        overflow: scroll;
    }
    .font-bold{
        font-weight: bold;
    }
</style>
<script type="text/javascript">
    $(document).ready(function () {
        //$('#paymentDetailsTable').DataTable();
    });
</script>