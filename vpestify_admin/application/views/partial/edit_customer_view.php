<div class="container-fluid font-size-12">

    <input type="hidden" name="enquiry[enquiryID]" value="<?php echo @$user->EnquiryID; ?>">

    <div class="form-group">
        <div class="row">
            <div class="col-md-3">
                <label>User Name</label>
                <input type="text" value="<?php echo @$user->UserName; ?>" class="form-control" name="enquiry[username]" placeholder="User Name">
            </div>
            <div class="col-md-3">
                <label>Company Name</label>
                <input type="text" value="<?php echo @$user->CompanyName; ?>" class="form-control" name="enquiry[companyname]" placeholder="Company Name">
            </div>

            <div class="col-md-3">
                <label>Mobile</label>
                <input type="number" value="<?php echo @$user->Mobile; ?>" class="form-control" name="enquiry[mobile]" placeholder="Mobile">
            </div>
            <div class="col-md-3">
                <label>Email</label>
                <input type="email" value="<?php echo @$user->Email; ?>" class="form-control" name="enquiry[email]" placeholder="Email">
            </div>

        </div>        	
    </div>

    <div class="row form-group">
        <div class="col-md-3  mt-24">
            <label>Reside: </label>
            <input type="radio" <?php if (@$user->LeadType == 'residential') echo "checked"; ?> value="residential" class="" name="enquiry[leadtype]">
            <label>Commer: </label>
            <input type="radio" <?php if (@$user->LeadType == 'commercial') echo "checked"; ?> value="commercial" class="" name="enquiry[leadtype]">
        </div>
        <div class="col-md-3">
            <label>Area Size</label>
            <input type="text" name="enquiry[areasize]" value="<?php echo @$user->AreaSize; ?>" class="form-control">
        </div>
        <div class="col-md-3">
            <label>Amount</label>
            <input type="text" name="enquiry[amount]" value="<?php echo @$user->Amount; ?>" class="form-control">
        </div>
        <div class="col-md-3">
            <label>Rate/SQFT</label>
            <input type="text" name="enquiry[RatePerSqft]" value="<?php echo @$user->RatePerSqft; ?>" class="form-control">
        </div>
    </div>        	

    <div class="row form-group">
        <div class="col-md-3">
            <label>Visit Date</label>
            <input type="text" name="enquiry[visitdate]" value="<?php echo @$user->EnquiryVisitDate; ?>" class="form-control datetimepicker">
        </div> 
        <div class="col-md-3">
            <label>Lead Source</label>
            <select class="form-control" name="enquiry[leadsource]">
                <option value="">---Select Priority---</option>
                <?php
                if (is_array($leadsource_list)) {
                    foreach ($leadsource_list as $key => $val) {
                        $selcted = ($key == @$user->LeadSource) ? "selected" : '';
                        echo "<option " . $selcted . " value=" . $key . ">" . $val . "</option>";
                    }
                }
                ?>
            </select>
        </div>          
        <div class="col-md-3">
            <label>Telecaller</label>
            <input type="text" value="<?php echo @$user->Telecaller; ?>" class="form-control" name="enquiry[telecaller]" placeholder="Telecaller">
        </div>
        <div class="col-md-3">
            <label>Sales Executive</label>
            <input type="text" value="<?php echo @$user->SalesExecutive; ?>" class="form-control" name="enquiry[SalesExecutive]" placeholder="Sales Executive">
        </div>

    </div>

    <div class="row form-group">        
        <div class="col-md-3">
            <label>Technician</label>
            <input type="text" value="<?php echo @$user->Technician; ?>" class="form-control" name="enquiry[technician]" placeholder="Technician">
        </div>
        <div class="col-md-3">
            <label>City</label>
            <input type="text" value="<?php echo @$user->City; ?>" class="form-control" name="enquiry[city]" placeholder="City">
        </div> 
        <div class="col-md-3">
            <label>Lead Source</label>
            <select class="form-control" name="enquiry[CustomerPriority]">
                <option value="">---Select Priority---</option>
                <?php
                if (is_array($priority_list)) {
                    foreach ($priority_list as $key => $val) {
                        $selcted = ($key == @$user->CustomerPriority) ? "selected" : '';
                        echo "<option " . $selcted . " value=" . $key . ">" . $val . "</option>";
                    }
                }
                ?>
            </select>
        </div>  
        <div class="col-md-3">
            <label>State</label>
            <input type="test" value="<?php echo @$user->State; ?>" class="form-control" name="enquiry[state]" placeholder="State">
        </div>
        <div class="col-md-3">
            <label>Address</label>
            <input type="text" value="<?php echo @$user->Address; ?>" class="form-control" name="enquiry[address]" placeholder="Address">
        </div>                                              
    </div>
    <script type="text/javascript">
        $(document).ready(function () {
            $(".datetimepicker").datetimepicker({
                format: 'YYYY-MM-DD'
            });
            // number only
            $('.onlyNumberDecimal').keypress(function (event) {
                if ((event.which != 46 || $(this).val().indexOf('.') != -1) && (event.which < 48 || event.which > 57)) {
                    event.preventDefault();
                }
            });
        });
    </script>
</div>

