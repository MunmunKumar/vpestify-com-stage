<div class="table-responsive">
    <table class="table table-bordered table-condensed" id="dataTable" width="100%" cellspacing="0">
        <thead>
            <tr class="font-size-13">
                <th>Action</th>
                <th>ScheduleDate</th>
                <th>Telecaller</th>
                <th>Technician</th>
                <th>SalesExecutive</th>
                <th>IsServiceDone</th>               
                <th>CompletedDate</th>
                <th>Comments</th>                
                <th>CreatedDate</th>
            </tr>
        </thead>

        <tbody>
            <?php
            if (isset($cusServiceGrid)) {
                foreach ($cusServiceGrid as $row) {
                    $colorsuccess = ($row['IsServiceDone'] == '1') ? 'text-success' : '';
                    $colordanger = ($row['IsServiceDone'] == '2') ? 'text-danger' : '';
                    $colorinfo = ($row['IsServiceDone'] == '3') ? 'text-info' : '';
                    $hiddenOption = (date('Y-m-d', strtotime($row['ScheduleDate'])) > date("Y-m-d")) ? 'hidden' : '';
                    ?>
                    <tr id="service_details_row<?php echo $row['CustomerServiceDetailsID']; ?>" class="font-size-13 <?php echo $colordanger . $colorsuccess . $colorinfo; ?>">
                        <td>
                            <span class="btn btn-xs btn-primary" onclick="editCustomerService(<?php echo $row['CustomerServiceDetailsID']; ?>)">Edit</span>
                        </td>
                        <td id="ScheduleDate_<?php echo $row['CustomerServiceDetailsID']; ?>"><?php echo date('d-m-Y', strtotime($row['ScheduleDate'])); ?></td>
                        <td><?php echo $row['Telecaller']; ?></td>
                        <td><?php echo $row['Technician']; ?></td>                        
                        <td><?php echo $row['SalesExecutive']; ?></td>
                        <td class="text-center">
                            <select class="isServiceDone" onchange="updateCustomerServiceStatus(<?php echo $row['CustomerServiceDetailsID']; ?>, this.value, <?php echo $row['TotalServiceOrderID']; ?>, <?php echo $row['ServiceID']; ?>)">
                                <option <?php if ($row['IsServiceDone'] == '0') echo "selected"; ?> value="0">No</option>                               
                                <option class="<?php echo $hiddenOption ?>" <?php if ($row['IsServiceDone'] == '1') echo "selected"; ?> value="1">Done</option>
                                <option <?php if ($row['IsServiceDone'] == '2') echo "selected"; ?> value="2">Cancel</option>
                                <option <?php if ($row['IsServiceDone'] == '3') echo "selected"; ?> value="3">Reschedule</option>
                            </select>
                        </td>
                        <td><?php echo $row['ServiceCompleteDate']; ?></td>
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

