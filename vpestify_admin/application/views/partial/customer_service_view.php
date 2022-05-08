<div class="card-body font-size-12">
    <?php echo form_open("CustomerService/saveServiceDetais/" . $noOfService->EnquiryID); ?>
    <div class="row pb-10">
        <div class="col-md-12 text-right">
            <input type="submit" name="saveservice" value="Save" class="btn btn-info">
        </div>
    </div>
    <?php
    for ($x = 1; $x <= $noOfService->NoOfService; $x++) {
        ?>
        <div class="row form-group border-1 pb-10">
            <div class="card-header col-md-12">
                <label> <?php echo $x; ?> SERVICE</label>
            </div>

            <input type="hidden" name="service[<?php echo $x; ?>][CustomerServiceID]" value="<?php echo $noOfService->CustomerServiceID; ?>">
            <input type="hidden" name="service[<?php echo $x; ?>][ServiceID]" value="<?php echo $noOfService->ServiceID; ?>">

            <div class="col-md-2">
                <label>Service Name</label>
                <input type="text" disabled="" name="service[<?php echo $x; ?>][servicename]" value="<?php echo $noOfService->ServiceName; ?>" class="form-control height-30">
            </div>
            <div class="col-md-2">
                <label>Schedule Date</label>
                <input type="text" name="service[<?php echo $x; ?>][ScheduleDate]" class="datetimepicker form-control height-30">
            </div>

            <div class="col-md-2">
                <label>Telecaller</label>
                <input type="text" name="service[<?php echo $x; ?>][Telecaller]" class="form-control height-30">
            </div>            
            <div class="col-md-2">
                <label>Technician</label>
                <input type="text" name="service[<?php echo $x; ?>][Technician]" class="form-control height-30">
            </div>

            <div class="col-md-2">
                <label>SalesExecutive</label>
                <input type="text" name="service[<?php echo $x; ?>][SalesExecutive]" class="form-control height-30">
            </div>
            <div class="col-md-2">
                <label>Comments</label>
                <input type="text" name="service[<?php echo $x; ?>][Comments]" class="form-control height-30">
            </div>

            <div class="col-md-2">
                <label>TotalPayment</label>
                <input type="text" name="service[<?php echo $x; ?>][TotalPayment]" class="form-control height-30">
            </div>
            <div class="col-md-2">
                <label>Paid</label>
                <input type="text" name="service[<?php echo $x; ?>][Paid]" class="form-control height-30">
            </div>

            <div class="col-md-2">
                <label>Pending</label>
                <input type="text" name="service[<?php echo $x; ?>][Pending]" class="form-control height-30">
            </div>
            <div class="col-md-2">
                <label>PaymentMode</label>
                <input type="text" name="service[<?php echo $x; ?>][PaymentMode]" class="form-control height-30">
            </div>

            <div class="col-md-2">
                <label>PaidDate</label>
                <input type="text" name="service[<?php echo $x; ?>][PaidDate]" class="datetimepicker form-control height-30">
            </div>
            <div class="col-md-2 mt-20">
                <label>IsDone</label>
                <input type="checkbox" name="service[<?php echo $x; ?>][IsDone]" class="">
            </div>
            <div class="col-md-2">
                <label>CompleteDate</label>
                <input type="text" name="service[<?php echo $x; ?>][ServiceCompleteDate]" class="datetimepicker form-control height-30">
            </div>
        </div>
        <?php
    }
    ?>
    <?php echo form_close(); ?>
</div>