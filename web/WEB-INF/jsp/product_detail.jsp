<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html>
<html lang="en">

    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <meta name="description" content="">
        <meta name="author" content="Ansonika">
        <title>Allaia | Bootstrap eCommerce Template - ThemeForest</title>

        <!-- Favicons--><link rel="shortcut icon" href="${pageContext.request.contextPath}/img/logo/logo1.jpg" type="image/x-icon">
        <link rel="apple-touch-icon" type="image/x-icon" href="img/apple-touch-icon-57x57-precomposed.png">
        <link rel="apple-touch-icon" type="image/x-icon" sizes="72x72" href="img/apple-touch-icon-72x72-precomposed.png">
        <link rel="apple-touch-icon" type="image/x-icon" sizes="114x114" href="img/apple-touch-icon-114x114-precomposed.png">
        <link rel="apple-touch-icon" type="image/x-icon" sizes="144x144" href="img/apple-touch-icon-144x144-precomposed.png">

        <!-- GOOGLE WEB FONT -->
        <link rel="preconnect" href="https://fonts.googleapis.com">
        <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
        <link href="https://fonts.googleapis.com/css2?family=Roboto:wght@300;400;500;700&display=swap" rel="stylesheet">

        <!-- BASE CSS -->
        <link href="${pageContext.request.contextPath}/css/bootstrap.min.css" rel="stylesheet">
        <link href="${pageContext.request.contextPath}/css/style.css" rel="stylesheet">

        <!-- SPECIFIC CSS -->
        <link href="${pageContext.request.contextPath}/css/product_page.css" rel="stylesheet">

        <!-- YOUR CUSTOM CSS -->
        <link href="${pageContext.request.contextPath}/css/custom.css" rel="stylesheet">

    </head>

    <body>

        <div id="page">

            <%@include file="header.jsp" %>
            <!-- /header -->

            <main>
                <div class="container margin_30">
                    <div class="countdown_inner">-20% This offer ends in <div data-countdown="2019/05/15" class="countdown"></div>
                    </div>
                    <div class="row">
                        <div class="col-md-6">
                            <div class="all">
                                <div class="prod_picture">
                                    <div class="owl-carousel owl-theme main">
                                        <img src="${pageContext.request.contextPath}/${product.picture}" alt="${product.productName}" class="item-box"/>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-6">
                            <div class="breadcrumbs">
                                <ul>
                                    <li><a href="#">Home</a></li>
                                    <li><a href="#">Category</a></li>
                                    <li>Page active</li>
                                </ul>
                            </div>
                            <!-- /page_header -->
                            <div class="prod_info">
                                <h2>${product.productName}</h2>
                                <span class="rating"><i class="icon-star voted"></i><i class="icon-star voted"></i><i class="icon-star voted"></i><i class="icon-star voted"></i><i class="icon-star"></i><em>4 reviews</em></span>
                                <br/>
                                <br/>
                                <br/>
                                <p>
                                <h1>Description</h1>
                                <br>
                                <div style="font-size: 14px">${product.description}</div>
                                </p>

                                <div>
                                    <iframe width="560" height="315" src="${product.audioFile}?autoplay=1" frameborder="0" allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
                                </div>

                                <div class="prod_options">

                                </div>
                            </div>
                            <!-- /row -->
                        </div>
                        <!-- /container -->

                        <div class="tabs_product">
                            <div class="container">
                                <ul class="nav nav-tabs" role="tablist">
                                    <li class="nav-item">
                                        <a id="tab-A" href="#pane-A" class="nav-link active" data-bs-toggle="tab" role="tab">Reviews</a>
                                    </li>
                                </ul>
                            </div>
                        </div>
                        <!-- /tabs_product -->
                        <div class="tab_content_wrapper">
                            <div class="container">
                                <div class="tab-content" role="tablist">
                                    <div id="pane-A" class="card tab-pane fade active show" role="tabpanel" aria-labelledby="tab-A">
                                        <div class="card-header" role="tab" id="heading-A">
                                            <h5 class="mb-0">
                                                <a class="collapsed" data-bs-toggle="collapse" href="#collapse-A" aria-expanded="false" aria-controls="collapse-A">
                                                    Reviews
                                                </a>
                                            </h5>
                                        </div>
                                        <div id="collapse-A" class="collapse" role="tabpanel" aria-labelledby="heading-A">
                                            <div class="card-body">
                                                <div class="row">
                                                    <c:forEach items="${listFeebackProductMemberByID}" var="feedback">
                                                        <div class="col-lg-6">
                                                            <div class="review_content">
                                                                <div class="clearfix add_bottom_10">
                                                                    <span class="rating">
                                                                        <c:forEach var="i" begin="1" end="${feedback.numberStars}" step="1">
                                                                            <i class="icon-star"></i>
                                                                        </c:forEach>
                                                                        <em><c:out value="${feedback.numberStars}"/>/5</em>
                                                                    </span>
                                                                    <em>
                                                                        <fmt:parseDate value="${feedback.createdAt}" var="parsedDate" pattern="yyyy-MM-dd HH:mm:ss.SSS" />
                                                                        <fmt:formatDate value="${parsedDate}" pattern="HH:mm:ss dd-MM-yyyy" />
                                                                    </em>
                                                                </div>
                                                                <h6><c:out value="${feedback.memberName}"/></h6>
                                                                <p><c:out value="${feedback.content}"/></p>
                                                            </div>
                                                        </div>
                                                    </c:forEach>
                                                </div>
                                                <!-- /row -->

                                                <p class="text-end"><a href="${pageContext.request.contextPath}/index.htm" class="btn_1">Leave a review</a></p>
                                            </div>
                                            <!-- /card-body -->
                                        </div>
                                    </div>
                                    <!-- /TAB A -->

                                    <!-- /tab B -->
                                </div>
                                <!-- /tab-content -->
                            </div>
                            <!-- /container -->
                        </div>
                        <!-- /tab_content_wrapper -->

                        <div class="container margin_60_35">
                            <div class="main_title">
                                <h2>Related</h2>
                                <span>Products</span>
                                <p>Cum doctus civibus efficiantur in imperdiet deterruisset.</p>
                            </div>
                            <div class="owl-carousel owl-theme products_carousel">
                                <div class="item">
                                    <div class="grid_item">
                                        <span class="ribbon new">New</span>
                                        <figure>
                                            <a href="product-detail-1.html">
                                                <img class="owl-lazy" src="img/products/product_placeholder_square_medium.jpg" data-src="img/products/shoes/4.jpg" alt="">
                                            </a>
                                        </figure>
                                        <div class="rating"><i class="icon-star voted"></i><i class="icon-star voted"></i><i class="icon-star voted"></i><i class="icon-star voted"></i><i class="icon-star"></i></div>
                                        <a href="product-detail-1.html">
                                            <h3>ACG React Terra</h3>
                                        </a>
                                        <div class="price_box">
                                            <span class="new_price">$110.00</span>
                                        </div>
                                        <ul>
                                            <li><a href="#0" class="tooltip-1" data-bs-toggle="tooltip" data-bs-placement="left" title="Add to favorites"><i class="ti-heart"></i><span>Add to favorites</span></a></li>
                                            <li><a href="#0" class="tooltip-1" data-bs-toggle="tooltip" data-bs-placement="left" title="Add to compare"><i class="ti-control-shuffle"></i><span>Add to compare</span></a></li>
                                            <li><a href="#0" class="tooltip-1" data-bs-toggle="tooltip" data-bs-placement="left" title="Add to cart"><i class="ti-shopping-cart"></i><span>Add to cart</span></a></li>
                                        </ul>
                                    </div>
                                    <!-- /grid_item -->
                                </div>
                                <!-- /item -->
                                <div class="item">
                                    <div class="grid_item">
                                        <span class="ribbon new">New</span>
                                        <figure>
                                            <a href="product-detail-1.html">
                                                <img class="owl-lazy" src="img/products/product_placeholder_square_medium.jpg" data-src="img/products/shoes/5.jpg" alt="">
                                            </a>
                                        </figure>
                                        <div class="rating"><i class="icon-star voted"></i><i class="icon-star voted"></i><i class="icon-star voted"></i><i class="icon-star voted"></i><i class="icon-star"></i></div>
                                        <a href="product-detail-1.html">
                                            <h3>Air Zoom Alpha</h3>
                                        </a>
                                        <div class="price_box">
                                            <span class="new_price">$140.00</span>
                                        </div>
                                        <ul>
                                            <li><a href="#0" class="tooltip-1" data-bs-toggle="tooltip" data-bs-placement="left" title="Add to favorites"><i class="ti-heart"></i><span>Add to favorites</span></a></li>
                                            <li><a href="#0" class="tooltip-1" data-bs-toggle="tooltip" data-bs-placement="left" title="Add to compare"><i class="ti-control-shuffle"></i><span>Add to compare</span></a></li>
                                            <li><a href="#0" class="tooltip-1" data-bs-toggle="tooltip" data-bs-placement="left" title="Add to cart"><i class="ti-shopping-cart"></i><span>Add to cart</span></a></li>
                                        </ul>
                                    </div>
                                    <!-- /grid_item -->
                                </div>
                                <!-- /item -->
                                <div class="item">
                                    <div class="grid_item">
                                        <span class="ribbon hot">Hot</span>
                                        <figure>
                                            <a href="product-detail-1.html">
                                                <img class="owl-lazy" src="img/products/product_placeholder_square_medium.jpg" data-src="img/products/shoes/8.jpg" alt="">
                                            </a>
                                        </figure>
                                        <div class="rating"><i class="icon-star voted"></i><i class="icon-star voted"></i><i class="icon-star voted"></i><i class="icon-star voted"></i><i class="icon-star"></i></div>
                                        <a href="product-detail-1.html">
                                            <h3>Air Color 720</h3>
                                        </a>
                                        <div class="price_box">
                                            <span class="new_price">$120.00</span>
                                        </div>
                                        <ul>
                                            <li><a href="#0" class="tooltip-1" data-bs-toggle="tooltip" data-bs-placement="left" title="Add to favorites"><i class="ti-heart"></i><span>Add to favorites</span></a></li>
                                            <li><a href="#0" class="tooltip-1" data-bs-toggle="tooltip" data-bs-placement="left" title="Add to compare"><i class="ti-control-shuffle"></i><span>Add to compare</span></a></li>
                                            <li><a href="#0" class="tooltip-1" data-bs-toggle="tooltip" data-bs-placement="left" title="Add to cart"><i class="ti-shopping-cart"></i><span>Add to cart</span></a></li>
                                        </ul>
                                    </div>
                                    <!-- /grid_item -->
                                </div>
                                <!-- /item -->
                                <div class="item">
                                    <div class="grid_item">
                                        <span class="ribbon off">-30%</span>
                                        <figure>
                                            <a href="product-detail-1.html">
                                                <img class="owl-lazy" src="img/products/product_placeholder_square_medium.jpg" data-src="img/products/shoes/2.jpg" alt="">
                                            </a>
                                        </figure>
                                        <div class="rating"><i class="icon-star voted"></i><i class="icon-star voted"></i><i class="icon-star voted"></i><i class="icon-star voted"></i><i class="icon-star"></i></div>
                                        <a href="product-detail-1.html">
                                            <h3>Okwahn II</h3>
                                        </a>
                                        <div class="price_box">
                                            <span class="new_price">$90.00</span>
                                            <span class="old_price">$170.00</span>
                                        </div>
                                        <ul>
                                            <li><a href="#0" class="tooltip-1" data-bs-toggle="tooltip" data-bs-placement="left" title="Add to favorites"><i class="ti-heart"></i><span>Add to favorites</span></a></li>
                                            <li><a href="#0" class="tooltip-1" data-bs-toggle="tooltip" data-bs-placement="left" title="Add to compare"><i class="ti-control-shuffle"></i><span>Add to compare</span></a></li>
                                            <li><a href="#0" class="tooltip-1" data-bs-toggle="tooltip" data-bs-placement="left" title="Add to cart"><i class="ti-shopping-cart"></i><span>Add to cart</span></a></li>
                                        </ul>
                                    </div>
                                    <!-- /grid_item -->
                                </div>
                                <!-- /item -->
                                <div class="item">
                                    <div class="grid_item">
                                        <span class="ribbon off">-50%</span>
                                        <figure>
                                            <a href="product-detail-1.html">
                                                <img class="owl-lazy" src="img/products/product_placeholder_square_medium.jpg" data-src="img/products/shoes/3.jpg" alt="">
                                            </a>
                                        </figure>
                                        <div class="rating"><i class="icon-star voted"></i><i class="icon-star voted"></i><i class="icon-star voted"></i><i class="icon-star voted"></i><i class="icon-star"></i></div>
                                        <a href="product-detail-1.html">
                                            <h3>Air Wildwood ACG</h3>
                                        </a>
                                        <div class="price_box">
                                            <span class="new_price">$75.00</span>
                                            <span class="old_price">$155.00</span>
                                        </div>
                                        <ul>
                                            <li><a href="#0" class="tooltip-1" data-bs-toggle="tooltip" data-bs-placement="left" title="Add to favorites"><i class="ti-heart"></i><span>Add to favorites</span></a></li>
                                            <li><a href="#0" class="tooltip-1" data-bs-toggle="tooltip" data-bs-placement="left" title="Add to compare"><i class="ti-control-shuffle"></i><span>Add to compare</span></a></li>
                                            <li><a href="#0" class="tooltip-1" data-bs-toggle="tooltip" data-bs-placement="left" title="Add to cart"><i class="ti-shopping-cart"></i><span>Add to cart</span></a></li>
                                        </ul>
                                    </div>
                                    <!-- /grid_item -->
                                </div>
                                <!-- /item -->
                            </div>
                            <!-- /products_carousel -->
                        </div>
                        <!-- /container -->

                        <div class="feat">
                            <div class="container">
                                <ul>
                                    <li>
                                        <div class="box">
                                            <i class="ti-gift"></i>
                                            <div class="justify-content-center">
                                                <h3>Free Shipping</h3>
                                                <p>For all oders over $99</p>
                                            </div>
                                        </div>
                                    </li>
                                    <li>
                                        <div class="box">
                                            <i class="ti-wallet"></i>
                                            <div class="justify-content-center">
                                                <h3>Secure Payment</h3>
                                                <p>100% secure payment</p>
                                            </div>
                                        </div>
                                    </li>
                                    <li>
                                        <div class="box">
                                            <i class="ti-headphone-alt"></i>
                                            <div class="justify-content-center">
                                                <h3>24/7 Support</h3>
                                                <p>Online top support</p>
                                            </div>
                                        </div>
                                    </li>
                                </ul>
                            </div>
                        </div>
                        <!--/feat-->

                        </main>
                        <!-- /main -->

                        <%@include file="footer.jsp" %>s
                        <!--/footer-->
                    </div>
                    <!-- page -->

                    <div id="toTop"></div><!-- Back to top button -->

                    <div class="top_panel">
                        <div class="container header_panel">
                            <a href="#0" class="btn_close_top_panel"><i class="ti-close"></i></a>
                            <label>1 product added to cart</label>
                        </div>
                        <!-- /header_panel -->
                        <div class="item">
                            <div class="container">
                                <div class="row">
                                    <div class="col-md-7">
                                        <div class="item_panel">
                                            <figure>
                                                <img src="img/products/product_placeholder_square_small.jpg" data-src="img/products/shoes/1.jpg" class="lazy" alt="">
                                            </figure>
                                            <h4>1x Armor Air X Fear</h4>
                                            <div class="price_panel"><span class="new_price">${product.price}</span><span class="percentage">${product.sale}</span> <span class="old_price">$160.00</span></div>
                                        </div>
                                    </div>
                                    <div class="col-md-5 btn_panel">
                                        <a href="cart.html" class="btn_1 outline">View cart</a> <a href="checkout.html" class="btn_1">Checkout</a>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <!-- /item -->
                        <div class="container related">
                            <h4>Who bought this product also bought</h4>
                            <div class="row">
                                <div class="col-md-4">
                                    <div class="item_panel">
                                        <a href="#0">
                                            <figure>
                                                <img src="img/products/product_placeholder_square_small.jpg" data-src="img/products/shoes/2.jpg" alt="" class="lazy">
                                            </figure>
                                        </a>
                                        <a href="#0">
                                            <h5>Armor Okwahn II</h5>
                                        </a>
                                        <div class="price_panel"><span class="new_price">$90.00</span></div>
                                    </div>
                                </div>
                                <div class="col-md-4">
                                    <div class="item_panel">
                                        <a href="#0">
                                            <figure>
                                                <img src="img/products/product_placeholder_square_small.jpg" data-src="img/products/shoes/3.jpg" alt="" class="lazy">
                                            </figure>
                                        </a>
                                        <a href="#0">
                                            <h5>Armor Air Wildwood ACG</h5>
                                        </a>
                                        <div class="price_panel"><span class="new_price">$75.00</span><span class="percentage">-20%</span> <span class="old_price">$155.00</span></div>
                                    </div>
                                </div>
                                <div class="col-md-4">
                                    <div class="item_panel">
                                        <a href="#0">
                                            <figure>
                                                <img src="img/products/product_placeholder_square_small.jpg" data-src="img/products/shoes/4.jpg" alt="" class="lazy">
                                            </figure>
                                        </a>
                                        <a href="#0">
                                            <h5>Armor ACG React Terra</h5>
                                        </a>
                                        <div class="price_panel"><span class="new_price">$110.00</span></div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <!-- /related -->
                    </div>
                    <!-- /add_cart_panel -->

                    <!-- Size modal -->
                    <div class="modal fade" tabindex="-1" role="dialog" aria-labelledby="size-modal" id="size-modal" aria-hidden="true">
                        <div class="modal-dialog modal-dialog-centered modal-lg">
                            <div class="modal-content">
                                <div class="modal-header">
                                    <h5 class="modal-title">Size guide</h5>
                                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                                </div>
                                <div class="modal-body">
                                    <p>Lorem ipsum dolor sit amet, et velit propriae invenire mea, ad nam alia intellegat. Aperiam mediocrem rationibus nec te. Tation persecuti accommodare pro te. Vis et augue legere, vel labitur habemus ocurreret ex.</p>
                                    <div class="table-responsive">
                                        <table class="table table-striped table-sm sizes">
                                            <tbody><tr>
                                                    <th scope="row">US Sizes</th>
                                                    <td>6</td>
                                                    <td>6,5</td>
                                                    <td>7</td>
                                                    <td>7,5</td>
                                                    <td>8</td>
                                                    <td>8,5</td>
                                                    <td>9</td>
                                                    <td>9,5</td>
                                                    <td>10</td>
                                                    <td>10,5</td>
                                                </tr>
                                                <tr>
                                                    <th scope="row">Euro Sizes</th>
                                                    <td>39</td>
                                                    <td>39</td>
                                                    <td>40</td>
                                                    <td>40-41</td>
                                                    <td>41</td>
                                                    <td>41-42</td>
                                                    <td>42</td>
                                                    <td>42-43</td>
                                                    <td>43</td>
                                                    <td>43-44</td>
                                                </tr>
                                                <tr>
                                                    <th scope="row">UK Sizes</th>
                                                    <td>5,5</td>
                                                    <td>6</td>
                                                    <td>6,5</td>
                                                    <td>7</td>
                                                    <td>7,5</td>
                                                    <td>8</td>
                                                    <td>8,5</td>
                                                    <td>9</td>
                                                    <td>9,5</td>
                                                    <td>10</td>
                                                </tr>
                                                <tr>
                                                    <th scope="row">Inches</th>
                                                    <td>9.25"</td>
                                                    <td>9.5"</td>
                                                    <td>9.625"</td>
                                                    <td>9.75"</td>
                                                    <td>9.9375"</td>
                                                    <td>10.125"</td>
                                                    <td>10.25"</td>
                                                    <td>10.5"</td>
                                                    <td>10.625"</td>
                                                    <td>10.75"</td>
                                                </tr>
                                                <tr>
                                                    <th scope="row">CM</th>
                                                    <td>23,5</td>
                                                    <td>24,1</td>
                                                    <td>24,4</td>
                                                    <td>24,8</td>
                                                    <td>25,4</td>
                                                    <td>25,7</td>
                                                    <td>26</td>
                                                    <td>26,7</td>
                                                    <td>27</td>
                                                    <td>27,3</td>
                                                </tr>
                                            </tbody></table>
                                    </div>
                                    <!-- /table -->
                                </div>
                            </div>
                        </div>
                    </div>


                    <!-- COMMON SCRIPTS -->
                    <script src="${pageContext.request.contextPath}/js/common_scripts.min.js"></script>
                    <script src="${pageContext.request.contextPath}/js/main.js"></script>

                    <!-- SPECIFIC SCRIPTS -->
                    <script  src="${pageContext.request.contextPath}/js/carousel_with_thumbs.js"></script>

                    </body>

                    </html>
