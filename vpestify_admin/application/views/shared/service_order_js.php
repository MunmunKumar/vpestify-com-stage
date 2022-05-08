<script type="text/javascript">
    $(document).ready(function () {
        $(".datetimedisplay").datetimepicker({
            format: 'DD-MM-YYYY'
        });

        $('#order_save').on('click', function () {
            let validate = order_form_validate();

            if (validate) {
                return false;
            }
            $('#order_form').submit();

        });

        function order_form_validate() {
            var flag = '';
            $('.serviceinclude').each(function () {
                if ($(this).is(":checked")) {
                    let inc = $(this).attr('alt');
                    //console.log(inc);
                    let totalAmount = $('#serviceTotalAmount' + inc).val();
                    if (totalAmount === '') {
                        $('#serviceTotalAmount' + inc).focus();
                        alert("Please enter Total Amount!");
                        flag = 1;
                        return flag;
                    }

                    let NoOfService = $('#NoOfService' + inc).val();
                    if (NoOfService === '') {
                        $('#NoOfService' + inc).focus();
                        alert("Please enter Number Of Service!");
                        flag = 1;
                        return flag;
                    }
                }
            });

            $('.serviceTotalPayment').each(function () {
                var totalAmount = $(this).val();
                if (totalAmount !== '') {
                    let inc = $(this).attr('alt');
                    console.log(totalAmount);
                    var checkedVal = ($('#includeService' + inc).is(':checked')) ? '1' : '0';
                    if (checkedVal === '0') {
                        alert("Please include the service first!");
                        flag = 1;
                        return flag;
                    }
                    let NoOfService = $('#NoOfService' + inc).val();
                    if (NoOfService === '') {
                        $('#NoOfService' + inc).focus();
                        alert("Please enter Number Of Service!");
                        flag = 1;
                        return flag;
                    }
                }
            });

            return flag;
        }

    });

    // Calculate amount        
    function calculateAmount(orderPay) {
        var totalOrderValue = parseFloat($('#totalOrderValue').val());
        var orderPaidAmount = (parseFloat($('#orderPaidAmountOriginal').val())) ? parseFloat($('#orderPaidAmountOriginal').val()) : 0;
        var orderPendingAmountOriginal = (parseFloat($('#orderPendingAmountOriginal').val())) ? parseFloat($('#orderPendingAmountOriginal').val()) : 0;
        var totalOrderPaid = parseFloat(orderPaidAmount + parseFloat(orderPay));
        var totalOrderPending = (totalOrderValue - totalOrderPaid);

        if (parseFloat(orderPay) > totalOrderValue) {
            alert("Order Pay should not be greater than Total Order Value");
            $('#orderPaidAmount').val(orderPaidAmount);
            $('#orderPendingAmount').val(orderPendingAmountOriginal);
            $('#orderPay').focus().val('');
            return;
        } else if (totalOrderPaid > totalOrderValue) {
            alert("Total paid should not be greater than Total Order Value");
            $('#orderPaidAmount').val(orderPaidAmount);
            $('#orderPendingAmount').val(orderPendingAmountOriginal);
            $('#orderPay').focus().val('');
            return;
        } else if (orderPay > orderPendingAmountOriginal && orderPaidAmount != '') {
            alert("Pay Amount should not be greater than Total Pending");
            $('#orderPaidAmount').val(orderPaidAmount);
            $('#orderPendingAmount').val(orderPendingAmountOriginal);
            $('#orderPay').focus().val('');
            return;
        }

        $('#orderPaidAmount').val(totalOrderPaid);
        $('#orderPendingAmount').val(totalOrderPending);
    }
    //Calcilate Service Order Amount
    function calculateServiceAmount(ServicePay, inc) {
        var totalServiceValue = parseFloat($('#serviceTotalAmount' + inc).val());
        var totalServicePaidAmount = (parseFloat($('#servicePaidOriginal' + inc).val())) ? parseFloat($('#servicePaidOriginal' + inc).val()) : 0;
        var servicePendingOriginal = (parseFloat($('#servicePendingOriginal' + inc).val())) ? parseFloat($('#servicePendingOriginal' + inc).val()) : 0;

        var totalServicePaid = parseFloat(totalServicePaidAmount + parseFloat(ServicePay));
        var totalServicePending = (totalServiceValue - totalServicePaid);

        if (parseFloat(ServicePay) > totalServiceValue) {
            alert("Service Pay should not be greater than Total Service Value");
            $('#servicePaid' + inc).val(totalServicePaidAmount);
            $('#servicePending' + inc).val(servicePendingOriginal);
            $('#servicePay' + inc).focus().val('');
            return;
        } else if (totalServicePaid > totalServiceValue) {
            alert("Total paid should not be greater than Total Service Value");
            $('#servicePaid' + inc).val(totalServicePaidAmount);
            $('#servicePending' + inc).val(servicePendingOriginal);
            $('#servicePay' + inc).focus().val('');
            return;
        }
        $('#servicePaid' + inc).val(totalServicePaid);
        $('#servicePending' + inc).val(totalServicePending);

        // calculate total paid amount
        var contain_val = [];
        $('.totalServicePaid').each(function () {
            let amount = (parseFloat($(this).val())) ? parseFloat($(this).val()) : 0;
            contain_val.push(amount);
        });
        var totalServicePaidAmount = contain_val.reduce(function (a, b) {
            return parseFloat(a + b);
        }, 0);
        parseFloat($('#orderPaidAmount').val(totalServicePaidAmount));

        // calculate total pay amount
        var containServicePay = [];
        $('.servicePay').each(function () {
            var payamount = (parseFloat($(this).val())) ? parseFloat($(this).val()) : 0;
            containServicePay.push(payamount);
        });
        var totalServicePayAmount = containServicePay.reduce(function (a, b) {
            return parseFloat(a + b);
        }, 0);
        parseFloat($('#orderPay').val(totalServicePayAmount));

        // calculate total pending amount
        var containServicePending = [];
        $('.servicePendingAmount').each(function () {
            var payamount = (parseFloat($(this).val())) ? parseFloat($(this).val()) : 0;
            containServicePending.push(payamount);
        });
        var totalServicePendingAmount = containServicePending.reduce(function (a, b) {
            return parseFloat(a + b);
        }, 0);
        parseFloat($('#orderPendingAmount').val(totalServicePendingAmount));
    }



    function calculateServiceAmount_notInWork(ServicePay, inc) {
        var totalOrderValue = parseFloat($('#totalOrderValue').val());
        var totalOrderPending = (isNaN(parseFloat($('#orderPendingAmount').val()))) ? '' : parseFloat($('#orderPendingAmount').val());

        var totalSericeValue = parseFloat($('#serviceTotalAmount' + inc).val());
        var totalServicePaidAmount = (parseFloat($('#servicePaidOriginal' + inc).val())) ? parseFloat($('#servicePaidOriginal' + inc).val()) : 0;
        var servicePendingOriginal = (parseFloat($('#servicePendingOriginal' + inc).val())) ? parseFloat($('#servicePendingOriginal' + inc).val()) : 0;

        var totalServicePaid = parseFloat(totalServicePaidAmount + parseFloat(ServicePay));
        var totalServicePending = (totalSericeValue - totalServicePaid);

        if (parseFloat(ServicePay) > totalSericeValue) {
            alert("Service Pay should not be greater than Total Service Value");
            $('#servicePaid' + inc).val(totalServicePaidAmount);
            $('#servicePending' + inc).val(servicePendingOriginal);
            $('#servicePay' + inc).focus().val('');
            return;
        } else if (totalServicePaid > totalSericeValue) {
            alert("Total paid should not be greater than Total Service Value");
            $('#servicePaid' + inc).val(totalServicePaidAmount);
            $('#servicePending' + inc).val(servicePendingOriginal);
            $('#servicePay' + inc).focus().val('');
            return;
        } else if (ServicePay > totalOrderPending) {
            alert("Total paid should not be greater than Total Service Value");
            $('#servicePaid' + inc).val(totalServicePaidAmount);
            $('#servicePending' + inc).val(servicePendingOriginal);
            $('#servicePay' + inc).focus().val('');
            return;
        }

        // Total service paid calculate
        var contain_val = [];
        $('.totalServicePaid').each(function () {
            let amount = (parseFloat($(this).val())) ? parseFloat($(this).val()) : 0;
            contain_val.push(amount);
        });
        var totalServicePaidAmount = contain_val.reduce(function (a, b) {
            return parseFloat(a + b);
        }, 0);
        var totalOrderPaid = parseFloat($('#orderPaidAmount').val());
        console.log(parseFloat(totalServicePaidAmount + totalOrderPaid + parseFloat(ServicePay)));
        let calOrderAmountPaid = (parseFloat(totalServicePaidAmount + totalOrderPaid + parseFloat(ServicePay)));
        if (parseFloat(calOrderAmountPaid) > totalOrderValue) {
            alert("Total service paid amount should not be greater than Total Order Amount");
            //$('#servicePaid' + inc).val(totalServicePaidAmount);
            $('#servicePending' + inc).val(servicePendingOriginal);
            $('#servicePay' + inc).focus().val('');
            return;
        }

        // Total service Pay Amount         
        $('#servicePayOriginal' + inc).val(ServicePay);
        var containServicePay = [];
        $('.servicePayOriginal').each(function () {
            var payamount = (parseFloat($(this).val())) ? parseFloat($(this).val()) : 0;
            containServicePay.push(payamount);
        });
        var totalServicePayAmount = containServicePay.reduce(function (a, b) {
            return parseFloat(a + b);
        }, 0);

        if (totalServicePayAmount > totalOrderPending && totalOrderPending !== '') {
            alert("Total service pay amount should not be greater than Total Order Pending Amount test");
            $('#servicePaid' + inc).val(totalServicePaidAmount);
            $('#servicePending' + inc).val(servicePendingOriginal);
            $('#servicePay' + inc).focus().val('');
            return;
        }

        $('#servicePaid' + inc).val(totalServicePaid);
        $('#servicePending' + inc).val(totalServicePending);

    }

    // Check Total Amount
    function checkTotalAmount(amount, inc) {
        var contain_val = [];
        $('.serviceTotalPayment').each(function () {
            let amount = (parseFloat($(this).val())) ? parseFloat($(this).val()) : 0;
            contain_val.push(amount);
        });
        var totalServiceAmount = contain_val.reduce(function (a, b) {
            return parseFloat(a + b);
        }, 0);

        var totalOrderValue = (isNaN(parseFloat($('#totalOrderValue').val()))) ? '0' : parseFloat($('#totalOrderValue').val());
        $('#totalOrderValue').val(totalServiceAmount);
        //var totalOrderValue = parseFloat($('#totalOrderValue').val());


//        if (totalServiceAmount > totalOrderValue || totalServiceAmount < totalOrderValue) {
//            alert("Total service amount should not be greater than && less than Total Order Value");
//            return;
//        }
        //console.log(totalServiceAmount);
    }
</script>