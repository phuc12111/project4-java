<%@ page contentType="text/html" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
        <link href="${pageContext.request.contextPath}/css/cart.css" rel="stylesheet">

        <!-- YOUR CUSTOM CSS -->
        <link href="${pageContext.request.contextPath}/css/custom.css" rel="stylesheet">
    </head>
    <body>
        <div id="page">
            <%@ include file="header.jsp" %>
            <!-- /header -->

            <main class="bg_gray">
                <div class="container margin_30">
                    <div class="page_header">
                        <div class="breadcrumbs">
                            <ul>
                                <li><a href="#">Home</a></li>
                                <li><a href="#">Category</a></li>
                                <li><a href="#">My order</a></li>
                                <li>My order detail</li>
                            </ul>
                        </div>
                        <h1>My order</h1>
                    </div>
                    <h1>${successfully}</h1>
                    <c:choose>
                        <c:when test="${not empty ordererror}">
                            <h1>${ordererror}</h1>
                        </c:when>
                        <c:otherwise>
                            <table class="table table-striped cart-list">
                                <thead>
                                    <tr>
                                        <th>productName</th>
                                        <th></th>
                                        <th>quantity</th>

                                    </tr>
                                </thead>
                                <tbody>
                                <form action="${pageContext.request.contextPath}/order/feedback_product.htm" method="post">
                                    <tr>
                                    <input type="hidden" name="phone" value="${login.phone}"/>
                                    <input type="hidden" name="productID" value="${pro.productID}"/>
                                    <td>
                                        <span class="item_cart">${pro.productName}</span>
                                    </td>
                                    <td>
                                        <input type="text" name="content" placeholder="Content..*"/>
                                    </td>
                                    <td>
                                        <input type="number" name="numberStars" placeholder="1-5*"/>
                                    </td>
                                    <td>
                                        <input type="submit" value="Send Feedback"/> 
                                    </td>

                                    </tr>
                                </form>
                                </tbody>
                            </table>
                        </c:otherwise>
                    </c:choose>
                    <div class="col-sm-4 text-end"></div>
                </div>
                <!-- /container -->
            </main>
            <!--/main-->

            <%@ include file="footer.jsp" %>
            <!--/footer-->
        </div>
        <!-- page -->

        <div id="toTop"></div><!-- Back to top button -->

        <!-- COMMON SCRIPTS -->
        <script src="${pageContext.request.contextPath}/js/common_scripts.min.js"></script>
        <script src="${pageContext.request.contextPath}/js/main.js"></script>
    </body>
</html>
