<script type="text/javascript">
    $(document).ready(function () {
        
         loadEnquiryDetailsDatatable();
        function loadEnquiryDetailsDatatable() {
            $('#usersDetailsdataTable').dataTable({
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
                    'url': '/vpestify_admin/Enquiry/getUserDetailsDataTable',                  
                    "dataType": "json",

                },
                "order": [[ 0, "desc" ]],
                dom: 'Bfrtip',
                destroy: true,
                columns: [
                    {"data" : "EnquiryID", 'render': function (data, type, row) {
                        let enquiryID = row.EnquiryID;
                        return "<a href='<?php echo base_url(); ?>Enquiry/usersDetails/"+enquiryID+"' id = '"+enquiryID+"' > View</a>"
                               + " | <a href='<?php echo base_url(); ?>Enquiry/index?edit="+enquiryID+"' id = '"+enquiryID+"' > Edit</a>";
                        }
                    },
                    {"data": "UserName" },
                    {"data" : "CompanyName"},
                    {"data" : "Mobile"},
                    {"data" : "Amount"},                    
                    {"data" : "ServiceName"},                   
                    {"data" : "VisitDate"},
                    {"data" : "LeadSource"},
                    {"data" : "LeadType"},
                    {"data" : "CustomerPriority"},
                    {"data" : "Telecaller"},
                    {"data" : "SalesExecutive"},
                    {"data" : "Technician"},
                    {"data" : "Address"},
                    {"data" : "CreatedDate"},
                    
                ],

                buttons: [
                    'pageLength',
                    'csv', 'pdf',
                ]

            });
        }

    });
</script>