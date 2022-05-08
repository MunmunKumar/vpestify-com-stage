<?php

//$accepted_origins = array("http://localhost", "http://107.161.82.130", "http://codexworld.com");
//$imageFolder = "admin-panel/gallery-image/serviceimages/";

$imageFolder = "serviceimages/";

reset($_FILES);
$temp = current($_FILES);
if (is_uploaded_file($temp['tmp_name'])) {

    if (preg_match("/([^\w\s\d\-_~,;:\[\]\(\).])|([\.]{2,})/", $temp['name'])) {
        header("HTTP/1.1 400 Invalid file name.");
        return;
    }
    if (!in_array(strtolower(pathinfo($temp['name'], PATHINFO_EXTENSION)), array("gif", "jpg", "png"))) {
        header("HTTP/1.1 400 Invalid extension.");
        return;
    }
    $filetowrite = $imageFolder . time() . $temp['name'];
    move_uploaded_file($temp['tmp_name'], $filetowrite);

    $filetowrite = "https://www.vpestify.com/serviceimages/" . time() . $temp['name'];

    echo json_encode(array('location' => $filetowrite));
} else {
    header("HTTP/1.1 500 Server Error");
}
?>

<?php

//$url = array("http://localhost");
//reset($_FILES);
//$temp = current($_FILES);
//if(is_uploaded_file($temp['tmp_name']))
//{
//    if(preg_match("/([^\w\s\d\-_~,;:\[\]\(\).])|([\.]{2,})/", $temp['name'])){
//        header("HTTP/1.1 400 Invalid file name,Bad request");
//        return;
//    }  
//    if(!in_array(strtolower(pathinfo($temp['name'], PATHINFO_EXTENSION)), array("gif", "jpg", "png"))){
//        header("HTTP/1.1 400 Invalid extension,Bad request");
//        return;
//    }      
//    $fileName = "serviceimages/" . $temp['name'];
//    move_uploaded_file($temp['tmp_name'], $fileName);  
//    echo json_encode(array('location' => $fileName));
//}
?>