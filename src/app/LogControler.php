<?php
namespace App\Models;
use App\Models\Log;
use App\Models\IApiControler;

include_once __DIR__ . '/Log.php';
include_once __DIR__ . '/IApiControler.php';

use Psr\Http\Message\ResponseInterface as Response;
use Psr\Http\Message\ServerRequestInterface as Request;


class LogControler{
    public static function TraerPorMetodo($request,$response){
        $metodo=$request->getMethod();
        $logs=Log::where('metodo','=',$metodo)->get();  
      


        return $response->withJson($logs,200);

    }



}