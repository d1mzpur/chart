<?php
include 'koneksi.php';

date_default_timezone_set("Asia/Jakarta");

$projectName = $_POST['projectName'];

$queryResult=$con->query("SELECT * FROM `sysconfig` WHERE `projectName` = '$projectName'");

$result=array();

while($fetchData=$queryResult->fetch_assoc()){
	$result[]=$fetchData;
}

echo json_encode($result);

?>