<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
    "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">

    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <meta name="description" content="">
        <meta name="author" content="Ansonika">
        <title>Allaia | Bootstrap eCommerce Template - ThemeForest</title>

        <!-- Favicons-->
        <link rel="shortcut icon" href="img/favicon.ico" type="image/x-icon">
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
        <link href="${pageContext.request.contextPath}/css/account.css" rel="stylesheet">

        <!-- YOUR CUSTOM CSS -->
        <link href="${pageContext.request.contextPath}/css/custom.css" rel="stylesheet">

    </head>

    <body>

        <div id="page">

            <%@include file="header.jsp" %>
            <!-- /header -->

            <main class="bg_gray">

                <div class="container margin_30">
                    <div class="page_header">
                        <div class="breadcrumbs">
                            <ul>
                                <li><a href="#">Home</a></li>
                                <li><a href="#">Category</a></li>
                                <li>Page active</li>
                            </ul>
                        </div>
                        <h1>Sign In or Create an Account</h1>
                    </div>
                    <!-- /page_header -->
                    <div class="row justify-content-center">
                        <div class="col-xl-6 col-lg-6 col-md-8">
                            <div class="box_account">
                                <h3 class="client">Already Client</h3>
                                <div class="form_container">
                                    <div class="row no-gutters">

                                    </div>
                                    <form action="${pageContext.request.contextPath}/login/alogin.htm" method="post">
                                        <div class="form-group">
                                            <input type="text" class="form-control" name="phone" id="phone" placeholder="Phone*">
                                        </div>
                                        <div class="form-group">
                                            <input type="password" class="form-control" name="password" id="password" value="" placeholder="Password*">
                                        </div>
                                        <div class="clearfix add_bottom_15">
                                            <div class="checkboxes float-start">
                                                <label class="container_check">Remember me
                                                    <input type="checkbox">
                                                    <span class="checkmark"></span>
                                                </label>
                                            </div>
                                            <div class="float-end"><a id="forgot" href="javascript:void(0);">Lost Password?</a></div>
                                        </div>
                                        <div class="text-center"><input type="submit" value="Log In" class="btn_1 full-width"></div>
                                    </form>

                                    <div id="forgot_pw">
                                        <div class="form-group">
                                            <input type="email" class="form-control" name="email_forgot" id="email_forgot" placeholder="Type your email">
                                        </div>
                                        <p>A new password will be sent shortly.</p>
                                        <div class="text-center"><input type="submit" value="Reset Password" class="btn_1"></div>
                                    </div>
                                </div>
                                <!-- /form_container -->
                            </div>
                            <!-- /box_account -->
                            <div class="row">
                                <div class="col-md-6 d-none d-lg-block">
                                    <ul class="list_ok">
                                        <li>Find Locations</li>
                                        <li>Quality Location check</li>
                                        <li>Data Protection</li>
                                    </ul>
                                </div>
                                <div class="col-md-6 d-none d-lg-block">
                                    <ul class="list_ok">
                                        <li>Secure Payments</li>
                                        <li>H24 Support</li>
                                    </ul>
                                </div>
                            </div>
                            <!-- /row -->
                        </div>
                        <div class="col-xl-6 col-lg-6 col-md-8">
                            <div class="box_account">
                                <h3 class="new_client">New Client</h3> <small class="float-right pt-2">* Required Fields</small>
                                <div class="form_container">
                                    <div class="form-group">
                                        <input type="email" class="form-control" name="email" id="email_2" placeholder="Email*">
                                    </div>
                                    <div class="form-group">
                                        <input type="password" class="form-control" name="password_in_2" id="password_in_2" value="" placeholder="Password*">
                                    </div>
                                    <hr>
                                    <div class="form-group">
                                        <label class="container_radio" style="display: inline-block; margin-right: 15px;">Private
                                            <input type="radio" name="client_type" checked value="private">
                                            <span class="checkmark"></span>
                                        </label>
                                        <label class="container_radio" style="display: inline-block;">Company
                                            <input type="radio" name="client_type" value="company">
                                            <span class="checkmark"></span>
                                        </label>
                                    </div>
                                    <div class="private box">
                                        <div class="row no-gutters">
                                            <div class="private box">
                                                <div class="row no-gutters">
                                                    <div class="col-12">
                                                        <div class="form-group">
                                                            <input type="text" class="form-control" placeholder="full name">
                                                        </div>
                                                    </div>
                                                    <div class="col-12">
                                                        <div class="form-group">
                                                            <input type="text" class="form-control" placeholder="Full Address*">
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            <!-- /row -->
                                            <div class="row no-gutters">
                                                <div class="col-6 pr-1">
                                                    <div class="form-group">
                                                        <input type="text" class="form-control" placeholder="City*">
                                                    </div>
                                                </div>
                                                <div class="col-6 pl-1">
                                                    <div class="form-group">
                                                        <input type="text" class="form-control" placeholder="Postal Code*">
                                                    </div>
                                                </div>
                                            </div>
                                            <!-- /row -->

                                            <div class="row no-gutters">
                                                <div class="col-6 pr-1">
                                                    <div class="form-group">
                                                        <div class="custom-select-form">
                                                            <select class="wide add_bottom_10" name="country" id="country">
                                                                <option value="" selected>Country*</option>
                                                                <option value="Europe">Europe</option>
                                                                <option value="United states">United states</option>
                                                                <option value="Asia">Asia</option>
                                                            </select>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="col-6 pl-1">
                                                    <div class="form-group">
                                                        <input type="text" class="form-control" placeholder="Telephone *">
                                                    </div>
                                                </div>
                                            </div>
                                            <!-- /row -->

                                        </div>
                                        
                                            <!-- /row -->
                                            <div class="row no-gutters">
                                                <div class="col-6 pr-1">
                                                    <div class="form-group">
                                                        <input type="text" class="form-control" placeholder="City*">
                                                    </div>
                                                </div>
                                                <div class="col-6 pl-1">
                                                    <div class="form-group">
                                                        <input type="text" class="form-control" placeholder="Postal Code*">
                                                    </div>
                                                </div>
                                            </div>
                                            <!-- /row -->
                                            <div class="row no-gutters">
                                                <div class="col-6 pr-1">
                                                    <div class="form-group">
                                                        <div class="custom-select-form">
                                                            <select class="wide add_bottom_10" name="country" id="country_2">
                                                                <option value="" selected>Country*</option>
                                                                <option value="Europe">Europe</option>
                                                                <option value="United states">United states</option>
                                                                <option value="Asia">Asia</option>
                                                            </select>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="col-6 pl-1">
                                                    <div class="form-group">
                                                        <input type="text" class="form-control" placeholder="Telephone *">
                                                    </div>
                                                </div>
                                            </div>
                                            <!-- /row -->
                                        </div>
                                        <!-- /company -->
                                        <hr>
                                        <div class="form-group">
                                            <label class="container_check">Accept <a href="#0">Terms and conditions</a>
                                                <input type="checkbox">
                                                <span class="checkmark"></span>
                                            </label>
                                        </div>
                                        <div class="text-center"><input type="submit" value="Register" class="btn_1 full-width"></div>
                                    </div>
                                    <!-- /form_container -->
                                </div>
                                <!-- /box_account -->
                            </div>
                        </div>
                        <!-- /row -->
                    </div>
                    <!-- /container -->
            </main>
            <!--/main-->

            <%@include file="footer.jsp" %>
            <!--/footer-->
        </div>
        <!-- page -->

        <div id="toTop"></div><!-- Back to top button -->

        <!-- COMMON SCRIPTS -->
        <script src="${pageContext.request.contextPath}/js/common_scripts.min.js"></script>
        <script src="${pageContext.request.contextPath}/js/main.js"></script>



    </body>
</html>