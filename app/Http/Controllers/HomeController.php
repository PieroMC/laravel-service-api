<?php

namespace App\Http\Controllers;
use App\Models\Employee;
use App\Models\User;
use Auth;
use Illuminate\Http\Request;

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
    
        $page_name = "Home";
        $page_subpage = "Dashboard";
        $page_icon ="fa fa-home";
        
        $auth = Auth::user();
        $employees = Employee::all();
        foreach ($employees as $key) {
            if ($key->id == $auth->employee_id) {
                $user = $key;
            }
        }

        return view('home', compact("user", "page_name","page_subpage", "page_icon"));
    }

 
}
