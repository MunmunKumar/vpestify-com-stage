<div id="customer-service-details_block1" class="customer-service-details_block border-top-1 mb-10 pt-10">
    <div class="row pb-16">
        <input type="hidden" name="service[1][CustomerServiceDetailsID]" value="<?php echo $editService->CustomerServiceDetailsID ?>" class="form-control height-30">
        <div class="col-md-2">
            <label for="">ScheduleDate</label>
            <input type="text" name="service[1][ScheduleDate]" value="<?php echo $editService->ScheduleDate ?>" class="datetimepicker form-control height-30" required="">
        </div>
        <div class="col-md-2">
            <label for="">Telecaller</label>
            <input type="text" name="service[1][Telecaller]" value="<?php echo $editService->Telecaller ?>" class="form-control height-30">
        </div>
        <div class="col-md-2">
            <label for="">Technician</label>
            <input type="text" name="service[1][Technician]" value="<?php echo $editService->Technician ?>" class="form-control height-30">
        </div>
        <div class="col-md-2">
            <label for="">SalesExecutive</label>
            <input type="text" name="service[1][SalesExecutive]" value="<?php echo $editService->SalesExecutive ?>" class="form-control height-30">
        </div>
        
        <div class="col-md-4">
            <label for="">Comments</label>
            <input type="text" name="service[1][Comments]" value="<?php echo $editService->Comments ?>" class="form-control height-30">
        </div>
<!--        <div class="col-md-2 mt-24">
            <label for=""> IsDone </label> 
            <input type="checkbox" name="service[1][IsDone]" <?php if ($editService->IsServiceDone == '1') echo "checked" ?>>
        </div>
        <div class="col-md-2">
            <label for="">ServiceCompleteDate</label>
            <input type="text" name="service[1][ServiceCompleteDate]" value="<?php echo $editService->ServiceCompleteDate ?>" class="datetimepicker form-control height-30">
        </div>-->
    </div>
</div>
<script type="text/javascript">
    $(document).ready(function () {
        var serviceid = '<?php echo $editService->ServiceID; ?>';
        $('#serviceid').val(serviceid);

        $(".datetimepicker").datetimepicker({
            format: 'YYYY-MM-DD'
        });
        // number only
        $('.onlyNumberDecimal').keypress(function(event) {	   
	    if ((event.which != 46 || $(this).val().indexOf('.') != -1) && (event.which < 48 || event.which > 57)) {
	      event.preventDefault();
	    }
	});
    });
</script>
