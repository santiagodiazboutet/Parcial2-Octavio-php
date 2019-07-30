<?php 
    namespace App\Models\Middleware;
    use App\Models\UsuarioControler;
    use App\Models\Usuario;


    class AutenticacionUsuario{

        public function __invoke($request, $response, $next)
        {
        $auth = $request->getHeader('token');
        $usuario = new Usuario();
        $usuario->nombre = $request->getParsedBodyParam('nombre');
        $clave = hash("sha256",$request->getParsedBodyParam('clave'));
        $usuario->clave = $clave;
        $usuario->sexo = $request->getParsedBodyParam('sexo');
        $usuario->perfil = $request->getParsedBodyParam('perfil');
        $user = Usuario::where('nombre',$usuario->nombre)->first();

        if(!$user){
            

            return $response->withJson("Usuario no existe",401);;
        }else if ($usuario->clave!=$user->clave) {
           
            return  $response->withJson("Clave erronea",401);
            
        }else if ($usuario->perfil!=$user->perfil) {
            

            return $response->withJson("tipo de perfil erroneo",401);
        }else if ($usuario->sexo!=$user->sexo) {
            

            return $response->withJson("sexo erroneo",401);
        }
        
        
        $response = $next($request, $response);
        return $response;
    }







    }
