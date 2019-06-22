<?php
require_once('setup.php');

$output = [
    'success' => false
];

$query = "SELECT `id`, `name`, `email` FROM `users`";

$result = $conn->query($query);

if($result){
    $output['success'] = true;
    if($result->num_rows){
        while($row = $result->fetch_assoc()){
            $output['users'][] = $row;
        }
    } else {
        $output['users'] = [];
    }
} else {
    throw new ApiException($output, 500, 'Database error');
}

print json_encode($output);
