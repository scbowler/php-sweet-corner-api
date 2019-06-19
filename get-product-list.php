<?php

$output = [
    'success' => false
];

require_once('mysql-connect.php');

if(empty($output['error'])){
    $query = 'SELECT p.id, p.name, p.cost, i.id AS image_id, i.alt_text, i.file_path 
        FROM `products` AS `p` 
        JOIN `images` AS `i` 
        ON p.image_id=i.id';

    $result = mysqli_query($conn, $query);

    if($result){
        $output['success'] = true;
        $output['products'] = [];

        if(mysqli_num_rows($result)){
            while($row = mysqli_fetch_assoc($result)){
                $product = [
                    'id' => (int) $row['id'],
                    'name' => $row['name'],
                    'cost' => (int) $row['cost'],
                    'image' => [
                        'id' => (int) $row['image_id'],
                        'alt' => $row['alt_text'],
                        'src' => $row['file_path']
                    ]
                ];

                $output['products'][] = $product;
            }
        }
    }
}

print json_encode($output);
