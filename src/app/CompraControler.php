<?php
namespace App\Models;
use App\Models\Compra;
use App\Models\IApiControler;
use App\Models\AutentificadorJWT;
use App\Models\UsuarioControler;


include_once __DIR__ . '/UsuarioControler.php';
include_once __DIR__ . '/Compra.php';
include_once __DIR__ . '/IApiControler.php';
include_once __DIR__ . '/AutentificadorJWT.php';
use Psr\Http\Message\ResponseInterface as Response;
use Psr\Http\Message\ServerRequestInterface as Request;


class CompraControler implements IApiControler 
{
 	
    
     public function TraerTodos($request, $response, $args) {
        $todosLosCompras='';
        $token=AutentificadorJWT::tokenDecode($request);
        if($token->perfil==='administrador'){
        $todosLosCompras=Compra::all();
        $str=array();
        $ficheros1  = scandir("../IMGCompras/");
          $i=-1;
            
          
          foreach ($todosLosCompras as $compra ) {
          array_push($str,$compra->id,$compra->precio,$compra->articulo,$compra->tipo_pago,$compra->created_at);
          
          foreach ($ficheros1 as $fichero) {
            $var=explode(".",$fichero);
            $var2=explode("-",$var[0]);

            $i++;
            
            
              # code...
               
                if(end($var) != "jpg" && end($var) != "jpeg" && end($var) != "gif"
                            && end($var) != "png") {
                                continue;
                            }

               if($var2[2]==$compra->id){
            
            array_push($str, "<img src= 'C:\\xampp\\htdocs\\Full-API-REST-Skeleton-master\\IMGCompras\\" . $fichero . "' alt=" . " border=3 height=120px width=160px><br>");
            }
            }
        }
      }else{
          $id_usuario=UsuarioControler::getIdbyToken($token);
          $todosLosCompras = Compra::where('id_usuario',$id_usuario->id)->get();
          $str=array();
          $ficheros1  = scandir("../IMGCompras/");
          array_push($str,$id_usuario->nombre);
          $i=-1;

        foreach ($todosLosCompras as $compra ) {
          array_push($str,$compra->id,$compra->precio,$compra->articulo,$compra->tipo_pago,$compra->created_at);
            foreach ($ficheros1 as $fichero) {
            $var=explode(".",$fichero);
            $var2=explode("-",$var[0]);
            $i++;
            if(end($var) != "jpg" && end($var) != "jpeg" && end($var) != "gif"
            && end($var) != "png") {
                continue;
            }
            
              # code...

               if($var2[2]==$compra->id){
            
            array_push($str, "<img src= ../IMGCompras/" . $fichero . " alt=" . " border=3 height=120px width=160px><br>");

            }
            }
           

        }
        }
        $newResponse = $response->withJson($str, 200);  
        return $newResponse;
    }
    public function TraerUno($request, $response, $args) {
     	//complete el codigo
     	$newResponse = $response->withJson("sin completar", 200);  
    	return $newResponse;
    }
   
      public function CargarUno($request, $response, $args) {
        //complete el codigo
        $token=AutentificadorJWT::tokenDecode($request);
        $id_usuario=UsuarioControler::getIdbyToken($token);
        $Compra = new Compra();
        $Compra->id_usuario=$id_usuario->id;
        $Compra->tipo_pago = $request->getParsedBodyParam('tipo');
        $Compra->articulo = $request->getParsedBodyParam('articulo');
        $Compra->precio = $request->getParsedBodyParam('precio');
        $Compra->save();
        



        $newResponse = $response->withJson($Compra,201);  
      return $newResponse;    
      }


      
      public function BorrarUno($request, $response, $args) {
      //complete el codigo
      $compra = new compra();
      $compra->id = $request->getParsedBodyParam('id');

      $compra2=compra::find($compra->id);

     

      $compra2->delete();





      $newResponse = $response->withJson($compra2, 200);  
   return 	$newResponse;
   }
     
     public function ModificarUno($request, $response, $args) {
     	//complete el codigo
     	$newResponse = $response->withJson("sin completar", 200);  
		return 	$newResponse;
    }
    public static function TraerPorUsr($request, $response, $args) {
      //complete el codigo

      $id_usuario=Usuario::where('nombre',$request->getParsedBodyParam('nombre'))->first();

      $todosLosCompras = Compra::where('id_usuario',$id_usuario->id)->get();
      $str=array();
      $ficheros1  = scandir("../IMGCompras/");
      array_push($str,$id_usuario->nombre);
      $i=-1;
        
      echo ("aca");
      foreach ($todosLosCompras as $compra ) {
        array_push($str,$compra->id,$compra->precio,$compra->articulo,$compra->tipo_pago,$compra->created_at);
      foreach ($ficheros1 as $fichero) {
        $var=explode(".",$fichero);
        $var2=explode("-",$var[0]);
        $i++;
        if(end($var) != "jpg" && end($var) != "jpeg" && end($var) != "gif"
        && end($var) != "png") {
            continue;
        }
        
          # code...
          
           if($var2[2]==$compra->id){
            
            array_push($str, "<img src= ../IMGCompras/" . $fichero . " alt=" . " border=3 height=120px width=160px><br>");

        }
    }
    }
    $newResponse = $response->withJson($str, 200);  
    return $newResponse;
   }

   public static function TraerPorArticulo($request, $response, $args) {
    //complete el codigo


    $todosLosCompras = Compra::where('articulo',$request->getParsedBodyParam('articulo'))->get();
    $str=array();
    $ficheros1  = scandir("../IMGCompras/");
    $i=-1;
      echo("llego");
    
    foreach ($todosLosCompras as $compra ) {
      array_push($str,$compra->id,$compra->id_usuario,$compra->precio,$compra->articulo,$compra->tipo_pago,$compra->created_at);
    foreach ($ficheros1 as $fichero) {
      $var=explode(".",$fichero);
      $var2=explode("-",$var[0]);
      $i++;
      if(end($var) != "jpg" && end($var) != "jpeg" && end($var) != "gif"
      && end($var) != "png") {
          continue;
      }
      
        # code...
        
         if($var2[2]==$compra->id){
          
          array_push($str, "<img src= ../IMGCompras/" . $fichero . " alt=" . " border=3 height=120px width=160px><br>");

      }
  }
  }
  $newResponse = $response->withJson($str, 200);  
  return $newResponse;
 }
 public static function TraerPorPago($request, $response, $args) {
  //complete el codigo


  $todosLosCompras = Compra::where('tipo_pago',$request->getParsedBodyParam('tipo_pago'))->get();
  $str=array();
  $ficheros1  = scandir("../IMGCompras/");
  $i=-1;
    
  
  foreach ($todosLosCompras as $compra ) {
    array_push($str,$compra->id,$compra->id_usuario,$compra->precio,$compra->articulo,$compra->tipo_pago,$compra->created_at);
  foreach ($ficheros1 as $fichero) {
    $var=explode(".",$fichero);
    $var2=explode("-",$var[0]);
    $i++;
    if(end($var) != "jpg" && end($var) != "jpeg" && end($var) != "gif"
    && end($var) != "png") {
        continue;
    }
    
      # code...
      
       if($var2[2]==$compra->id){
        
        array_push($str, "<img src= ../IMGCompras/" . $fichero . " alt=" . " border=3 height=120px width=160px><br>");

    }
}
}
$newResponse = $response->withJson($str, 200);  
return $newResponse;
}










   public static function Filtrado($request, $response, $args) {
    //complete el codigo


    $newResponse='';
    if($request->getParsedBodyParam('tipo')==='usuario'){
      $newResponse=CompraControler::TraerPorUsr($request, $response, $args);
    }
    else if($request->getParsedBodyParam('tipo')==='articulo'){

      $newResponse=CompraControler::TraerPorArticulo($request, $response, $args);

    }
    else if($request->getParsedBodyParam('tipo')==='pago'){
      echo ("aca");
      $newResponse=CompraControler::TraerPorPago($request, $response, $args);

    }




 
  return $newResponse;
 }


  
}