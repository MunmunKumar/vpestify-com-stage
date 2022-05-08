<footer class="py-4 bg-light mt-auto">
    <div class="container-fluid">
        <div class="d-flex align-items-center justify-content-between small">
            <div class="text-muted">Copyright &copy; vPestify</div>
            <div>
                <a href="#">Privacy Policy</a>
                &middot;
                <a href="#">Terms &amp; Conditions</a>
            </div>
        </div>
    </div>
</footer>
</div>
</div>

<script type="text/javascript" src="<?php echo base_url() ?>assets/js/jquery-2.1.3.min.js" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
<script type="text/javascript" src="<?php echo base_url() ?>assets/js/bootstrap-3.3.2.min.js"></script>
<script type="text/javascript" src="<?php echo base_url() ?>assets/js/prettify.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.bundle.min.js" crossorigin="anonymous"></script>
<script src="<?php echo base_url() ?>assets/js/scripts.js"></script>
<script src="https://cdn.datatables.net/1.10.20/js/jquery.dataTables.min.js" crossorigin="anonymous"></script>
<script src="https://cdn.datatables.net/1.10.20/js/dataTables.bootstrap4.min.js" crossorigin="anonymous"></script>
<!--<script src="<?php echo base_url() ?>assets/demo/datatables-demo.js"></script>-->
<script type="text/javascript" src="<?php echo base_url() ?>assets/js/bootstrap-multiselect.js"></script>

<!--<script type="text/javascript" src="https://cdn.jsdelivr.net/momentjs/latest/moment.min.js"></script>
<script type="text/javascript" src="https://cdn.jsdelivr.net/npm/daterangepicker/daterangepicker.min.js"></script>
<link rel="stylesheet" type="text/css" href="https://cdn.jsdelivr.net/npm/daterangepicker/daterangepicker.css" />-->

<script type="text/javascript" src="<?php echo base_url() ?>assets/js/moment.js"></script>
<script type="text/javascript" src="<?php echo base_url() ?>assets/js/bootstrap-datetimepicker.js"></script>

<script type="text/javascript">
    $(document).ready(function () {
        $('#leadSource').multiselect({
            includeSelectAllOption: true,
            //enableFiltering: true
        });

        $(".datetimepicker").datetimepicker({
            format: 'YYYY-MM-DD'
        });

        // number only
        $('.onlyNumberDecimal').keypress(function (event) {
            if ((event.which != 46 || $(this).val().indexOf('.') != -1) && (event.which < 48 || event.which > 57)) {
                event.preventDefault();
            }
        });

        $.extend($.fn.dataTable.defaults, {
            "sPaginationType": 'full_numbers',
            "iDisplayLength": '25',
            "aaSorting": [[0, 'asc']]
        });
        
        $('#dataTable').DataTable();
        $('#dataTableGrid').DataTable();

    });

</script>

</body>
</html>