<?php

namespace App\Http\Controllers;

use App\Models\User;
use App\Notifications\EmailNotification;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Notification;

class HomeController extends Controller
{
    /**
     * Create a new controller instance.
     *
     * @return void
     */
    public function __construct()
    {
        $this->middleware('auth');
    }

    /**
     * Show the application dashboard.
     *
     * @return \Illuminate\Contracts\Support\Renderable
     */
    public function index()
    {
        return view('backend.layouts.admin-home');
    }
    public function signIn(){
        return view('auth.login');
    }


    //__ email send notification function __//
     public function SendNotification(){
            $users = User::first();
            Notification::send($users, new EmailNotification);
            dd('ok');
     }
   

}
