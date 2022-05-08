<?php echo $header; ?>

<div id="layoutSidenav">
    <?php echo $layoutSidenav_nav; ?>

    <div id="layoutSidenav_content">
        <main>
            <div class="container-fluid">
                <h2 class="mt-4">Complaint Form</h2>
                <ol class="breadcrumb mb-4">
                    <li class="breadcrumb-item active">Complaint Form</li>
                </ol>

                <div class="card font-size-12">

                    <div class="card-body">
                        <div class="">                          
                            <?php echo form_open('Complaint/index'); ?>

                            <input type="hidden" name="complaint[ComplaintID]" value="<?php echo @$complaint->ComplaintID; ?>">

                            <div class="form-group">
                                <div class="row">
                                    <div class="col-md-3">
                                        <label>Customer Name</label>
                                        <input type="text" value="<?php echo @$complaint->CustomerName; ?>" class="form-control" name="complaint[CustomerName]" placeholder="Customer Name">
                                    </div>

                                    <div class="col-md-3">
                                        <label>Address</label>
                                        <input type="text" value="<?php echo @$complaint->Address; ?>" class="form-control" name="complaint[Address]" placeholder="Address">
                                    </div>

                                    <div class="col-md-3">
                                        <label>Service Name</label>
                                        <input type="text" value="<?php echo @$complaint->ServiceName; ?>" class="form-control" name="complaint[ServiceName]" placeholder="Service Name">
                                    </div>
                                    <div class="col-md-3">
                                        <label>Mobile</label>
                                        <input type="text" value="<?php echo @$complaint->Mobile; ?>" class="form-control" name="complaint[Mobile]" placeholder="Mobile">
                                    </div>                                    
                                </div>        	
                            </div>

                            <div class="row form-group">
                                <div class="col-md-3">
                                    <label>Amount</label>
                                    <input type="text" value="<?php echo @$complaint->Amount; ?>" class="form-control" name="complaint[Amount]" placeholder="Amount">                           
                                </div>
                                <div class="col-md-3">
                                    <label>Complaint Date: </label>
                                    <input type="text" value="<?php echo @$complaint->ComplaintDate; ?>" name="complaint[ComplaintDate]" class="form-control datetimepicker">
                                </div>
                                <div class="col-md-3">
                                    <label>Service Date</label>
                                    <input type="text" name="complaint[ServiceDate]" value="<?php echo @$complaint->ServiceDate; ?>" class="form-control datetimepicker">
                                </div>
                                <div class="col-md-3">
                                    <label>Technician Name</label>
                                    <input type="text" name="complaint[TechnicianName]" value="<?php echo @$complaint->TechnicianName; ?>" class="form-control">
                                </div>
                            </div>

                            <div class="row form-group">
                                <div class="col-md-3">
                                    <label>Attendee Complaint</label>
                                    <input type="text" name="complaint[AttendeeComplaint]" value="<?php echo @$complaint->AttendeeComplaint; ?>" class="form-control">
                                </div>
                                <div class="col-md-3">
                                    <label>Attended Complaint Date</label>
                                    <input type="text" name="complaint[AttendedComplaintDate]" value="<?php echo @$complaint->AttendedComplaintDate; ?>" class="form-control datetimepicker">
                                </div>

                                <div class="col-md-3">
                                    <label>Complaint Followup Date</label>
                                    <input type="text" name="complaint[ComplaintFollowupDate]" value="<?php echo @$complaint->ComplaintFollowupDate; ?>" class="form-control datetimepicker">
                                </div>
                                <div class="col-md-3">
                                    <label>Status</label>
                                    <input type="text" name="complaint[Status]" value="<?php echo @$complaint->Status; ?>" class="form-control">
                                </div>
                            </div>                           

                            <div class="row form-group">
                                <div class="col-md-6">
                                    <label>Comments</label>
                                    <input type="text" name="complaint[Comments]" value="<?php echo @$complaint->Comments; ?>" class="form-control">                              
                                </div>
                                <div class="col-md-2">
                                    <button type="submit" class="btn btn-success btn-block mt-24">Save</button>
                                </div>
                                <div class="col-md-2"></div>
                            </div>

                            <?php echo form_close(); ?>

                        </div>
                    </div>

                </div>

                <div class="card mb-4">
                    <div class="card-header"><i class="fas fa-table mr-1"></i>Complaint Details</div>
                   
                    <div class="card-body">
                        <div class="row">
                            <div class="col-md-2">
                                <label>Search by : </label>
                                <select name="" id="searchByYear" class="form-control">
                                    <option value="">---Select Year---</option>
                                    <?php 
                                        if(isset($year)){
                                            foreach($year as $key=>$row){
                                                if(is_array($row)){
                                                    foreach($row as $val){
                                                        echo "<option value='".$val."'>".$val."</option>";
                                                    }
                                                }
                                               
                                            }
                                        }
                                    ?>
                                </select>
                            </div>
                        </div>
                        <div class="table-responsive">
                            <table class="table table-bordered table-condensed" id="complaintDetailsdataTable" width="100%" cellspacing="0">
                                <thead>
                                    <tr class="font-size-13"> 
                                        <th>Action</th>
                                        <th>CustomerName</th>
                                        <th>Address</th>
                                        <th>ServiceName</th>
                                        <th>Mobile</th>
                                        <th>Amount</th>
                                        <th>ComplaintDate</th>
                                        <th>ServiceDate</th>
                                        <th>TechnicianName</th>
                                        <th>AttendeeComplaint</th>
                                        <th>AttendedComplaintDate</th>
                                        <th>ComplaintFollowupDate</th>
                                        <th>Status</th>                                        
                                        <th>Comments</th>
                                        <th>CreatedOn</th>
                                        <th>ModifiedOn</th>
                                    </tr>
                                </thead>

                                <tbody>
                                   
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
<?php echo $complaint_js_view; ?>
