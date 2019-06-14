<?php
$output = [
    'success' => false
];

$name = null;
$email = null;
$password = null;

if(isset($_POST['name'])){
    $name = $_POST['name'];
}

if(isset($_POST['email'])){
    $email = $_POST['email'];
}

if(isset($_POST['password'])){
    $password = hash('sha256', $_POST['password']);
}

if(!$name || !$email || !$password){
    $output['error'] = 'Missing user data';
}

require_once('mysql-connect.php');

if(empty($output['error'])){
    $query = "INSERT INTO `users` (`name`, `email`, `password`, `created_at`, `updated_at`)
        VALUES ('$name', '$email', '$password', CURRENT_TIME, CURRENT_TIME)";

    $result = mysqli_query($conn, $query);

    if($result){
        if(mysqli_affected_rows($conn)){
            $insertedId = mysqli_insert_id($conn);

            $output['success'] = true;
            $output['user-id'] = $insertedId;
            $output['message'] = 'User successfully created';
        } else {
            $output['error'] = 'User not created';
        }
    } else {
        $output['error'] = 'Database error';
    }
}

print json_encode($output);
