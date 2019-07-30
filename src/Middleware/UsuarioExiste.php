<?php 
    namespace App\Models\Middleware;
    use App\Models\UsuarioControler;
    use App\Models\Usuario;


    class UsuarioExiste{

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


        /*if ($user->clave!=$user->clave) {
            $response->withStatus(401);

            return $response;
        }
        */
        if($user){        
        return $response->withJson('Usuario ya existe');
        }
        $response = $next($request, $response);
        return $response;
    }







    }
