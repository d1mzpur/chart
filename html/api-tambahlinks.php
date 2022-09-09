<?php
include 'koneksi.php';

date_default_timezone_set("Asia/Jakarta");

$projectName = $_POST['projectName'];
$source = $_POST['source'];
$target = $_POST['target'];
$value = $_POST['value'];

$queryResult = $con->query("INSERT INTO sankeylinks VALUES ('$projectName','$source','$target','$value')");

if(isset($queryResult)){
	echo json_encode(array("hasildb" => 'berhasil'));
}

?>