<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\DB;

use Illuminate\Http\Response;
use Illuminate\Support\Facades\Storage;
use App\Models\Project;
use App\Models\Tempproject;
use App\Models\Maintenance;

use File;

use Carbon\Carbon;
use Illuminate\Log\Logger;
use Log;

class DownloadController extends Controller
{
    /**
     * Create a new controller instance.
     *
     * @return void
     */
    public function __construct()
    {
        $this->middleware(['auth:web,admin']);
    }

    public function getMaintainReportFile($idx)
    {
        $srp = Maintenance::with('infra')->where('filename', $idx)->first();

        if(!empty($srp) )
        {
            // get pis folder, modify the column
            $instns = "/facility/infra/";
            $equipFolder = $srp->infra->name;
            $file_path = $instns.$equipFolder.'/';
            //dd($file_path);
            
            $headers = array(
              'Content-Type: application/pdf',
            );
            //original line below works
            return response()->download(storage_path("app/public/".$file_path.$idx)); //works
            //this line below does not work, left as an example
            //return response()->download(storage_path($file_path.$idx)); 
        }
        else {
            abort(404);  //404 page
        }
    }

}
