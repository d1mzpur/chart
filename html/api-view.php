<?php
    include 'koneksi.php';
    
    $projectName = $_GET['projectName'];
    
    // select the data from the 3 tables
    $sankeynodes_res = mysqli_query($con, "SELECT name,value,depth FROM sankeynodes WHERE projectName = '$projectName'");
    $sankeylinks_res = mysqli_query($con, "SELECT source,target,value FROM sankeylinks WHERE projectName = '$projectName'");

    // create 3 empty arrays to avoid notices, in case of 
    // empty results from database
    $nodes = [];
    $links = [];

    // fill countries array
    while($sankeynodes = mysqli_fetch_assoc($sankeynodes_res)) {
        $nodes[] = $sankeynodes;
    }
    // fill cities array
    while($sankeylinks = mysqli_fetch_assoc($sankeylinks_res)) {
        $links[] = $sankeylinks;
    }
 
    // print your results in the format you mentioned 
    //(you have to use HTML code in order for the browser to
    // display it the way you need, so I used <pre> tag.)
    // echo '<pre>';
    echo json_encode(['nodes' => $nodes, 
                      'links' => $links]);
    // echo '</pre>';
?>