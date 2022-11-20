<?php

namespace App\Notifications;

use Illuminate\Bus\Queueable;
// use Illuminate\Contracts\Queue\ShouldQueue;
use Illuminate\Notifications\Messages\MailMessage;
use Illuminate\Notifications\Notification;

class AdminEmailNotification extends Notification 
{
    use Queueable;

    /**
     * Create a new notification instance.
     *
     * @return void
     */
    public function __construct()
    {
        //
    }

    public function via($notifiable)
    {
        return ['mail'];
    }

    public function toMail($notifiable)
    {
       return (new MailMessage)
                    ->line('Order Purchase Successfully')
                    ->line('Check Your Admin Dashboard For Customer Details');
                   // ->action('Notification Action', url('/'))
                    //->line('Thank you for purchasing  our product!');

        //if i return to in view page 
        //return (new MailMessage)->view('frontend.email.email-contact');
                
    }


    public function toArray($notifiable)
    {
        return [
            //
        ];
    }
}
