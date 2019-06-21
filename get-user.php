<?php
require_once('setup.php');

$output = [
    'success' => false
];

$id = null;

if(isset($_GET['user-id'])){
    $id = $_GET['user-id'];
} else {
    throw new ApiException($output, 422, 'No user ID received');
}

$stmt = $conn->prepare('SELECT `id`, `name`, `email`, `created_at`, `updated_at` FROM `users` WHERE `id`=?');

$stmt->bind_param('i', $id);

if($stmt->execute()){
    $output['success'] = true;
    $output['user'] = null;
    
    $res = $stmt->get_result();
    $num_rows = $res->num_rows;

    if($num_rows === 1){
        $output['user'] = $res->fetch_assoc();
    } elseif($num_rows > 1) {
        $output['message'] = 'Too many users found';
    } else {
        $output['message'] = "No user with ID of $id found";
    }
} else {
    throw new ApiException($output, 'Database error');
}

print json_encode($output);
