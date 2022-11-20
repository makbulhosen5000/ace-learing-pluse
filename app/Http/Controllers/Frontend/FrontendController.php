<?php

namespace App\Http\Controllers\Frontend;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\Logo;
use App\Models\Category;
use App\Models\SubCategory;
use App\Models\CompaniesBrandLogo;
use App\Models\Slider;
use App\Models\About;
use App\Models\Career;
use App\Models\Team;
use App\Models\Service;
use App\Models\Contact;
use App\Models\ContactUs;
use App\Models\Medicine;
use App\Models\News;
use App\Models\Product;

use Session;
use Mail;


class FrontendController extends Controller
{
    //all header function is here
    public function index()
    {
        $data['logo'] = Logo::first();
        $data['sliders'] = Slider::all();
        $data['abouts'] = About::all();
        $data['contacts'] = Contact::first();
        $data['products'] = Product::all();
        $data['newses'] = News::all();
        return view('frontend.layouts.home', $data);
    }
     //__ News function__ //
     public function blog()
     {

         $data['products'] = Product::all();
         $data['abouts'] = About::all();
         $data['logo'] = Logo::first();
         $data['sliders'] = Slider::all();
         $data['contacts'] = Contact::first();
         $data['newses'] = News::all();
         return view('frontend.single-pages.news', $data);
     }
 
     //__ NewsDetails function__ //
     public function NewsDetails($slug)
     {
         $data['teams'] = Team::all();
         $data['products'] = Product::all();
         $data['abouts'] = About::all();
         $data['logo'] = Logo::first();
         $data['sliders'] = Slider::all();
         $data['contacts'] = Contact::first();
         $data['newses'] = News::where('slug',$slug)->get();
         return view('frontend.single-pages.news-details', $data);
     }
    //__ ProductList function__ //
    public function ProductList()
    {

        $data['abouts'] = About::all();
        $data['products'] = Product::all();
        $data['services'] = Service::all();
        $data['logo'] = Logo::first();
        $data['products'] = Product::all();
        $data['newses'] = News::all();
        return view('frontend.single-pages.product-list', $data);
    }


    //__ Shopping Cart function__ //
    public function ShoppingCart()
    {
        $data['categorieses'] = Category::all();


        $data['abouts'] = About::all();
        $data['products'] = Product::all();
        $data['services'] = Service::all();
        $data['logo'] = Logo::first();
        $data['contacts'] = Contact::first();
        $data['newses'] = News::all();
        return view('frontend.single-pages.shopping-cart', $data);
    }
    //__ About Us function__ //
    public function AboutUs()
    {
        $data['categorieses'] = Category::all();

        $data['products'] = Product::all();
        $data['services'] = Service::all();
        $data['abouts'] = About::all();
        $data['services'] = Service::all();
        $data['logo'] = Logo::first();
        $data['sliders'] = Slider::all();
        $data['contacts'] = Contact::first();
        $data['newses'] = News::all();
        return view('frontend.single-pages.about-us', $data);
    }


    //__ Contact Us function__ //
    public function ContactUs()
    {
        $data['categorieses'] = Category::all();
        $data['subCategories'] = SubCategory::all();
        $data['CompaniesBrandLogos'] = CompaniesBrandLogo::all();
        $data['products'] = Product::all();
        $data['services'] = Service::all();
        $data['abouts'] = About::all();
        $data['logo'] = Logo::first();
        $data['sliders'] = Slider::all();
        $data['contacts'] = Contact::first();
        $data['newses'] = News::all();
        return view('frontend.single-pages.contact-us', $data);
    }


    //__ Product Details function__ //
    public function allProduct()
    {
        $data['CompaniesBrandLogos'] = CompaniesBrandLogo::all();
        $data['abouts'] = About::all();
        $data['services'] = Service::all();
        $data['logo'] = Logo::first();
        $data['contacts'] = Contact::first();
        $data['categorieses'] = Category::all();
        $data['subCategories'] = SubCategory::all();
        $data['newses'] = News::all();
        $data['products'] = Product::all();
        return view('frontend.single-pages.all-product', $data);
    }
    //__ MedicineFeed Details function__ //
    public function BrainTraining()
    {
        $data['abouts'] = About::all();
        $data['services'] = Service::all();
        $data['logo'] = Logo::first();
        $data['contacts'] = Contact::first();
        $data['newses'] = News::all();

        return view('frontend.single-pages.brain-training', $data);
    }
    public function HomeSchooling()
    {
        $data['abouts'] = About::all();
        $data['services'] = Service::all();
        $data['logo'] = Logo::first();
        $data['contacts'] = Contact::first();
        $data['categorieses'] = Category::all();
        $data['subCategories'] = SubCategory::all();
        $data['newses'] = News::all();
        $data['medicines'] = Medicine::all();
        return view('frontend.single-pages.home-schooling', $data);
    }
    public function ScienceTuition()
    {
        $data['abouts'] = About::all();
        $data['services'] = Service::all();
        $data['logo'] = Logo::first();
        $data['contacts'] = Contact::first();
        $data['categorieses'] = Category::all();
        $data['subCategories'] = SubCategory::all();
        $data['newses'] = News::all();
        $data['medicines'] = Medicine::all();
        return view('frontend.single-pages.science-tuition', $data);
    }
    public function MathEnglishTuition()
    {
        $data['abouts'] = About::all();
        $data['services'] = Service::all();
        $data['logo'] = Logo::first();
        $data['contacts'] = Contact::first();
        $data['categorieses'] = Category::all();
        $data['subCategories'] = SubCategory::all();
        $data['newses'] = News::all();
        $data['medicines'] = Medicine::all();
        return view('frontend.single-pages.math-english-tuition', $data);
    }
    public function ElevenPluseTuition()
    {
        $data['abouts'] = About::all();
        $data['services'] = Service::all();
        $data['logo'] = Logo::first();
        $data['contacts'] = Contact::first();
        $data['categorieses'] = Category::all();
        $data['subCategories'] = SubCategory::all();
        $data['newses'] = News::all();
        $data['medicines'] = Medicine::all();
        return view('frontend.single-pages.eleven-pluse-tuition', $data);
    }
    public function EntrepreneurWorkshop()
    {
        $data['abouts'] = About::all();
        $data['services'] = Service::all();
        $data['logo'] = Logo::first();
        $data['contacts'] = Contact::first();
        $data['categorieses'] = Category::all();
        $data['subCategories'] = SubCategory::all();
        $data['newses'] = News::all();
        $data['medicines'] = Medicine::all();
        return view('frontend.single-pages.entrepreneur-workshop', $data);
    }


    //__ Store Contact Us function__ //
    public function ContactStore(Request $request)
    {
        $contactUs = new ContactUs();
        $contactUs->name = $request->name;
        $contactUs->phone = $request->phone;
        $contactUs->email = $request->email;
        $contactUs->looking_for = $request->looking_for;
        $contactUs->massage = $request->massage;
        $contactUs->save();
        $data = array(
            'name' => $request->name,
            'phone' => $request->phone,
            'email' => $request->email,
            'looking_for' => $request->looking_for,
            'massage' => $request->massage
        );

        Mail::send('frontend.email.email-contact', $data, function ($massage) {
            $massage->from('mayenuddin0406@gmail.com', 'AceLearningPlus');
            $massage->to('mayenuddin0406@gmail.com');
            $massage->subject('Thank you so much for contact with us');
        });
        Session::flash('success', 'Massage Sent Successfully');
        return redirect()->back();
    }

    //__ User Email function for Contact Us__ //
    public function UserEmailView()
    {
        $mail['userEmail'] = ContactUs::orderBy('id', 'desc')->get();
        return view('frontend.Email.user-email-view', $mail);
    }

    //__ Contact Us Delete function__ //
    public function destroy($id)
    {
        $contactUs = ContactUs::find($id);
        $contactUs->delete();
        return redirect()->back();
    }
}
