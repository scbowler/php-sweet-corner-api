<?php

$output = [
    'success' => false
];

$id = null;

if(isset($_GET['user-id'])){
    $id = $_GET['user-id'];
} else {
    $output['error'] = 'No user ID received';
}

require_once('mysql-connect.php');

if(empty($output['error']) && $id){
    $query = "SELECT `id`, `name`, `email`, `created_at`, `updated_at` FROM `users` WHERE `id`=$id";

    $result = mysqli_query($conn, $query);

    if($result){
        $output['success'] = true;
        $output['user'] = null;

        $num_rows = mysqli_num_rows($result);

        if($num_rows === 1){
            $output['user'] = mysqli_fetch_assoc($result);
        } elseif($num_rows > 1) {
            $output['message'] = 'Too many users found';
        } else {
            $output['message'] = "No user with ID of $id found";
        }
    } else {
        $output['error'] = 'Database error';
    }
}

print json_encode($output);
