<?php

namespace App\Http\Controllers\Frontend;

use App\Http\Controllers\Controller;
use App\Models\Contact;
use App\Models\Customer;
use App\Models\Logo;
use App\Models\Product;
use App\Models\User;
use App\Notifications\AdminEmailNotification;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Notification;




class CustomerController extends Controller
{

    //__ Store Customer  function__ //
    public function customerStore(Request $request)
    {
        // $validatedData = $request->validate([
        //     'name' => 'required|customers|max:255',
        //     'phone' => 'required',
        //     'address' => 'required'

        // ]);
        $user = User::all();
        // $delay = now()->addSeconds(10);
        
        //Notification by notify function
        //$user->notify(new AdminEmailNotification());

        //Notification by facades
        Notification::send($user, new AdminEmailNotification());



        $customer = new Customer();
        $customer->name = $request->name;
        $customer->phone = $request->phone;
        $customer->country = $request->country;
        $customer->address = $request->address;
        $customer->city = $request->city;
        $customer->postcode = $request->postcode;
        $customer->message = $request->message;
        $customer->save();
        return redirect()->route('customer.order')->with('success', 'Order Completed Successfully');
    }
       //__ customerOrder for Contact Us__ //
       public function customerOrder()
       {
        $data['products'] = Product::first();
        $data['logo'] = Logo::first();
        $data['contacts'] = Contact::first();
        return view('frontend.single-pages.customer-order',$data);
       }
       

    //__ User Email function for Contact Us__ //
    public function UserEmailView()
    {
        $mail['userEmail'] = Customer::orderBy('id', 'desc')->get();
        return view('frontend.Email.user-email-view', $mail);
    }
    
    //__ Contact Us Delete function__ //
    public function destroy($id)
    {
        $contactUs = Customer::find($id);
        $contactUs->delete();
        return redirect()->back();
        
    }
}
