<?php echo $header; ?>

<div id="layoutSidenav">
    <?php echo $layoutSidenav_nav; ?>

    <div id="layoutSidenav_content">
        <main>
            <div class="container-fluid">
                <h2 class="mt-4">Enquiry Form</h2>
                <ol class="breadcrumb mb-4">
                    <li class="breadcrumb-item active">Enquiry Form</li>
                </ol>

                <div class="card font-size-12">

                    <div class="card-body">
                        <div class="">                          
                            <?php echo form_open('Enquiry/index'); ?>

                            <input type="hidden" name="enquiry[enquiryID]" value="<?php echo @$user->EnquiryID; ?>">

                            <div class="form-group">
                                <div class="row">
                                    <div class="col-md-3">
                                        <label>User Name</label>
                                        <input type="text" value="<?php echo @$user->UserName; ?>" class="form-control" name="enquiry[username]" placeholder="User Name">
                                    </div>

                                    <div class="col-md-3">
                                        <label>Company Name</label>
                                        <input type="text" value="<?php echo @$user->CompanyName; ?>" class="form-control" name="enquiry[companyname]" placeholder="User Name">
                                    </div>

                                    <div class="col-md-3">
                                        <label>Mobile</label>
                                        <input type="text" value="<?php echo @$user->Mobile; ?>" class="form-control" name="enquiry[mobile]" placeholder="Mobile">
                                    </div>
                                    <div class="col-md-3">
                                        <label>Email</label>
                                        <input type="email" value="<?php echo @$user->Email; ?>" class="form-control" name="enquiry[email]" placeholder="Email">
                                    </div>                                    
                                </div>        	
                            </div>

                            <div class="row form-group">
                                <div class="col-md-3">
                                    <label>Service Name</label></br>
                                    <select name="enquiry[servicename][]" id="leadSource" class="form-control" multiple="multiple">                                                                                       
                                        <?php
                                        if (is_array($serviceList)) {
                                            $serviceArr = explode(',', @$user->ServiceName);
                                            foreach ($serviceList as $val) {
                                                $selected = (in_array($val['ServiceName'], $serviceArr)) ? "selected" : '';
                                                echo "<option $selected value=" . $val['ServiceID'] . ">" . $val['ServiceName'] . "</option>";
                                            }
                                        }
                                        ?>                                            
                                    </select>                                        
                                </div>
                                <div class="col-md-3  mt-20">
                                    <label>Residential: </label>
                                    <input type="radio" <?php if (@$user->LeadType == 'residential') echo "checked"; ?> value="residential" class="" name="enquiry[leadtype]">
                                    <label>Commercial: </label>
                                    <input type="radio" <?php if (@$user->LeadType == 'commercial') echo "checked"; ?> value="commercial" class="" name="enquiry[leadtype]">
                                </div>
                                <div class="col-md-3">
                                    <label>Area Size</label>
                                    <input type="text" name="enquiry[areasize]" value="<?php echo @$user->AreaSize; ?>" class="form-control">
                                </div>
                                <div class="col-md-3">
                                    <label>Rate/SQFT</label>
                                    <input type="text" name="enquiry[RatePerSqft]" value="<?php echo @$user->RatePerSqft; ?>" class="form-control">
                                </div>
                            </div>

                            <div class="row form-group">
                                <div class="col-md-3">
                                    <label>Amount</label>
                                    <input type="text" name="enquiry[amount]" value="<?php echo @$user->Amount; ?>" class="form-control">
                                </div>
                                <div class="col-md-3">
                                    <label>Followup Date</label>
                                    <input type="text" name="enquiry[followupdate]" value="<?php echo @$user->EnquiryFollowupDate; ?>" class="form-control datetimepicker">
                                </div>

                                <div class="col-md-3">
                                    <label>visit Date</label>
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

                            </div>

                            <div class="row form-group">
                                <div class="col-md-3">
                                    <label>Telecaller</label>
                                    <input type="text" value="<?php echo @$user->Telecaller; ?>" class="form-control" name="enquiry[telecaller]" placeholder="Telecaller">
                                </div>
                                <div class="col-md-3">
                                    <label>Sales Executive</label>
                                    <input type="text" value="<?php echo @$user->SalesExecutive; ?>" class="form-control" name="enquiry[SalesExecutive]" placeholder="Sales Executive">
                                </div>

                                <div class="col-md-3">
                                    <label>Technician</label>
                                    <input type="text" value="<?php echo @$user->Technician; ?>" class="form-control" name="enquiry[technician]" placeholder="Technician">
                                </div>

                                <div class="col-md-3">
                                    <label>City</label>
                                    <input type="text" value="<?php echo @$user->City; ?>" class="form-control" name="enquiry[city]" placeholder="City">
                                </div>  

                            </div>

                            <div class="row form-group">
                                <div class="col-md-3">
                                    <label>Lead Priority</label>
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

                                <div class="col-md-3">
                                    <label>Comments</label>
                                    <input type="test" value="<?php echo @$user->Message; ?>" class="form-control" name="enquiry[comments]" placeholder="Comments">
                                </div>

                            </div>

                            <div class="row form-group">
                                <div class="col-md-8"></div>
                                <div class="col-md-2">
                                    <button type="submit" class="btn btn-success btn-block mt-24">Save</button>
                                </div>
                            </div>

                            <?php echo form_close(); ?>

                        </div>
                    </div>

                </div>

                <div class="card mb-4">
                    <div class="card-header"><i class="fas fa-table mr-1"></i>Enquiry Details</div>
                    <div class="card-body">
                        <div class="table-responsive">
                            <table class="table table-bordered table-condensed" id="dataTable" width="100%" cellspacing="0">
                                <thead>
                                    <tr class="font-size-13"> 
                                        <th>Action</th>
                                        <th>UserName</th>
                                        <th>CompanyName</th>
                                        <th>Mobile</th>
                                        <th>Amount</th>
                                        <th>Service</th>
                                        <th>VisiteDate</th>
                                        <th>LeadSource</th>
                                        <th>LeadType</th>
                                        <th>Priority</th>
                                        <th>Telecaller</th>
                                        <th>SalesExecutive</th>
                                        <th>Technician</th>                                        
                                        <th>Address</th>
                                        <th>CreatedDate</th>                                                                              
                                    </tr>
                                </thead>

                                <tbody>
                                    <?php
                                    if (isset($getEnquiry)) {
                                        foreach ($getEnquiry as $row) {
                                            ?>
                                            <tr class="font-size-12">  
                                                <td>
                                                    <a href="<?php echo site_url('Enquiry/usersDetails/' . $row['EnquiryID']) ?>">View</a> |
                                                    <a href="<?php echo site_url('Enquiry/index?edit=' . $row['EnquiryID']) ?>">Edit </a> |                                                    
                                                </td>
                                                <td><?php echo $row['UserName']; ?></td>
                                                <td><?php echo $row['CompanyName']; ?></td>
                                                <td><?php echo $row['Mobile']; ?></td>
                                                <td><?php echo $row['Amount']; ?></td>
                                                <td><?php echo $row['ServiceName']; ?></td>
                                                <td><?php echo $row['VisitDate']; ?></td>
                                                <td><?php echo $row['LeadSource']; ?></td>
                                                <td><?php echo $row['LeadType']; ?></td>
                                                <td><?php echo $row['CustomerPriority']; ?></td>                                               
                                                <td><?php echo $row['Telecaller']; ?></td>
                                                <td><?php echo $row['SalesExecutive']; ?></td>
                                                <td><?php echo $row['Technician']; ?></td>
                                                <td><?php echo $row['Address']; ?></td>
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
