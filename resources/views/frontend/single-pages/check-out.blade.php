@extends('frontend/layouts.master')
@section('content')
  <!-- tostr massage -->
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/toastr.js/latest/toastr.min.css">
    <div id="header-wrapper" class="header-top-relative">
        <!-- ** Breadcrumb ** -->
        <section class="main-title-section-wrapper aligncenter"
            style="background-image: url('{{ asset('public') }}/frontend/assets/35zdx/wp-content/uploads/2019/09/shop.jpg'); background-repeat: no-repeat;background-attachment: fixed;background-position: center;">
            <div class="main-title-section-bg"></div>
            <div class="container">
                <div class="main-title-section">
                    <h1>Checkout</h1>
                </div>
                <div class="breadcrumb"><a href="{{ url('/') }}">Home</a><span class="fas fa-caret-right"></span><span
                        class="current">Checkout</span></div>
            </div>
        </section><!-- ** Breadcrumb End ** -->

    </div><!-- ** Header Wrapper - End ** -->
    {{-- main start --}}
    <div id="main">

        <!-- ** Container ** -->
        <div class="container">
            <!-- Primary -->
            <section id="primary" class="content-full-width">
                <!-- #post-24490 -->
                <div id="post-24490" class="post-24490 page type-page status-publish hentry">
                    <div class="woocommerce">
                        <div class="woocommerce-notices-wrapper"></div>
                        <div class="woocommerce-checkout-header">

                            <div class="woocommerce-notices-wrapper"></div>
                            <div class="woocommerce-checkout-header-login"></div>

                        </div>


                        <form name="checkout" method="post" class="checkout woocommerce-checkout"
                            action="{{ route('customer.store') }}" enctype="multipart/form-data">
                            @csrf
                            {{-- @if (Session::get('success'))
                                <div class="">
                                    <strong style="background-color: yellow">{{ Session::get('success') }}</strong>
                                </div>
                            @endif --}}
                           

                            <div class="col2-set" id="customer_details">
                                <div class="col-1">
                                    <div class="woocommerce-billing-fields">

                                        <h3>Billing details</h3>

                                        <div class="woocommerce-billing-fields__field-wrapper">
                                            <p class="form-row form-row-first validate-required"
                                                id="billing_first_name_field" data-priority="10"><label
                                                    for="billing_first_name" class="">Full Name&nbsp;<abbr
                                                        class="required" title="required">*</abbr></label><span
                                                    class="woocommerce-input-wrapper"><input type="text"
                                                        class="input-text " name="name" id=""
                                                        placeholder="Enter Your  Name" value="" required ></span>
                                            </p>
                                            <p class="form-row form-row-last validate-required" id=""
                                                data-priority="20"><label for="billing_last_name" class="">Phone
                                                    &nbsp;<abbr class="required" title="required">*</abbr></label><span
                                                    class="woocommerce-input-wrapper"><input type="tel"
                                                        class="input-text " name="phone" id=""
                                                        placeholder="Enter Your Phone Number" value="" autocomplete="family-name" required></span>
                                            </p>
                                            <p class="form-row address-field validate-required form-row-wide"
                                                id="billing_address_1_field" data-priority="50"><label
                                                    for="billing_address_1" class=""> Country&nbsp;<abbr
                                                        class="required" title="required">*</abbr></label><span
                                                    class="woocommerce-input-wrapper"><input type="text"
                                                        class="input-text " name="country" id="billing_address_1"
                                                        placeholder="Enter Your Country Name" value=""
                                                        autocomplete="address-line1"
                                                        data-placeholder="House number and street name" required></span>
                                            </p>
                                            <p class="form-row address-field validate-required form-row-wide"
                                                id="billing_address_1_field" data-priority="50"><label
                                                    for="billing_address_1" class=""> address&nbsp;<abbr
                                                        class="required" title="required">*</abbr></label><span
                                                    class="woocommerce-input-wrapper"><input type="text"
                                                        class="input-text " name="address" id="billing_address_1"
                                                        placeholder="House number and street name" value=""
                                                        autocomplete="address-line1"
                                                        data-placeholder="House number and street name" required></span>
                                            </p>
                                            <p class="form-row form-row-first validate-required"
                                                id="billing_first_name_field" data-priority="10"><label
                                                    for="billing_first_name" class="">City&nbsp;<abbr
                                                        class="required" title="required">*</abbr></label><span
                                                    class="woocommerce-input-wrapper"><input type="text"
                                                        class="input-text " name="city"
                                                        id="billing_first_name" placeholder="Enter Your City Name" value=""
                                                        autocomplete="given-name"></span></p>
                                            <p class="form-row form-row-last validate-required"
                                                id="billing_last_name_field" data-priority="20"><label
                                                    for="billing_last_name" class="">Post Code
                                                    &nbsp;<abbr class="required" title="required">*</abbr></label><span
                                                    class="woocommerce-input-wrapper"><input type="tel"
                                                        class="input-text " name="postcode" placeholder="Enter Your Post Code"
                                                        id="billing_last_name" placeholder="" value=""
                                                        autocomplete="family-name" required></span></p>
                                        </div>

                                    </div>

                                </div>

                                <div class="col-2">
                                    <div class="woocommerce-shipping-fields">
                                    </div>
                                    <div class="woocommerce-additional-fields">



                                        <h3>Additional information</h3>


                                        <div class="woocommerce-additional-fields__field-wrapper">
                                            <p class="form-row notes" id="order_comments_field" data-priority=""><label
                                                    for="order_comments" class="">Order notes&nbsp;<span
                                                        class="optional">(optional)</span></label><span
                                                    class="woocommerce-input-wrapper">
                                                    <textarea name="message" class="input-text " id="order_comments"
                                                        placeholder="Notes about your order, e.g. special notes for delivery." rows="2" cols="5"></textarea>
                                                </span></p>
                                        </div>


                                    </div>
                                </div>
                            </div>



                            <div class="woocommerce-checkout-order-review-wrap">

                                <h3 id="order_review_heading">Your order</h3>
                                {{-- <a href="" onclick="window.print()">Print</a> --}}

                                <div id="order_review" class="woocommerce-checkout-review-order">
                                    <table class="shop_table woocommerce-checkout-review-order-table">
                                        @php
                                            $contents = Cart::content();
                                            
                                        @endphp

                                        <tbody>
                                            @foreach ($contents as $content)
                                                @php
                                                    $product = \App\Models\Product::find($content->id);
                                                @endphp
                                                <tr class="cart_item">

                                                    <td class="product-name">
                                                        <img width="1000" height="1000"
                                                            src="{{ asset('public/images/product_images/' . $product->image) }}"
                                                            class="attachment-woocommerce_thumbnail size-woocommerce_thumbnail"
                                                            alt="" loading="lazy"
                                                            height="50px" width="50px">
                                                        <div class="checkout-review-order-details"> <span
                                                                class="checkout-review-order-title">
                                                                {{ $content->name }}
                                                            </span> <strong class="product-quantity">×
                                                                {{ $content->qty }}</strong>
                                                            <div class="product-total"> <span
                                                                    class="woocommerce-Price-amount amount"><bdi><span
                                                                            class="woocommerce-Price-currencySymbol">&#163;</span>{{ $content->subtotal }}</bdi></span>
                                                            </div>
                                                        </div>
                                                    </td>

                                                    <td class="product-total">
                                                        <span class="woocommerce-Price-amount amount"><bdi><span
                                                                    class="woocommerce-Price-currencySymbol">&#163;</span>{{ $content->subtotal }}</bdi></span>
                                                    </td>
                                                </tr>
                                            @endforeach
                                        </tbody>
                                        <tfoot>

                                            <tr class="cart-subtotal">
                                                <th>Subtotal</th>
                                                <td><span class="woocommerce-Price-amount amount"><bdi><span
                                                                class="woocommerce-Price-currencySymbol">&#163;</span>{{ Cart::priceTotal() }}
                                                        </bdi></span>
                                                </td>
                                            </tr>






                                            <tr class="order-total">
                                                <th>Total</th>
                                                <td><strong><span class="woocommerce-Price-amount amount"><bdi><span
                                                                    class="woocommerce-Price-currencySymbol">&#163;</span>
                                                                {{ Cart::priceTotal() }} </bdi></span></strong>
                                                </td>
                                            </tr>


                                        </tfoot>

                                    </table>

                                    <div id="payment" class="woocommerce-checkout-payment">
                                        <ul class="wc_payment_methods payment_methods methods">
                                            <li class="wc_payment_method payment_method_bacs">
                                                <input id="payment_method_bacs" type="radio" class="input-radio"
                                                    name="payment_method" value="bacs" checked="checked"
                                                    data-order_button_text="">

                                                <label for="payment_method_bacs">
                                                    Direct bank transfer </label>
                                                <div class="payment_box payment_method_bacs">
                                                    <p>Make your payment directly into our bank account. Please use your
                                                        Order ID as the payment reference. Your order will not be shipped
                                                        until the funds have cleared in our account.</p>
                                                </div>
                                            </li>
                                            <li class="wc_payment_method payment_method_cheque">
                                                <input id="payment_method_cheque" type="radio" class="input-radio"
                                                    name="payment_method" value="cheque" data-order_button_text="">

                                                <label for="payment_method_cheque">
                                                    Check payments </label>
                                                <div class="payment_box payment_method_cheque" style="display:none;">
                                                    <p>Please send a check to Store Name, Store Street, Store Town, Store
                                                        State / County, Store Postcode.</p>
                                                </div>
                                            </li>
                                            <li class="wc_payment_method payment_method_cod">
                                                <input id="payment_method_cod" type="radio" class="input-radio"
                                                    name="payment_method" value="cod" data-order_button_text="">

                                                <label for="payment_method_cod">
                                                    Cash on delivery </label>
                                                <div class="payment_box payment_method_cod" style="display:none;">
                                                    <p>Pay with cash upon delivery.</p>
                                                </div>
                                            </li>
                                        </ul>
                                        <div class="form-row place-order">
                                            <noscript>
                                                Since your browser does not support JavaScript, or it is disabled, please
                                                ensure you click the <em>Update Totals</em> button before placing your
                                                order. You may be charged more than the amount stated above if you fail to
                                                do so. <br /><button type="submit" class="button alt"
                                                    name="woocommerce_checkout_update_totals" value="Update totals">Update
                                                    totals</button>
                                            </noscript>

                                            <div class="woocommerce-terms-and-conditions-wrapper">
                                                <div class="woocommerce-privacy-policy-text">
                                                    <p>Your personal data will be used to process your order, support your
                                                        experience throughout this website, and for other purposes described
                                                        in our <a href="https://business.yell.com/websites-privacy-cookie-policy/" class="woocommerce-privacy-policy-link"
                                                            target="_blank">privacy policy</a>.</p>
                                                </div>
                                            </div>


                                             <button type="submit" class="button alt"
                                                name="woocommerce_checkout_place_order" id="place_order"
                                                value="Place order" data-value="Place order">Place order</button>

                                            <input type="hidden" id="woocommerce-process-checkout-nonce"
                                                name="woocommerce-process-checkout-nonce" value=""><input
                                                type="hidden" name="_wp_http_referer"
                                                value="/?wc-ajax=update_order_review">
                                        </div>
                                    </div>

                                </div>


                            </div>

                        </form>

                    </div>
                </div><!-- #post-24490 -->
                <div class="dt-sc-hr"></div>
                <div class="dt-sc-clear"></div>
                <!-- ** Comment Entries ** -->
                <section class="commententries">

                    <div id="comments" class="comments-area"></div><!-- .comments-area -->
                </section>
            </section><!-- Primary End -->
        </div>
        <!-- ** Container End ** -->

    </div>
    {{-- main end --}}
      <!-- for toaster massage -->
<script src="https://cdnjs.cloudflare.com/ajax/libs/toastr.js/latest/toastr.min.js"></script>
<script>
    @if(Session::has('success'))
    toastr.success("{{Session::get('success')}}");
    @endif
</script>
@endsection
