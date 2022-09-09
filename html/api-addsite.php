<?php
include 'koneksi.php';

date_default_timezone_set("Asia/Jakarta");

$projectName = $_POST['projectName'];
$projectvalueSite = $_POST['projectvalueSite'];

$queryResult = $con->query("INSERT INTO sysconfig VALUES ('','$projectName','$projectvalueSite')");

// if ($projectvalueSite == 1){
    // $queryResult2 = $con->query("INSERT INTO sankeynodes VALUES ('$projectName','H','0','5')");
    // $queryResult3 = $con->query("INSERT INTO sankeynodes VALUES ('$projectName','Storage','0','6')");
    // $queryResult4 = $con->query("INSERT INTO sankeynodes VALUES ('$projectName','E','0','7')");
    // $queryResult5 = $con->query("INSERT INTO sankeylinks VALUES ('$projectName','H','Storage','10')");
    // $queryResult6 = $con->query("INSERT INTO sankeylinks VALUES ('$projectName','Storage','E','10')");
// } 

if ($projectvalueSite == 1){
        $queryResult = $con->query("INSERT INTO sankeynodes VALUES ('','$projectName','H','0','5')");
        $queryResult = $con->query("INSERT INTO sankeynodes VALUES ('','$projectName','Storage','0','6')");
        $queryResult = $con->query("INSERT INTO sankeynodes VALUES ('','$projectName','E','0','7')");
        $queryResult = $con->query("INSERT INTO sankeylinks VALUES ('','$projectName','H','Storage','10')");
        $queryResult = $con->query("INSERT INTO sankeylinks VALUES ('','$projectName','Storage','E','10')");
} else if ($projectvalueSite == 2){
        $queryResult = $con->query("INSERT INTO sankeynodes VALUES ('','$projectName','H','0','5')");
        $queryResult = $con->query("INSERT INTO sankeynodes VALUES ('','$projectName','PP','0','5')");
        $queryResult = $con->query("INSERT INTO sankeynodes VALUES ('','$projectName','Storage','0','6')");
        $queryResult = $con->query("INSERT INTO sankeynodes VALUES ('','$projectName','E','0','7')");
        $queryResult = $con->query("INSERT INTO sankeynodes VALUES ('','$projectName','PS','0','7')");
        $queryResult = $con->query("INSERT INTO sankeylinks VALUES ('','$projectName','H','Storage','10')");
        $queryResult = $con->query("INSERT INTO sankeylinks VALUES ('','$projectName','PP','Storage','10')");
        $queryResult = $con->query("INSERT INTO sankeylinks VALUES ('','$projectName','Storage','E','10')");
        $queryResult = $con->query("INSERT INTO sankeylinks VALUES ('','$projectName','Storage','PS','10')");
} else if ($projectvalueSite == 3){
        $queryResult = $con->query("INSERT INTO sankeynodes VALUES ('','$projectName','H','0','5')");
        $queryResult = $con->query("INSERT INTO sankeynodes VALUES ('','$projectName','SO','0','5')");
        $queryResult = $con->query("INSERT INTO sankeynodes VALUES ('','$projectName','Storage','0','6')");
        $queryResult = $con->query("INSERT INTO sankeynodes VALUES ('','$projectName','E','0','7')");
        $queryResult = $con->query("INSERT INTO sankeynodes VALUES ('','$projectName','SI','0','7')");
        $queryResult = $con->query("INSERT INTO sankeylinks VALUES ('','$projectName','H','Storage','10')");
        $queryResult = $con->query("INSERT INTO sankeylinks VALUES ('','$projectName','SO','Storage','10')");
        $queryResult = $con->query("INSERT INTO sankeylinks VALUES ('','$projectName','Storage','E','10')");
        $queryResult = $con->query("INSERT INTO sankeylinks VALUES ('','$projectName','Storage','SI','10')");
} else if ($projectvalueSite == 4){
        $queryResult = $con->query("INSERT INTO sankeynodes VALUES ('','$projectName','H','0','5')");
        $queryResult = $con->query("INSERT INTO sankeynodes VALUES ('','$projectName','SO','0','5')");
        $queryResult = $con->query("INSERT INTO sankeynodes VALUES ('','$projectName','PP','0','5')");
        $queryResult = $con->query("INSERT INTO sankeynodes VALUES ('','$projectName','Storage','0','6')");
        $queryResult = $con->query("INSERT INTO sankeynodes VALUES ('','$projectName','E','0','7')");
        $queryResult = $con->query("INSERT INTO sankeynodes VALUES ('','$projectName','SI','0','7')");
        $queryResult = $con->query("INSERT INTO sankeynodes VALUES ('','$projectName','PS','0','7')");
        $queryResult = $con->query("INSERT INTO sankeylinks VALUES ('','$projectName','H','Storage','10')");
        $queryResult = $con->query("INSERT INTO sankeylinks VALUES ('','$projectName','SO','Storage','10')");
        $queryResult = $con->query("INSERT INTO sankeylinks VALUES ('','$projectName','PP','Storage','10')");
        $queryResult = $con->query("INSERT INTO sankeylinks VALUES ('','$projectName','Storage','E','10')");
        $queryResult = $con->query("INSERT INTO sankeylinks VALUES ('','$projectName','Storage','SI','10')");
        $queryResult = $con->query("INSERT INTO sankeylinks VALUES ('',$projectName','Storage','PS','10')");
} else {}

if(isset($queryResult)){
	echo json_encode(array("hasildb" => 'berhasil'));
}

?>