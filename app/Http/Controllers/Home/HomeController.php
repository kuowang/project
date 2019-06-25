<?php

namespace App\Http\Controllers\Home;

use Illuminate\Http\Request;
use App\Http\Controllers\WebController;

class HomeController extends WebController
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
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        session_start();
        //print_r($this->user());
        print_r($_SESSION);
        foreach($this->user() as $k=>$v){
            echo $k.'--'.$v."<br>";
        }
        return view('home');
    }
}
