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
                    <h1>Order Details</h1>
                </div>
                <div class="breadcrumb"><a href="{{ url('/') }}">Home</a><span class="fas fa-caret-right"></span><span
                        class="current">Order Details</span></div>
            </div>
        </section><!-- ** Breadcrumb End ** -->

    </div><!-- ** Header Wrapper - End ** -->
    {{-- main start --}}
    <div id="main">

        <!-- ** Container ** -->
        <div class="container">
            <!-- Primary -->
            <section id="primary" class="content-full-width" style="margin-top: 53px">
                <!-- #post-24490 -->
                <div id="post-24490" class="post-24490 page type-page status-publish hentry">
                    <div class="woocommerce">
                        @php
                        $contents = Cart::content();
                        @endphp
                        @foreach ($contents as $content)
                                       
                        @php
                            $product = \App\Models\Product::find($content->id);
                            
                        @endphp
                      
                        <div class="woocommerce-order">
                            <p class="woocommerce-notice woocommerce-notice--success woocommerce-thankyou-order-received">
                                Thank you. Your order has been received.</p>

                            <ul class="woocommerce-order-overview woocommerce-thankyou-order-details order_details">

                                <li class="woocommerce-order-overview__order order">
                                    Order number: <strong>{{ $product->id }}</strong>
                                </li>

                                <li class="woocommerce-order-overview__date date">
                                    Qty: <strong>{{ $content->qty }}</strong>
                                </li>


                                <li class="woocommerce-order-overview__total total">
                                    Total: <strong><span class="woocommerce-Price-amount amount"><bdi><span
                                                    class="woocommerce-Price-currencySymbol">&#163;</span>{{ Cart::priceTotal(); }}</bdi></span></strong>
                                </li>

                                <li class="woocommerce-order-overview__payment-method method">
                                    Payment method: <strong>Direct bank transfer</strong>
                                </li>

                            </ul>


                            
                        <div class="cart-collaterals">
                            <div class="cart_totals ">


                                <h2>Your Order Details</h2>

                                <table cellspacing="0" class="shop_table shop_table_responsive">
                                  
                                    <tbody>
                                       
                                        <tr class="cart-subtotal">
                                            <th>Name</th>
                                            <td data-title="Subtotal"><span
                                                    class="woocommerce-Price-amount amount"><bdi><span
                                                            class="woocommerce-Price-currencySymbol"></span>{{ $content->name }}</bdi></span>
                                            </td>
                                        </tr>
                                        <tr class="cart-subtotal">
                                            <th>Qty</th>
                                            <td data-title="Subtotal"><span
                                                    class="woocommerce-Price-amount amount"><bdi><span
                                                            class="woocommerce-Price-currencySymbol"></span>{{ $content->qty }}</bdi></span>
                                            </td>
                                        </tr>

                                        <tr class="cart-subtotal">
                                            <th>Subtotal</th>
                                            <td data-title="Subtotal"><span
                                                    class="woocommerce-Price-amount amount"><bdi><span
                                                            class="woocommerce-Price-currencySymbol">&#163;</span>{{ Cart::priceTotal(); }}</bdi></span>
                                            </td>
                                        </tr>




                                        <tr class="order-total">
                                            <th>Total</th>
                                            <td data-title="Total"><strong><span
                                                        class="woocommerce-Price-amount amount"><bdi><span
                                                                class="woocommerce-Price-currencySymbol">&#163;</span>{{ Cart::priceTotal(); }}</bdi></span></strong>
                                            </td>
                                        </tr>

                                    
                                    </tbody>
                                </table>



                            </div>
                        </div>



                        </div>
                        @endforeach
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
        {{-- main end --}}
      <!-- for toaster massage -->
<script src="https://cdnjs.cloudflare.com/ajax/libs/toastr.js/latest/toastr.min.js"></script>
<script>
    @if(Session::has('success'))
    toastr.success("{{Session::get('success')}}");
    @endif
</script>
@endsection
