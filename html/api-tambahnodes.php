<?php
include 'koneksi.php';

date_default_timezone_set("Asia/Jakarta");

$projectName = $_POST['projectName'];
$name = $_POST['name'];
$value = $_POST['value'];
$depth= $_POST['depth'];

$queryResult = $con->query("INSERT INTO sankeynodes VALUES ('$projectName','$name','$value','$depth')");

if(isset($queryResult)){
	echo json_encode(array("hasildb" => 'berhasil'));
}

?>