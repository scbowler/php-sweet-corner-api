<?php
$output = [
    'success' => false
];

require_once('mysql-connect.php');

$id = null;
$updates = [];

if(isset($_GET['user-id'])){
    $id = $_GET['user-id'];
} else {
    $output['error'] = 'No user ID received';

    print json_encode($output);
    exit;
}

if(isset($_POST['name'])){
    $updates['name'] = $_POST['name'];
}
if(isset($_POST['email'])){
    $updates['email'] = $_POST['email'];
}
if(isset($_POST['password'])){
    $updates['password'] = hash('sha256', $_POST['password']);
}

if(empty($updates)){
    $output['error'] = 'No updated data received';
}

if(empty($output['error'])){
    $query = 'UPDATE `users` SET `updated_at`=CURRENT_TIME';

    foreach($updates as $k=>$v){
        $query .= ", `$k`='$v'";
    }

    $query .= " WHERE id=$id";

    $result = mysqli_query($conn, $query);

    if($result && mysqli_affected_rows($conn)){
        $output['success'] = true;
        $output['message'] = "Successfully updated user with ID: $id";
    } else {
        $output['error'] = 'Database error';
    }
}

print json_encode($output);
