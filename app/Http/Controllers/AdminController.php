<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

class AdminController extends Controller
{

    //Login
    public function login(){
        return view('login');
    }

    //Submit Login
    public function authenticate(Request $request){
        $formFields = $request->validate([
            'email' => ['required', 'email'],
            'password' => 'required'
        ]);

        if(auth()->guard('admin')->attempt($formFields)){
            $request->session()->regenerate();
            return redirect('dashboard')->with('msg', 'You are now logged in!');
        }
        
        return back()->withErrors(['email' => 'Invalid Credentials']);
    }

    public function logout(Request $request){
        auth()->guard('admin')->logout();
        $request->session()->invalidate();
        $request->session()->regenerateToken();
        
        return redirect('login')->with('msg', 'Logged out successfully!');
    }
}
