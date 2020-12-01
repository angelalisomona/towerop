<?php

namespace App\Http\Controllers;

use App\User;
use Illuminate\Http\Request;
use App\Farmer;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Hash;
use Illuminate\Support\Facades\Validator;

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
       // $this->middleware('admin');
    }

    /**
     * Show the application dashboard.
     *
     * @return \Illuminate\Contracts\Support\Renderable
     */
//    public function index()
//    {
//        return view('home');
//
//    }
    // public function index()
    // {   $this->middleware('admin');

    //     if(Auth::user()->role_id == '2')
    //     {
    //         return view('admin.dashboard');
    //     }
    //     else
    //     {
    //         return view('admin.fdash');
    //     }
    // }
 public function index()
 {
     return view('home');
 }
//     public function insertform(){
//         return view('admin.fdash');
//     }
//     public function insert(Request $request){
//         $email = $request->input('email');
//         $data=array("email"=>$email);
//         DB::table('app')->insert($data);
//         echo "Record inserted successfully.<br/>";
//         echo '<a href = "/insert">Click Here</a> to go back.';
//     }

//     public function search_farmer(Request $request)
//     {
//         $farmer = Farmer::where('vz', '=', $request->targetId)->first();
//         return response()->json($farmer);
//     }
// //    protected function validator(array $data)
//    {
//        return Validator::make($data, [php artisan vendor:publish --tag="laratrust"
//            'sdate' => ['required', 'string'],
//            'nofbales' => ['required', 'string', 'min:1', 'max:300'],
//            'email' => ['required', 'email', 'min:10', 'max:255'],
//        ]);
//    }
//
//    /**
//     * Create a new user instance after a valid registration.
//     *
//     * @param  array  $data
//     * @return \App\User
//     */
//    protected function create(array $data)
//    {
//        return User::create([
//            'name' => $data['name'],
//            'district' => $data['district'],
//            'phone' => $data['phone'],
//            'email' => $data['email'],
//            'password' => Hash::make($data['password']),
//        ]);
//    }
}

