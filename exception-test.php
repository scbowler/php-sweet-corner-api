<?php
require_once('error-handle.php');

$value = $_GET['v'];

try {
    if($value > 1){
        throw new Exception('The value was greater than 1!');
    } else {
        throw new ApiException([], 406, 'The value was too small');
    }
}

catch(ApiException $ex){
    $ex->sendError();
}

catch(Exception $ex){
    print 'The Error was: '.$ex->getMessage();
}
