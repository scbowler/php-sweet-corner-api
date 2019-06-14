<?php

$output = [
    'success' => false
];

require_once('mysql-connect.php');

if(empty($output['error'])){
    $query = 'SELECT p.id, p.name, p.cost, i.id as imageId, i.alt_text, i.file_path FROM `products` as p JOIN `images` as i ON p.image_id=i.id';

    $result = mysqli_query($conn, $query);

    if($result){
        $output['success'] = true;
        $output['products'] = [];

        if(mysqli_num_rows($result)){
            while($row = mysqli_fetch_assoc($result)){
                $output['products'][] = [
                    'id' => $row['id'],
                    'name' => $row['name'],
                    'cost' => $row['cost'],
                    'image' => [
                        'id' => $row['imageId'],
                        'alt' => $row['alt_text'],
                        'src' => $row['file_path'] 
                    ]
                ];
            }
        }
    } else {
        $output['error'] = 'Database error';
    }
}

print json_encode($output);
