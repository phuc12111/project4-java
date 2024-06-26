<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">

    <head>
        <meta charset="utf-8">
        <title>DarkPan - Bootstrap 5 Admin Template</title>
        <meta content="width=device-width, initial-scale=1.0" name="viewport">
        <meta content="" name="keywords">
        <meta content="" name="description">

        <!-- Favicon -->
        <link href="img/favicon.ico" rel="icon">

        <!-- Google Web Fonts -->
        <link rel="preconnect" href="https://fonts.googleapis.com">
        <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
        <link href="https://fonts.googleapis.com/css2?family=Open+Sans:wght@400;600&family=Roboto:wght@500;700&display=swap" rel="stylesheet"> 

        <!-- Icon Font Stylesheet -->
        <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.10.0/css/all.min.css" rel="stylesheet">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.4.1/font/bootstrap-icons.css" rel="stylesheet">

        <!-- Libraries Stylesheet -->
        <link href="${pageContext.request.contextPath}/lib/owlcarousel/assets/owl.carousel.min.css" rel="stylesheet">
        <link href="${pageContext.request.contextPath}/lib/tempusdominus/css/tempusdominus-bootstrap-4.min.css" rel="stylesheet" />

        <!-- Customized Bootstrap Stylesheet -->
        <link href="${pageContext.request.contextPath}/css/bootstrap.minad.css" rel="stylesheet">

        <!-- Template Stylesheet -->
        <link href="${pageContext.request.contextPath}/css/stylead.css" rel="stylesheet">

        <script type="text/javascript" src="https://www.gstatic.com/charts/loader.js"></script>
    </head>

    <body>
        <div class="container-fluid position-relative d-flex p-0">
            <!-- Spinner Start -->
            <div id="spinner" class="show bg-dark position-fixed translate-middle w-100 vh-100 top-50 start-50 d-flex align-items-center justify-content-center">
                <div class="spinner-border text-primary" style="width: 3rem; height: 3rem;" role="status">
                    <span class="sr-only">Loading...</span>
                </div>
            </div>
            <!-- Spinner End -->

            <%@include file="headerad.jsp" %>

            <!-- Content Start -->
            <div class="content">
                <!-- Navbar Start -->
                <nav class="navbar navbar-expand bg-secondary navbar-dark sticky-top px-4 py-0">
                    <a href="index.html" class="navbar-brand d-flex d-lg-none me-4">
                        <h2 class="text-primary mb-0"><i class="fa fa-user-edit"></i></h2>
                    </a>
                    <a href="#" class="sidebar-toggler flex-shrink-0">
                        <i class="fa fa-bars"></i>
                    </a>
<!--                    <form action="${pageContext.request.contextPath}/feedback_product/find.htm" method="get" class="d-none d-md-flex ms-4">
                        <input class="form-control bg-dark border-0" type="search" placeholder="Search supplier name" name="keyword">
                        <button type="submit" class="btn btn-sm btn-primary" style="margin-left: 20px">Search</button>
                    </form>-->

                    <!--                    <div class="navbar-nav align-items-center ms-auto" style="padding: 15px 0">
                                            <div class="nav-item dropdown">
                                                <a class="btn btn-sm btn-primary" href="${pageContext.request.contextPath}/supplier/add.htm">Add Supplier</a>
                                            </div>
                                        </div>-->
                </nav>
                <!-- Navbar End -->

                <!-- Sales Chart End -->


                <!-- Recent Sales Start -->
                <div class="container-fluid pt-4 px-4">
                    <div class="bg-secondary text-center rounded p-4">
                        <div class="d-flex align-items-center justify-content-between mb-4">
                            <h6 class="mb-0">Report Feedback Product by NumberStar</h6>
                            <!--<a href="${pageContext.request.contextPath}/feedback_product/view.htm">Report</a>-->
                            <h1>${message}</h1>
                            <h1>${error}</h1>
                        </div>
                        <div class="row">
                            <div class="col-lg-6">
                                <div class="table-responsive">
                                    <table class="table text-start align-middle table-bordered table-hover mb-0">
                                        <thead>
                                            <tr class="text-white">
                                                <th scope="col">Product Name</th>
                                                <th scope="col">averageNumberStars</th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                            <c:forEach items="${listFeedbackProductReport}" var="fbr">
                                                <tr>
                                                    <td>${fbr.productName}</td>
                                                    <td>${fbr.averageNumberStars}</td>
                                                </tr>
                                            </c:forEach>
                                        </tbody>
                                    </table>
                                </div>
                            </div>

                            <div id="column_chart" class="col-lg-6" style="background-color: black; color: white;">
                            </div>

                        </div>

                    </div>
                </div>
                <!-- Recent Sales End -->



                <!-- Widgets End -->


                <%@include file="footerad.jsp" %>
                <!-- Footer End -->
            </div>
            <!-- Content End -->


            <!-- Back to Top -->
            <a href="#" class="btn btn-lg btn-primary btn-lg-square back-to-top"><i class="bi bi-arrow-up"></i></a>
        </div>

        <!-- JavaScript Libraries -->
        <script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0/dist/js/bootstrap.bundle.min.js"></script>
        <script src="${pageContext.request.contextPath}/lib/chart/chart.min.js"></script>
        <script src="${pageContext.request.contextPath}/lib/easing/easing.min.js"></script>
        <script src="${pageContext.request.contextPath}/lib/waypoints/waypoints.min.js"></script>
        <script src="${pageContext.request.contextPath}/lib/owlcarousel/owl.carousel.min.js"></script>
        <script src="${pageContext.request.contextPath}/lib/tempusdominus/js/moment.min.js"></script>
        <script src="${pageContext.request.contextPath}/lib/tempusdominus/js/moment-timezone.min.js"></script>
        <script src="${pageContext.request.contextPath}/lib/tempusdominus/js/tempusdominus-bootstrap-4.min.js"></script>

        <!-- Template Javascript -->
        <script src="${pageContext.request.contextPath}/js/mainad.js"></script>
        <script type="text/javascript">
            google.charts.load('current', {'packages': ['corechart']});
            google.charts.setOnLoadCallback(drawChart);

            function drawChart() {
                var data = new google.visualization.DataTable();
                data.addColumn('string', 'Product Name');
                data.addColumn('number', 'Average Number of Stars');
                data.addRows([
                    <c:forEach items="${listFeedbackProductReport}" var="fbrr">
                        ['<c:out value="${fbrr.productName}"/>', <c:out value="${fbrr.averageNumberStars}"/>],
                    </c:forEach>
                ]);

                var options = {
                    title: 'Average Number of Stars per Product',
                    titleTextStyle: {
                        color: 'white'
                    },
                    hAxis: {
                        title: 'Product Name',
                        minValue: 0,
                        textStyle: {
                            color: 'white'
                        },
                        titleTextStyle: {
                            color: 'white'
                        }
                    },
                    vAxis: {
                        title: 'Average Number of Stars',
                        minValue: 0,
                        textStyle: {
                            color: 'white'
                        },
                        titleTextStyle: {
                            color: 'white'
                        }
                    },
                    legend: {
                        position: 'none'
                    },
                    backgroundColor: 'black',
                    colors: ['#EB1616'] // Sets the color of the bars
                };

                var chart = new google.visualization.ColumnChart(document.getElementById('column_chart'));
                chart.draw(data, options);
            }
        </script>
    </body>

</html>