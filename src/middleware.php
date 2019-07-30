<?php

use Slim\App;
use Slim\Http\Request;
use Slim\Http\Response;
use App\Models\Log;
use App\Models\AutentificadorJWT;

include_once __DIR__ . '/app/Log.php';
include_once __DIR__ . '/app/AutentificadorJWT.php';

return function (App $app) {
  
  	$container = $app->getContainer();

	

	$app->add(function ($req, $res, $next) use ($container) {
		$log=new Log();
		$log->metodo=$req->getMethod();
		$log->ruta=$req->getUri()->getPath();
		if( $req->getHeader('Token')){
		$log->usuario=AutentificadorJWT::tokenDecode($req)->nombre;
		}

		$log->save();
		$response = $next($req, $res);
	    return $response;
	});

	




};
