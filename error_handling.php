<?php

class ApiException extends Exception {
    private $output;

    public function __construct($output = [], $code = 500, $message = 'Internal Server Error', Exception $previous = null) {
        $this->output = $output;

        parent::__construct($message, $code, $previous);
    }

    public function sendError(){
        if(empty($this->output['error']) && empty($this->output['errors'])){
            $this->output['error'] = $this->message;
        }

        http_response_code($this->code);

        print json_encode($this->output);

        die();
    }
}

function defaultExceptionHandler($exception){
    if($exception instanceof ApiException) {
        $exception->sendError();
    }
    
    echo '<pre>';
    print_r($exception);
    echo '</pre>';
}

set_exception_handler('defaultExceptionHandler');
