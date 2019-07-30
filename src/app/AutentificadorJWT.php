<?php
namespace App\Models;
use Firebase\JWT\JWT;



class AutentificadorJWT
{
    private static $claveSecreta = 'ClaveSuperSecreta@';
    private static $tipoEncriptacion = ['HS256'];
    private static $aud = null;
    
    public static function CrearToken($request)
    {
        $ahora = time();
        
        
        /*
         parametros del payload
         https://tools.ietf.org/html/rfc7519#section-4.1
         + los que quieras ej="'app'=> "API REST CD 2019" 
        */
        $payload = array(
        	'iat'=>$ahora,
            'exp' => $ahora + (360000),
            'aud' => self::Aud(),
            'nombre' => $request->getParsedBodyParam('nombre'),
            'perfil' => $request->getParsedBodyParam('perfil'),
            'sexo' => $request->getParsedBodyParam('sexo'),
            'app'=> "API REST PARCIAL 2 SANTIAGO DIAZ BOUTET UTN FRA"
        );
        return JWT::encode($payload, self::$claveSecreta);
    }
    private static function Aud()
    {
        $aud = '';
        
        if (!empty($_SERVER['HTTP_CLIENT_IP'])) {
            $aud = $_SERVER['HTTP_CLIENT_IP'];
        } elseif (!empty($_SERVER['HTTP_X_FORWARDED_FOR'])) {
            $aud = $_SERVER['HTTP_X_FORWARDED_FOR'];
        } else {
            $aud = $_SERVER['REMOTE_ADDR'];
        }
        
        $aud .= @$_SERVER['HTTP_USER_AGENT'];
        $aud .= gethostname();
        
        return sha1($aud);
    }

    public static function tokenDecode($request){
        $_token=$request->getHeader('Token');
        $token=$_token[0];
        
        // las siguientes lineas lanzan una excepcion, de no ser correcto o de haberse terminado el tiempo       
      
      
            $decodificado = JWT::decode(
            $token,
            self::$claveSecreta,
            self::$tipoEncriptacion
        );
       
        return $decodificado;
    }



}