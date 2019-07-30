<?php
    namespace App\Models\Middleware;
    use App\Models\UsuarioControler;
    use App\Models\Usuario;
    use Firebase\JWT\JWT;

class VerificaToken{
    private static $claveSecreta = 'ClaveSuperSecreta@';
    private static $tipoEncriptacion = ['HS256'];
    private static $aud = null;

    function __invoke($request,$response,$next)
    {
        $_token=$request->getHeader('Token');
        $token=$_token[0];
        if(empty($token))
        {
            return $response->withJson("Debe loguearse",401);
        } 
        // las siguientes lineas lanzan una excepcion, de no ser correcto o de haberse terminado el tiempo       
      
      try {
            $decodificado = JWT::decode(
            $token,
            self::$claveSecreta,
            self::$tipoEncriptacion
        );
        } catch (Exception $e) {
            return $response->withJson("Debe intentar loguearse nuevamente",401);
        } 
        
        // si no da error,  verifico los datos de AUD que uso para saber de que lugar viene  
        if($decodificado->aud !== self::Aud())
        {
            throw new Exception("No es el usuario valido");
        }
        $response = $next($request, $response);
        return $response;
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
}