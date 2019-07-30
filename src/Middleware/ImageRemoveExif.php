<?php
namespace App\Models\Middleware;

use App\Models\AutentificadorJWT;
use App\Models\Compra;
use Intervention\Image\ImageManagerStatic as Image;
use Ajaxray\PHPWatermark\Watermark;

include_once __DIR__ . '/../app/Compra.php';
include_once __DIR__ . '/../app/AutentificadorJWT.php';


class ImageRemoveExif
{

    public function __invoke ($request,$response,$next){
        
        $files = $request->getUploadedFiles();
          
        if($files['file']){
        
        $newfile=$files['file'];  
        $newfile_type = $newfile->getClientMediaType();
        $ext=explode("/",$newfile_type);
        $tokenusr=AutentificadorJWT::tokenDecode($request);
        $uploadFilename = $tokenusr->nombre . "-";
        $uploadFilename .= $request->getParsedBodyParam("articulo") . "-";
        $count = Compra::all()->count();
        $uploadFilename .= $count+1 . "." . $ext[1];
        $newfile->moveTo("../IMGCompras/" . $uploadFilename);
        $pngfile = __DIR__ . "/../IMGCompras/" . substr($uploadFilename,0,-4) . ".png";
        $pngfile2 = __DIR__ . "/../../IMGCompras/" . substr($uploadFilename,0,-4) . ".png";
        if('image/jpeg' == $newfile_type){
            $_img = imagecreatefromjpeg("../IMGCompras/raw/" . $uploadFilename);
            imagepng($_img,$pngfile);
        }
        Image::configure(array('driver' => 'gd'));

        echo ($pngfile);
        $watermark = Image::make($pngfile2);
        $watermark2 = Image::make('../watermark.png')->resize(200,200);
        $watermark->insert($watermark2);
        $watermark->save();
        $request = $request->withAttribute('png_filename', $pngfile);

        }
        $response =$next($request,$response);

        return $response;
    }



}
