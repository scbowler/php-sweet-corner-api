<?php
require_once('setup.php');


try {
    $value = $_GET['v'];

    // throw new Exception('This is a regular exception');

    // throw new ApiException([], 418, 'This is a API Exception');

    if($value > 1){
        throw new ApiException([], 418, 'This is a API Exception');
    } else {
        throw new Exception('This is a regular exception');
    }
}

catch(ApiException $ex) {
    echo '<h1>API Exception</h1>';

    echo '<pre>';
    print_r($ex);
    echo '</pre>';
}

catch(Exception $ex) {
    echo '<h1>Plain Exception</h1>';

    echo '<pre>';
    print_r($ex);
    echo '</pre>';
}
