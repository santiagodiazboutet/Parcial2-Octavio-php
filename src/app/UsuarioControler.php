<?php
namespace App\Models;
use App\Models\Usuario;
use App\Models\IApiControler;

include_once __DIR__ . '/Usuario.php';
include_once __DIR__ . '/IApiControler.php';

use Psr\Http\Message\ResponseInterface as Response;
use Psr\Http\Message\ServerRequestInterface as Request;


class UsuarioControler implements IApiControler 
{
 	public function Beinvenida($request, $response, $args) {
      $response->getBody()->write("GET => Bienvenido!!! ,a UTN FRA SlimFramework");
    
    return $response;
    }
    
     public function TraerTodos($request, $response, $args) {
       	//return Usuario::all()->toJson();
        $todosLosUsuarios=Usuario::all();
        $newResponse = $response->withJson($todosLosUsuarios, 200);  
        return $newResponse;
    }
    public function TraerUno($request, $response, $args) {
     	//complete el codigo
     	$newResponse = $response->withJson("sin completar", 200);  
    	return $newResponse;
    }
   
      public function CargarUno($request, $response, $args) {
        //complete el codigo

        $usuario = new Usuario();
        $usuario->nombre = $request->getParsedBodyParam('nombre');
        $clave = hash("sha256",$request->getParsedBodyParam('clave'));
        $usuario->clave = $clave;
        $usuario->sexo = $request->getParsedBodyParam('sexo');
        $usuario->perfil = $request->getParsedBodyParam('perfil');
        $usuario->save();
         $newResponse = $response->withJson($usuario, 201);  
      return $newResponse;    
      }


      
      public function BorrarUno($request, $response, $args) {
      //complete el codigo
      $_usuario = $request->getParsedBodyParam('usuario', '');

      $usuario = new Usuario();
      $usuario->body = $_usuario;
      $usuario->nombre = $request->getAttribute('nombre');
      $clave = hash("sha256",$request->getAttribute('clave'));
      $usuario->sexo = $request->getAttribute('sexo');
      $usuario->perfil = $request->getAttribute('perfil');
      $usuario->save();
       $newResponse = $response->withJson("subido", 201);  
    return $newResponse;
    }
     
     public function ModificarUno($request, $response, $args) {
       //complete el codigo
       $usuario = new Usuario();
       $usuario->nombre = $request->getParsedBodyParam('nombre');

      $user= Usuario::where('nombre',$usuario->nombre)->first();

      if(null!==$request->getParsedBodyParam('perfil')){
      $user->perfil=$request->getParsedBodyParam('perfil');}
      if(null!==$request->getParsedBodyParam('sexo')){
      $user->sexo=$request->getParsedBodyParam('sexo');}
      if(null!==$request->getParsedBodyParam('clave')){
      $user->clave=hash("sha256",$request->getParsedBodyParam('clave'));
      }

      $user->update();





     	$newResponse = $response->withJson($user, 200);  
		return 	$newResponse;
    }

    public static function getIdbyToken($token){
      return Usuario::where('nombre','=',$token->nombre)->first();


    }


  
}