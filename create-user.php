<?php
require_once('setup.php');

$output = [
    'success' => false
];

$name = null;
$email = null;
$password = null;

if(isset($_POST['name'])){
    $name = $_POST['name'];
} else {
    $output['errors'][] = 'Missing Name';
}

if(isset($_POST['email'])){
    $email = $_POST['email'];
} else {
    $output['errors'][] = 'Missing Email';
}

if(isset($_POST['password'])){
    $password = hash('sha256', $_POST['password']);
} else {
    $output['errors'][] = 'Missing Password';
}

if(!empty($output['errors'])){
    throw new ApiException($output, 422);
}


$stmt = $conn->prepare('INSERT INTO `users` (`name`, `email`, `password`, `created_at`, `updated_at`)
    VALUES (?, ?, ?, CURRENT_TIME, CURRENT_TIME)');

$stmt->bind_param('sss', $name, $email, $password);

if($stmt->execute()){
    
    if($stmt->affected_rows){

        $output['success'] = true;
        $output['user-id'] = $stmt->insert_id;
        $output['message'] = 'User successfully created';
    } else {
        throw new ApiException($output, 500, 'User not created');
    }
} else {
    throw new ApiException($output, 500, 'Database error');
}

$stmt->close();

print json_encode($output);
