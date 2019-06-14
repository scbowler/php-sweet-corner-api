<?php

$output = [
    'success' => false
];

require_once('mysql-connect.php');

if(empty($output['error'])){
    $query = "SELECT `name`, `email` FROM `userssdf`";

    $result = mysqli_query($conn, $query);

    if($result){
        $output['success'] = true;
        if(mysqli_num_rows($result)){
            while($row = mysqli_fetch_assoc($result)){
                $output['users'][] = $row;
            }
        } else {
            $output['users'] = [];
        }
    } else {
        $output['error'] = 'Error getting data';
    }
}

print json_encode($output);
