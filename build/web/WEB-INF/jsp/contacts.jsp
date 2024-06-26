<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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
        <link rel="shortcut icon" href="${pageContext.request.contextPath}/img/logo/logo1.jpg" type="image/x-icon">
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
        <!--<link href="${pageContext.request.contextPath}/css/cart.css" rel="stylesheet">-->
        <link href="${pageContext.request.contextPath}/css/contact.css" rel="stylesheet">

        <!-- YOUR CUSTOM CSS -->
        <link href="${pageContext.request.contextPath}/css/custom.css" rel="stylesheet">

    </head>
    <body>
        <div id="page">
            <%@include file="header.jsp" %>
            <!-- /header -->

            <main class="bg_gray">

                <div class="container margin_60">
                    <div class="main_title">
                        <h2>Contact Allaia</h2>
                        <p>Euismod phasellus ac lectus fusce parturient cubilia a nisi blandit sem cras nec tempor adipiscing rcu ullamcorper ligula.</p>
                    </div>
                    <div class="row justify-content-center">
                        <div class="col-lg-4">
                            <div class="box_contacts">
                                <i class="ti-support"></i>
                                <h2>Allaia Help Center</h2>
                                <a href="#0">+94 423-23-221</a> - <a href="#0">help@allaia.com</a>
                                <small>MON to FRI 9am-6pm SAT 9am-2pm</small>
                            </div>
                        </div>
                        <div class="col-lg-4">
                            <div class="box_contacts">
                                <i class="ti-map-alt"></i>
                                <h2>Allaia Showroom</h2>
                                <div>6th Forrest Ray, London - 10001 UK</div>
                                <small>MON to FRI 9am-6pm SAT 9am-2pm</small>
                            </div>
                        </div>
                        <div class="col-lg-4">
                            <div class="box_contacts">
                                <i class="ti-package"></i>
                                <h2>Allaia Orders</h2>
                                <a href="#0">+94 423-23-221</a> - <a href="#0">order@allaia.com</a>
                                <small>MON to FRI 9am-6pm SAT 9am-2pm</small>
                            </div>
                        </div>
                    </div>
                    <!-- /row -->				
                </div>
                <!-- /container -->
                <div class="bg_white">
                    <div class="container margin_60_35">
                        <form action="add.htm" method="post">
                            <div class="row">
                                <div class="col-lg-4 col-md-6 add_bottom_25">
                                    <div class="form-group">
                                        <h5 class="pb-3">Drop Us a Line</h5>
                                    </div>
                                    <div class="form-group">
                                        <input type="text" name="phone" hidden value="${login.phone}"/>
                                        <textarea name="content" class="form-control" style="height: 200px;" placeholder="Message *"></textarea>
                                    </div>
                                    <div class="form-group">
                                        <input class="btn_1 full-width" type="submit" value="Send Feedback">
                                    </div>
                                </div>

                                <div class="col-lg-8 col-md-6 add_bottom_25">
                                    <iframe class="map_contact" src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d39714.47749917409!2d-0.13662037019554393!3d51.52871971170425!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x47d8a00baf21de75%3A0x52963a5addd52a99!2sLondra%2C+Regno+Unito!5e0!3m2!1sit!2ses!4v1557824540343!5m2!1sit!2ses" style="border: 0" allowfullscreen></iframe>
                                </div>
                            </div>
                        </form>
                        <!-- /row -->
                    </div>
                    <!-- /container -->
                </div>
                <!-- /bg_white -->
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
        <script>
            // Show the add album form
            function showAddAlbumForm() {
                document.getElementById('addAlbumModal').style.display = "block";
            }
            function closeAddAlbumForm() {
                document.getElementById('addAlbumModal').style.display = "none";
            }

        </script>

    </body>
</html>
