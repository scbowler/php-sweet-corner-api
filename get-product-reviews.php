<?php

$output = [
    'success' => false
];

require_once('mysql-connect.php');

if(isset($_GET['product-id'])){
    $id = $_GET['product-id'];
} else {
    $output['error'] = 'No product ID received';
}

if(empty($_GET['error'])){
    $query = "SELECT r.id, r.rating, r.comments FROM `product_reviews` as pr JOIN reviews as r ON review_id=r.id WHERE pr.product_id=$id";

    $result = mysqli_query($conn, $query);

    if($result){
        $output['success'] = true;
        $output['reviews'] = [];

        if(mysqli_num_rows($result)){
            while($row = mysqli_fetch_assoc($result)){
                $output['reviews'][] = $row;
            }
        }
    } else {
        $output['error'] = 'Database error';
    }
}

print json_encode($output);
