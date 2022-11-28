<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

class CheckoutController extends Controller
{
    public function checkout()
    {
        return view('stripe.checkout');
    }

    public function finalcheck(Request $request)
    {
        $data = $request->all();
        return view('stripe.checkoutform', ['data'=> $data]);
    }

    public function paymentprocess(Request $request){
        \Stripe\Stripe::setApiKey( env('STRIPE_SECRET_KEY') );
        $charge = \Stripe\Charge::create([
            'source' => $_POST['stripeToken'],
            'description' => $request->description,
            'amount' => $request->amount*100,
            'currency' => 'inr',
          ]);

          if($charge->status == 'succeeded'){
            return redirect('/checkout')->with('msg', 'Payment successfull!');
          }else{
            return redirect('/checkout')->with('msg', 'Payment unsuccessfull. Please try again!!!');
          }
    }
}
        