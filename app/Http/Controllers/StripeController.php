<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Session;
use Stripe;

class StripeController extends Controller
{
    public function stripe()
    {
        return view('stripe');
    }

    public function stripePost(Request $request)
    {
        Stripe\Stripe::setApiKey(env('sk_test_51L0mGuSB5cmGu4Y4AtODBGMlqRuyW2OGFqLpI4BukUuXP9mNJ4I7Wnpna2HShhnwv9Popay9cLtEhfjcOCKUkJjR00cNUDJSs8'));
        Stripe\Charge::create ([
                "amount" => 100 * 100,
                "currency" => "usd",
                "source" => $request->stripeToken,
                "description" => "Test payment from tutsmake.com."
        ]);
   
        Session::flash('success', 'Payment successful!');
           
        return back();
    }
}
