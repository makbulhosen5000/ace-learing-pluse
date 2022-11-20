<?php

namespace App\Http\Controllers\Frontend;

use App\Http\Controllers\Controller;
use App\Models\About;
use App\Models\Contact;
use App\Models\Logo;
use App\Models\Product;
use App\Models\Slider;
use Illuminate\Http\Request;
use Cart;


class CartController extends Controller
{
    //__  Add To Cart function __//
    public function addToCart(Request $request)
    {


        $reqData = $request->all();
        $product = Product::where('id', $request->product_id)->first();
        if (!is_null($product)) {
            Cart::add([
                'id' => $product->id,
                'qty' => $request->qty,
                'price' => $product->price,
                'name' => $product->name,
                'image' => $product->image,
                'weight' => 550,
            ]);
            return redirect()->route('show.cart')->with('success', "Product Added Successfully");
        }
    }
    //__ Product Details function __//
    public function productDetails($slug)
    {
        $data['products'] = Product::where('slug', $slug)->get();
        $data['abouts'] = About::all();
        $data['logo'] = Logo::first();
        $data['sliders'] = Slider::all();
        $data['contacts'] = Contact::first();
        return view('frontend.single-pages.product-details', $data);
    }

    //__  show cart function __//
    public function showCart()
    {
        $data['products'] = Product::all();
        $data['abouts'] = About::all();
        $data['logo'] = Logo::first();
        $data['contacts'] = Contact::first();
        return view('frontend.single-pages.shopping-cart', $data);
    }

    //__  update cart function __//
    public function updateCart(Request $request)
    {

        //dd(Cart::content()) ;
        Cart::update($request->rowId, $request->qty);
        return redirect()->back()->with('success', "Product Updated Successfully");

    }

    //__  checkout cart function __//
    public function checkOut()
    {
        $data['products'] = Product::first();
        $data['logo'] = Logo::first();
        $data['contacts'] = Contact::first();
        return view('frontend.single-pages.check-out', $data);
        
    }


    //__  delete cart function __//
    public function deleteCart($rowId)
    {
        Cart::remove($rowId);
        return redirect()->back()->with('success', "Product Remove Successfully");
    }
}
