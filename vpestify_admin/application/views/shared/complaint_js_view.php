

<script type="text/javascript">
    $(document).ready(function () {
        
        var dataTables =  loadComplaintDetailsDatatable();
        function loadComplaintDetailsDatatable(yearval = '') {

            var dataTables =  $('#complaintDetailsdataTable').dataTable({
                "searching": true,
                "bDestroy": true,
                "processing": true,
                "fixedHeader": true,
                "pagination": true,
                "sPaginationType": 'full_numbers',
                "iDisplayLength": '20',
                lengthMenu: [
                    [10, 15, 20, 25, 50, -1],
                    ['10', '15', '20', '25', '50', 'Show all']
                ],
                "serverSide": true,
                "ajax": {
                    'type': 'POST',
                    //'url': 'http://127.0.0.1/vpestify_com/vpestify_admin/Complaint/getComplaintDataTable', 
                    'url': '/vpestify_admin/Complaint/getComplaintDataTable',                  
                    "dataType": "json",
                    data : {year: yearval},

                },
                "order": [[ 0, "desc" ]],
                dom: 'Bfrtip',
                destroy: true,
                columns: [
                    {"data" : "ComplaintID", 'render': function (data, type, row) {
                        let complaintID = row.ComplaintID;
                        return "<a href='#' id = '"+complaintID+"view' > View</a>"
                               + " | <a href='#' id = '"+complaintID+"edit' > Edit</a>";
                        }
                    },
                    {"data": "CustomerName" },
                    {"data" : "Address"},
                    {"data" : "ServiceName"},
                    {"data" : "Mobile"},
                    {"data" : "Amount"},
                    {"data" : "ComplaintDate"},
                    {"data" : "ServiceDate"},
                    {"data" : "TechnicianName"},
                    {"data" : "AttendeeComplaint"},
                    {"data" : "AttendedComplaintDate"},
                    {"data" : "ComplaintFollowupDate"},
                    {"data" : "Status"},
                    {"data" : "Comments"},
                    {"data" : "CreatedOn"},
                    {"data" : "ModifiedOn"},
                ],

                buttons: [
                    'pageLength',
                    'csv', 'pdf',
                ]

            });
       }

       $('#searchByYear').change(function(){
            loadComplaintDetailsDatatable($(this).val());
        });

    });
</script>

