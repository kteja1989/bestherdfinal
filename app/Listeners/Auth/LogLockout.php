<?php

namespace App\Listeners\Auth;

use Illuminate\Auth\Events\Lockout;
use Illuminate\Contracts\Queue\ShouldQueue;
use Illuminate\Queue\InteractsWithQueue;
use Storage;

class LogLockout
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
     * @param  Lockout  $event
     * @return void
     */
    public function handle(Lockout $event)
    {
        $arrayExclusion = [
                  
                ];
                  
        $username = $event->user->name;
        
        if(!in_array($username, $arrayExclusion))
        {
            $message = '[ '.date('d-m-Y H:i:s').' ] user: [ '.$username.' ] locked out';
            Storage::prepend('lockouts.txt', $message); 
        }
    }
}
