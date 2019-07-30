<?php
namespace App\Models\Middleware;

class FileFilter
{
    protected $allowedFiles = ['image/jpeg','image/png'];

    public function __invoke ($request,$response,$next){
        
        $files = $request->getUploadedFiles();
        if($files['file']){
        $newfile=$files['file'];    
        $newfile_type = $newfile->getClientMediaType();
        if(!in_array($newfile_type,$this->allowedFiles)){
            return $response->withStatus(415);
        }
        $request->withAttribute('filetype',$newfile_type);
    }

        $response =$next($request,$response);

        return $response;
    }



}