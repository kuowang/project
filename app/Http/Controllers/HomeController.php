<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

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
        print_r($this->user());
        return view('home');
    }
}
