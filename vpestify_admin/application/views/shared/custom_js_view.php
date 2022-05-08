
<script type="text/javascript">
    $(document).ready(function () {
        $(document).on('click', '.customer-service', function () {
            var serviceID = $(this).attr('serviceID');
            var enquiryID = $(this).attr('enquiryID');

            if (serviceID == '' || enquiryID == '') {
                alert('Please include service to the user');
                return false;
            }
            $.ajax({
                type: 'POST',
                url: '<?php echo base_url() ?>index.php/CustomerService/customerServiceDetails/',
                data: {'enquiryID': enquiryID, serviceID: serviceID},
                dataType: 'html',
                success: function (data) {
                    if (data !== null) {
                        $("#customer-service-details").html(data);
                    }
                }
            });
        });

        // Add Municipal Lien Search
        $("#add_more_service").button().click(function () {
            add_service_details_form();
        });
        //Add Municipal Lien Serach
        if ($(".customer-service-details_block").length === 0) {
            add_service_details_form();
        }

        // number only
        $('.onlyNumberDecimal').keypress(function (event) {
            if ((event.which != 46 || $(this).val().indexOf('.') != -1) && (event.which < 48 || event.which > 57)) {
                event.preventDefault();
            }
        });

        // Edit customer details - open popup
        $(document).on('click', '#editCustomerDetails', function () {
            $("#editCustomerModal").modal();
            $("#editCustomerModal").appendTo("body");
        });


        // Toggle plus minus icon on show hide of collapse element
        function toggleIcon(e) {
            $(e.target)
                    .prev('.panel-heading')
                    .find(".more-less")
                    .toggleClass('glyphicon-plus glyphicon-minus');
        }
        $('.panel-group').on('hidden.bs.collapse', toggleIcon);
        $('.panel-group').on('shown.bs.collapse', toggleIcon);

    });

    function getServiceDetails(serviceName, totalServiceOrderID, serviceID) {
        $('.deactive-btn').removeClass('active-btn');
        $('#totalServiceOrderID').val(totalServiceOrderID);
        $('#servicename').html(serviceName);
        $('#serviceid').val(serviceID);

        $('#servicenamebtn' + totalServiceOrderID).addClass('active-btn');

        $('#preloader').show();
        $.ajax({
            type: 'POST',
            url: '<?php echo base_url() ?>index.php/CustomerService/customerServiceDetailsGrid/',
            data: {'totalServiceOrderID': totalServiceOrderID, 'serviceID': serviceID},
            dataType: 'html',
            success: function (data) {
                if (data !== null) {
                    $("#service-details-block").html(data);
                    $('#preloader').hide();
                }
            }
        });
    }


    function editCustomerDetails(enquryid) {
        $("#editCustomerModal").modal();
        $("#editCustomerModal").appendTo("body");
        $('#preloader').show();
        $.ajax({
            type: 'POST',
            url: '<?php echo base_url() ?>index.php/CustomerService/editCustomerDetails/',
            data: {'enquiryID': enquryid},
            dataType: 'html',
            success: function (data) {
                if (data !== null) {
                    $("#modal-body-container").html(data);
                    $('#preloader').hide();
                }
            }
        });
    }

    function delete_entity(id) {
        console.log('delete entity');
        console.log(id);
        $("#customer-service-details_block" + id).detach();
    }

    // Add service details form
    function add_service_details_form() {
        if (serviceId === undefined) {
            var serviceId = ($(".customer-service-details_block").length) + 1;
        } else {
            serviceId++;
        }

        var out = '<div id="customer-service-details_block' + serviceId + '" class="customer-service-details_block border-top-1 mb-10 pt-10">'
                + '<div class="row pb-16">'
                + '<div class="col-md-2">'
                + '<label for="">ScheduleDate</label>'
                + '<input type="text" name="service[' + serviceId + '][ScheduleDate]" class="datetimepicker form-control height-30" required>'
                + '</div>'
                + '<div class="col-md-2">'
                + '<label for="">Telecaller</label>'
                + '<input type="text" name="service[' + serviceId + '][Telecaller]" class="form-control height-30">'
                + '</div>'
                + '<div class="col-md-2">'
                + '<label for="">Technician</label>'
                + '<input type="text" name="service[' + serviceId + '][Technician]" class="form-control height-30">'
                + '</div>'
                + '<div class="col-md-2">'
                + '<label for="">SalesExecutive</label>'
                + '<input type="text" name="service[' + serviceId + '][SalesExecutive]" class="form-control height-30">'
                + '</div>'
                + '<div class="col-md-3">'
                + '<label for="">Comments</label>'
                + '<input type="text" name="service[' + serviceId + '][Comments]" class="form-control height-30">'
                + '</div>'
                + '<div class="col-md-1 mt-24">'
                + '<span class="deleteBtn btn btn-xs btn-danger" onClick="delete_entity(\'' + serviceId + '\');" title="Delete Entry?">Delete</span>'
                + '</div>'
//                + '<div class="col-md-2 mt-24">'
//                + '<label for=""> IsDone </label>'
//                + '<input type="checkbox" name="service[' + serviceId + '][IsDone]" class="">'
//                + '</div>'
//                + '<div class="col-md-2">'
//                + '<label for="">ServiceCompleteDate</label>'
//                + '<input type="text" name="service[' + serviceId + '][ServiceCompleteDate]" class="datetimepicker form-control height-30">'
//                + '</div>'
                + '</div>';
        +'</div>';

        $("#customer-service-details_container").append(out);
        $('input').addClass("ui-corner-all");
        $(".datetimepicker").datetimepicker({
            format: 'YYYY-MM-DD'
        });
    }

    // Calculate pending amount
    function calculatePendingAmount(num) {
        var paid = parseFloat($('#paidamount' + num).val());
        var totalpayment = parseFloat($('#totalpayment' + num).val());
        console.log(totalpayment);
        console.log(paid);
        if (paid > totalpayment) {
            alert('Paid amount should not be greater than total amount');
            $('#pendingamount' + num).val('');
            $('#paidamount' + num).focus();
            return;
        } else {
            var pendingamount = (totalpayment - paid);
            $('#pendingamount' + num).val(pendingamount);
        }
    }
// customer service details for edit
    function editCustomerService(CustomerServiceDetailsID) {
        $('#preloader').show();
        $.ajax({
            type: 'POST',
            url: '<?php echo base_url() ?>index.php/CustomerService/editCustomerServiceDetails/',
            data: {'CustomerServiceDetailsID': CustomerServiceDetailsID},
            dataType: 'html',
            success: function (data) {
                if (data !== null) {
                    $("#customer-service-details_container").html(data);
                    $('#preloader').hide();
                }
            }
        });
    }

    // Cancel Service
    function cancelService(serviceid) {
        var ischeckedCancel = ($('#isCancelService' + serviceid).is(":checked")) ? "1" : "0";
        var ischeckedDone = ($('#ischeckedService' + serviceid).is(":checked")) ? "1" : "0";

        if (ischeckedDone == '1' && ischeckedCancel == '1') {
            $('#ischeckedService' + serviceid).click();
        }

        $('#service_details_row' + serviceid).removeClass('color-red color-green');
        var colorRow = ($('#isCancelService' + serviceid).is(":checked")) ? "color-red" : "";

        $('#preloader').show();
        $.ajax({
            type: 'POST',
            url: '<?php echo base_url() ?>index.php/CustomerService/cancelCustomerServiceDetails/',
            data: {'CustomerServiceDetailsID': serviceid, 'ischecked': ischeckedCancel},
            dataType: 'html',
            success: function (data) {
                console.log(data);
                if ($.trim(data) === 'true') {
                    $('#service_details_row' + serviceid).addClass(colorRow);
                    $('#preloader').hide();
                }
            }
        });
    }


    function updateCustomerServiceStatus(CustomerServiceDetailsID, selectedVal, totalserviceOrder, serviceID) {
        var ScheduleDate = $('#ScheduleDate_' + CustomerServiceDetailsID).text();
        console.log(totalserviceOrder);
        var entity = '';
        switch (selectedVal) {
            case '2':
                entity = '<div class="row">'
                        + '<div class="col-md-12">'
                        + '<p> ScheduleDate : ' + ScheduleDate + '</p>'
                        + '<p> Status : Cancel</p>'
                        + '<div>'
                        + '<input type="hidden" name="status[IsServiceDone]" value="' + selectedVal + '">'
                        + '<input type="hidden" name="status[CustomerServiceDetailsID]" value="' + CustomerServiceDetailsID + '">'
                        + '<label class="font-italic">NOTE: (Are you sure you want to cancel this schedule?)</label>'
                        + '</div>'
                        + '<div class="col-md-6 form-group">'
                        + '<input type="submit" name="submit" class="btn btn-info" value="Update Status"> &nbsp; '
                        + ' <a href="#" data-dismiss="modal" class="btn btn-danger">Cancel</a>'
                        + '</div>'
                        + '</div>'
                        + '</div>';
                break;
            case '3':
                entity = '<div class="row">'
                        + '<div class="col-md-12">'
                        + '<p> ScheduleDate : ' + ScheduleDate + '</p>'
                        + '<p> Status : Reschedule</p>'
                        + '<div class="mb-10">'
                        + '<input type="hidden" name="status[serviceID]" value="' + serviceID + '">'
                        + '<input type="hidden" name="status[totalserviceOrder]" value="' + totalserviceOrder + '">'
                        + '<input type="hidden" name="status[IsServiceDone]" value="' + selectedVal + '">'
                        + '<input type="hidden" name="status[CustomerServiceDetailsID]" value="' + CustomerServiceDetailsID + '">'
                        + '<label class="font-italic">NOTE: (Are you sure you want to Reschedule this schedule?)</label>'
                        + '</div>'
                        + '<div class="col-md-3 form-group">'
                        + '<label>ScheduleDate</label>'
                        + ' <input type="text" name="status[ScheduleDate]" class="height-35 form-control datepicker form-group">'
                        + '</div>'
                        + '<div class="col-md-3 form-group">'
                        + '<label>Telecaller</label>'
                        + ' <input type="text" name="status[Telecaller]" class="height-35 form-control form-group">'
                        + '</div>'
                        + '<div class="col-md-3 form-group">'
                        + '<label>Technician</label>'
                        + ' <input type="text" name="status[Technician]" class="height-35 form-control form-group">'
                        + '</div>'
                        + '<div class="col-md-3 form-group">'
                        + '<label>SalesExecutive</label>'
                        + ' <input type="text" name="status[SalesExecutive]" class="height-35 form-control form-group">'
                        + '</div>'
                        + '<div class="col-md-4 form-group">'
                        + '<label>Comments</label>'
                        + ' <input type="text" name="status[Comments]" class="height-35 form-control form-group">'
                        + '</div>'
                        + '<div class="col-md-4 form-group mt-24">'
                        + ' <a href="#" data-dismiss="modal" class="btn btn-danger">Cancel</a>'
                        + ' <input type="submit" name="submit" class="btn btn-info form-group" value="Update Status"> &nbsp;'
                        + '</div>'
                        + '</div>'
                        + '</div>';
                break;
            case '1':
                entity = '<div class="row">'
                        + '<div class="col-md-12">'
                        + '<p> ScheduleDate : ' + ScheduleDate + '</p>'
                        + '<p> Status : Done</p>'
                        + '<div>'
                        + '<input type="hidden" name="status[IsServiceDone]" value="' + selectedVal + '">'
                        + '<input type="hidden" name="status[CustomerServiceDetailsID]" value="' + CustomerServiceDetailsID + '">'
                        + '<label class="font-italic">NOTE: (Are you sure you want to update this schedule?)</label>'
                        + '</div>'

                        + '<div class="col-md-6 form-group">'
                        + '<label>ServiceCompleteDate</label>'
                        + ' <input type="text" name="status[ServiceCompleteDate]" class="form-group form-control datepicker"> &nbsp;'
                        + '<input type="submit" name="submit" class="btn btn-info form-group" value="Update Status"> &nbsp; '
                        + ' <a href="#" data-dismiss="modal" class="btn btn-danger">Cancel</a>'
                        + '</div>'
                        + '</div>'
                        + '</div>';
                break;
            case '0':
                entity = '<div class="row">'
                        + '<div class="col-md-12">'
                        + '<p> ScheduleDate : ' + ScheduleDate + '</p>'
                        + '<p> Status : Not Done</p>'
                        + '<div>'
                        + '<input type="hidden" name="status[IsServiceDone]" value="' + selectedVal + '">'
                        + '<input type="hidden" name="status[CustomerServiceDetailsID]" value="' + CustomerServiceDetailsID + '">'
                        + '<label class="font-italic">NOTE: (Are you sure you want to update this schedule?)</label>'
                        + '</div>'

                        + '<div class="col-md-6 form-group">'
                        + '<input type="submit" name="submit" class="btn btn-info" value="Update Status"> &nbsp; '
                        + ' <a href="#" data-dismiss="modal" class="btn btn-danger">Cancel</a>'
                        + '</div>'
                        + '</div>'
                        + '</div>';
                break;
        }

        $('#updateServiceStatus').modal();
        $('#modalUpdateServiceStatus').html(entity);
        $(".datepicker").datetimepicker({
            format: 'DD-MM-YYYY'
        });
    }

    // Is service done
    function checkServiceDone(serviceid) {

        $('#service_details_row' + serviceid).removeClass('color-red color-green');
        var ischeckedDone = ($('#ischeckedService' + serviceid).is(":checked")) ? "1" : "0";
        var ischeckedCancel = ($('#isCancelService' + serviceid).is(":checked")) ? "1" : "0";

        if (ischeckedDone == '1' && ischeckedCancel == '1') {
            $('#isCancelService' + serviceid).click();
        }

        var colorRow = ($('#ischeckedService' + serviceid).is(":checked")) ? "color-green" : "";

        $('#preloader').show();
        $.ajax({
            type: 'POST',
            url: '<?php echo base_url() ?>index.php/CustomerService/checkIsServiceDone/',
            data: {'CustomerServiceDetailsID': serviceid, 'ischecked': ischeckedDone},
            dataType: 'html',
            success: function (data) {
                console.log(data);
                if ($.trim(data) === 'true') {
                    $('#service_details_row' + serviceid).addClass(colorRow);
                    $('#preloader').hide();
                }
            }
        });
    }

    function orderPaymentDetails(enquiryID, serviceOrderID) {
        console.log(enquiryID, serviceOrderID);
        $("#customerPaymentDetailsModal").modal();
        $("#customerPaymentDetailsModal").appendTo("body");

        $('#preloader').show();
        $.ajax({
            type: 'POST',
            url: '<?php echo base_url() ?>index.php/ServiceOrder/orderPaymentDetails/',
            data: {'enquiryID': enquiryID, serviceOrderID: serviceOrderID},
            dataType: 'html',
            success: function (data) {
                if (data !== null) {
                    $("#customerPaymentDetailsModal").html(data);
                    $('#preloader').hide();
                }
            }
        });
    }
</script>