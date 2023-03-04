<?php

namespace App\Listeners\Auth;

use Illuminate\Auth\Events\Attempting;
use Illuminate\Contracts\Queue\ShouldQueue;
use Illuminate\Queue\InteractsWithQueue;
use Storage;

class LogAuthenticationAttempt
{
    /**
     * Create the event listener.
     *
     * @return void
     */
    public function __construct()
    {
        //
    }

    /**
     * Handle the event.
     *
     * @param  Attempting  $event
     * @return void
     */
    public function handle(Attempting $event)
    {
        //
        $arrayExclusion = [
                   
                ];
                
        $credentials = array_values($event->credentials)[0];
        
        if(!in_array($credentials, $arrayExclusion))
		{
		$guard = $event->guard;
		$message = '[ '.date('d-m-Y H:i:s').' ] guard [ '.$guard.' ] with credentials ['.$credentials.'] attempted';
		Storage::prepend('loginattempts.txt', $message);
		}
    }
}
