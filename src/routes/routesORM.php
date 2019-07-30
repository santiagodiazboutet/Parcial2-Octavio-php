<?php

use Slim\App;
use Slim\Http\Request;
use Slim\Http\Response;
use App\Models\UsuarioControler;
use App\Models\ORM\usuarioApi;
use App\Models\Middleware\UsuarioExiste;
use App\Models\Middleware\UsuarioExisteCheck;
use App\Models\Middleware\AutenticacionUsuario;
use App\Models\AutentificadorJWT;
use App\Models\Middleware\VerificaToken;
use App\Models\Middleware\VerificaTokenAdmin;
use App\Models\CompraControler;
use App\Models\LogControler;
use App\Models\Middleware\ImageRemoveExif;
use App\Models\Middleware\FileFilter;
use App\Models\Log;

include_once __DIR__ . '/../../src/app/UsuarioControler.php';
include_once __DIR__ . '/../../src/app/CompraControler.php';
include_once __DIR__ . '/../../src/app/LogControler.php';

include_once __DIR__ . '/../../src/app/AutentificadorJWT.php';
include_once __DIR__ . '/../../src/Middleware/UsuarioExiste.php';
include_once __DIR__ . '/../../src/Middleware/UsuarioExisteCheck.php';

include_once __DIR__ . '/../../src/Middleware/ImageRemoveExif.php';
include_once __DIR__ . '/../../src/Middleware/FileFilter.php';
include_once __DIR__ . '/../../src/Middleware/AutenticacionUsuario.php';
include_once __DIR__ . '/../../src/Middleware/VerificaToken.php';
include_once __DIR__ . '/../../src/Middleware/VerificaTokenAdmin.php';


return function (App $app) {
    $container = $app->getContainer();
    $VerificaToken =new VerificaToken();

     $app->group('/usuario', function () {   
      $UsuarioExiste =new UsuarioExiste();
      $UsuarioExisteCheck =new UsuarioExisteCheck();
      $VerificaTokenAdmin =new VerificaTokenAdmin();
      $VerificaToken =new VerificaToken();
        $this->get('', function ($request, $response, $args) {
          //return usuario::all()->toJson();
          $todosLosusuarios=UsuarioControler::TraerTodos($request, $response, $args);
          return $todosLosusuarios;
        })->add($VerificaTokenAdmin);
        $this->post('', function ($request, $response, $args) {
          //return usuario::all()->toJson();
          $newResponse=UsuarioControler::CargarUno($request, $response, $args);
          return $newResponse;
        })->add($UsuarioExiste);

        $this->put('', function ($request, $response, $args) {
          //return usuario::all()->toJson();
          $newResponse=UsuarioControler::ModificarUno($request, $response, $args);
          return $newResponse;
        })->add($UsuarioExisteCheck);

    });



    $AutenticaUsuario =new AutenticacionUsuario();


    $app->post('/login', function ($request, $response, $args) {   
         echo "aca";
      
        $token=AutentificadorJWT::CrearToken($request);
        //return usuario::all()->toJson();
        return $response->withJson($token);
    
  })->add($AutenticaUsuario);
  $app->group('/logs', function () { 
    $this->post('', function ($request, $response, $args) {
      $newResponse=LogControler::TraerPorMetodo($request,$response,$args);
      return $newResponse;
    });
      $this->get('', function ($request, $response, $args) {
        $newResponse=LogControler::TraerPorMetodo($request,$response,$args);
        return $newResponse;
      });
        $this->put('', function ($request, $response, $args) {
          $newResponse=LogControler::TraerPorMetodo($request,$response,$args);
          return $newResponse;
    });
  $this->delete('', function ($request, $response, $args) {
    $newResponse=LogControler::TraerPorMetodo($request,$response,$args);
    return $newResponse;
   });
   
  });


  $app->group('/compra', function () {   
    $VerificaToken =new VerificaToken();
    $FileFilter =new FileFilter();
    $ImgExif =new ImageRemoveExif();
      $this->get('', function ($request, $response, $args) {
        //return Compra::all()->toJson();
        $todosLosCompras=CompraControler::TraerTodos($request, $response, $args);
        return $todosLosCompras;
      })->add($VerificaToken);
      $this->get('/porusuario', function ($request, $response, $args) {
        //return Compra::all()->toJson();
        $todosLosCompras=CompraControler::TraerPorUsr($request, $response, $args);
        return $todosLosCompras;
      })->add($VerificaToken);
      $this->post('', function ($request, $response, $args) {
        //return Compra::all()->toJson();
        $newResponse=CompraControler::CargarUno($request, $response, $args);
        return $newResponse;
      })->add($VerificaToken)->add($FileFilter)->add($ImgExif);
      $this->delete('', function ($request, $response, $args) {
        //return Compra::all()->toJson();
        $newResponse=CompraControler::BorrarUno($request, $response, $args);
        return $newResponse;
      })->add($VerificaToken);
  });


  $app->get('/porusuario', function ($request, $response, $args) {
    //return Compra::all()->toJson();
    $todosLosCompras=CompraControler::TraerPorUsr($request, $response, $args);
    return $todosLosCompras;
  })->add($VerificaToken);
  
  $app->get('/filtrado', function ($request, $response, $args) {
    //return Compra::all()->toJson();
    $todosLosCompras=CompraControler::Filtrado($request, $response, $args);
    return $todosLosCompras;
  })->add($VerificaToken);
};