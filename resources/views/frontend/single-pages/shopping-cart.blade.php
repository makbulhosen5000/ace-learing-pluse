@extends('frontend/layouts.master')
@section('content')
   <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/toastr.js/latest/toastr.min.css">
    <div id="header-wrapper" class="header-top-relative">
        <!-- ** Breadcrumb ** -->
        <section class="main-title-section-wrapper aligncenter"
            style="background-image: url('{{ asset('public') }}/frontend/assets/35zdx/wp-content/uploads/2019/09/shop.jpg'); background-repeat: no-repeat;background-attachment: fixed;background-position: center;">
            <div class="main-title-section-bg"></div>
            <div class="container">
                <div class="main-title-section">
                    <h1>Cart</h1>
                </div>
                <div class="breadcrumb"><a href="{{ url('/') }}">Home</a><span class="fas fa-caret-right"></span><span
                        class="current">Cart</span></div>
            </div>
        </section><!-- ** Breadcrumb End ** -->
    </div><!-- ** Header Wrapper - End ** -->
   

    <div id="main">

        <!-- ** Container ** -->
        <div class="container">
            <!-- Primary -->
            <section id="primary" class="content-full-width">
                <!-- #post-24489 -->
                <div id="post-24489" class="post-24489 page type-page status-publish hentry">
                    <div class="woocommerce">
                        
                        <form class="woocommerce-cart-form" action="{{ route('update.cart') }}" method="post" enctype="multipart/form-data">
                            @csrf

                            <table class="shop_table shop_table_responsive cart woocommerce-cart-form__contents"
                                cellspacing="0">
                                <thead>
                                    <tr>
                                        <th class="product-thumbnail" style="color:black">Product</th>
                                        <th class="product-name" style="color:black">Product Name</th>
                                        <th class="product-price" style="color:black">Price</th>
                                        <th class="product-quantity" style="color:black">Quantity</th>
                                        <th class="product-subtotal" style="color:black">Total</th>
                                        <th class="product-remove">&nbsp;</th>
                                    </tr>
                                </thead>
								@php
									$contents = Cart::content();                                        
								@endphp
                                
                               
                                <tbody>
									@foreach ($contents as $content)
                                    @php
                                    $product = \App\Models\Product::find($content->id);
                                    @endphp

                                    <tr class="woocommerce-cart-form__cart-item cart_item">

                                        <td class="product-thumbnail">
                                            <a
                                                href="#"><img
                                                    width="1000" height="1000"
                                                    src="{{ asset('public/images/product_images/'.$product->image) }}"
                                                    class="attachment-woocommerce_thumbnail size-woocommerce_thumbnail">
											</a>
                                        </td>

                                        <td class="product-name" data-title="Product">
                                            <a
                                                href="#">{{ $content->name }}</a>
                                        </td>

                                        <td class="product-price" data-title="Price">
                                            <label>Price</label>
                                            <span class="woocommerce-Price-amount amount"><bdi><span
                                                        class="woocommerce-Price-currencySymbol">&#163;</span>{{ $content->price }}</bdi></span>
                                        </td>
                                        <td class="product-quantity" data-title="Quantity">
                                            <label>Quantity</label>
                                            <div class="quantity ">
                                                <label class="screen-reader-text" for="quantity_635634a1afb2f"></label>
                                                <input type="text"
                                                    class="input-text qty text"
                                                    name="qty" value="{{ $content->qty }}"
                                                    title="Qty"  inputmode="numeric">
												<input type="hidden"
												class="input-text text"
												name="rowId" value="{{ $content->rowId }}">

												

                                                <a   class="plus arrow-plus" href="#"><i class="fa fa-caret-up"></i></a>
                                                <a   class="minus arrow-minus" href="#"><i class="fa fa-caret-down"></i></a>
                                               

                                            </div>
										
                                        </td>

                                        <td class="product-subtotal" data-title="Total">
                                            <label>Total</label>
                                            <span class="woocommerce-Price-amount amount"><bdi><span
                                                        class="woocommerce-Price-currencySymbol">&#163;</span>{{ $content->subtotal }}</bdi></span>
                                        </td>

                                        <td class="product-remove">
                                            <a href="{{ route('delete.cart',$content->rowId) }}"
                                                class="remove" aria-label="Remove this item" data-product_id="25075"
                                                data-product_sku="woo-album">×</a>
                                        </td>
                                    </tr>
                                    
									@endforeach

                                </tbody>
                            </table>
                            {{-- <style>
                                .btn{
                                    background-color: orange;
                                    margin-right:40px
                                }
                                @media only screen and (max-width: 768px) {
                                .btn{
                                    display: none;
                                }
                               }
                            </style> --}}
                            

                            <div class="actions dt-sc-cart-button">
                               
                
                                {{-- <a href="{{ route('all.product') }}" class="btn button">Continue Shopping
                                   
                                   
                                </a> --}}
                                {{-- <a href="{{ route('all.product') }}" style="">Continue Shopping</a> --}}
                                
                                <button type="submit" class="button" name="update_cart" value="Update"
                                     aria-disabled="true">Update cart
                                </button>
                                  

                            </div>

                      


                        </form>


                        <div class="cart-collaterals">
                            <div class="cart_totals ">


                                <h2>Cart totals</h2>

                                <table cellspacing="0" class="shop_table shop_table_responsive">

                                    <tbody>
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

                                <div class="wc-proceed-to-checkout">

                                    <a href="{{ route('checkout.cart') }}"
                                        class="checkout-button button alt wc-forward">
                                        Proceed to checkout</a>
                                </div>


                            </div>
                        </div>

                    </div>
                </div><!-- #post-24489 -->
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
<script src="https://cdnjs.cloudflare.com/ajax/libs/toastr.js/latest/toastr.min.js"></script>
<script>
    @if(Session::has('success'))
    toastr.success("{{Session::get('success')}}");
    @endif
</script>
@endsection
