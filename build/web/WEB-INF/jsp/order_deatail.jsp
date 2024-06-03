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
                                <li>My order</li>
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
                                        <th>Order Date</th>
                                        <th>Delivery Date</th>
                                        <th>Status</th>
                                        <th>Total</th>
                                        <th>Actions</th>
                                        <th>Complete</th>
                                        <th>Cancel order</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <c:forEach var="order" items="${orderDetails}">
                                        <tr>
                                            <td><strong>${order.orderDate}</strong></td>
                                            <td><strong>${order.deliveryDate}</strong></td>
                                            <td><strong>${order.status}</strong></td>
                                            <td><strong>${order.total}</strong></td>
                                            <td><a class="btn btn-sm btn-primary" href="${pageContext.request.contextPath}/order/detailpro/${order.orderID}.htm">View order detail</a></td>
                                            <c:choose>
                                                <c:when test="${order.status != 'The seller confirmed the cancellation' && order.status != 'User confirms cancellation' && order.status != 'has received the goods'}">
                                                    <c:if test="${order.status == 'Confirmed'}">
                                                        <td>
                                                            <a class="btn btn-sm btn-primary" href="${pageContext.request.contextPath}/order/updateStatusok/${order.orderID}.htm">Complete</a>
                                                        </td>
                                                    </c:if>
                                                    <td>
                                                        <a class="btn btn-sm btn-primary" href="${pageContext.request.contextPath}/order/updateStatuscanceluser/${order.orderID}.htm">Cancel order</a>
                                                    </td>
                                                </c:when>
                                                <c:when test="${order.status == 'has received the goods'}">
                                                    <td>
                                                        <a class="btn btn-sm btn-primary" href="${pageContext.request.contextPath}/order/feedback-product/${order.orderID}.htm">Feedback Product</a>
                                                    </td>
                                                </c:when>
                                            </c:choose>
                                        </tr>
                                    </c:forEach>
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
