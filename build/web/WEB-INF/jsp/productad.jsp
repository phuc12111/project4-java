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




        <script src='https://www.gstatic.com/charts/loader.js'></script>
        <script>
            google.charts.load('upcoming', {'packages': ['vegachart']}).then(drawChart);

            function drawChart() {
                const dataTable = new google.visualization.DataTable();
                dataTable.addColumn({type: 'string', 'id': 'category'});
                dataTable.addColumn({type: 'number', 'id': 'amount'});
                dataTable.addRows([
            <c:forEach items="${products}" var="product">
                    ['<c:out value="${product.productName}" />', <c:out value="${product.totalOrder}"/>],
            </c:forEach>
                ]);
                const options = {
                    "vega": {

                        "$schema": "https://vega.github.io/schema/vega/v4.json",
                        "width": 500,
                        "height": 200,
                        "padding": 5,
                        'data': [{'name': 'table', 'source': 'datatable'}],
                        "signals": [
                            {
                                "name": "tooltip",
                                "value": {},
                                "on": [
                                    {"events": "rect:mouseover", "update": "datum"},
                                    {"events": "rect:mouseout", "update": "{}"}
                                ]
                            }
                        ],
                        "scales": [
                            {
                                "name": "xscale",
                                "type": "band",
                                "domain": {"data": "table", "field": "category"},
                                "range": "width",
                                "padding": 0.05,
                                "round": true
                            },
                            {
                                "name": "yscale",
                                "domain": {"data": "table", "field": "amount"},
                                "nice": true,
                                "range": "height"
                            }
                        ],
                        "axes": [
                            {"orient": "bottom", "scale": "xscale"},
                            {"orient": "left", "scale": "yscale"}
                        ],
                        "marks": [
                            {
                                "type": "rect",
                                "from": {"data": "table"},
                                "encode": {
                                    "enter": {
                                        "x": {"scale": "xscale", "field": "category"},
                                        "width": {"scale": "xscale", "band": 1},
                                        "y": {"scale": "yscale", "field": "amount"},
                                        "y2": {"scale": "yscale", "value": 0}
                                    },
                                    "update": {
                                        "fill": {"value": "steelblue"}
                                    },
                                    "hover": {
                                        "fill": {"value": "red"}
                                    }
                                }
                            },
                            {
                                "type": "text",
                                "encode": {
                                    "enter": {
                                        "align": {"value": "center"},
                                        "baseline": {"value": "bottom"},
                                        "color": {"value": "#FFFFFF"}
                                    },
                                    "update": {
                                        "x": {"scale": "xscale", "signal": "tooltip.category", "band": 0.5},
                                        "y": {"scale": "yscale", "signal": "tooltip.amount", "offset": -2},
                                        "text": {"signal": "tooltip.amount"},
                                        "fillOpacity": [
                                            {"test": "datum === tooltip", "value": 0},
                                            {"value": 1}
                                        ]
                                    }
                                }

                            }
                        ]
                    }

                };

                const chart = new google.visualization.VegaChart(document.getElementById('chart-div'));
                chart.draw(dataTable, options);
            }
        </script>
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
                    <form action="${pageContext.request.contextPath}/product/search.htm" method="get" class="d-none d-md-flex ms-4">
                        <input class="form-control bg-dark border-0" type="search" placeholder="Search product name" name="productName">
                        <button type="submit" class="btn btn-sm btn-primary" style="margin-left: 20px">Search</button>
                    </form>

                    <div class="navbar-nav align-items-center ms-auto" style="padding: 15px 0">
                        <div class="nav-item dropdown">
                            <a class="btn btn-sm btn-primary" href="${pageContext.request.contextPath}/product/addshow.htm">Add Product</a>
                        </div>
                    </div>
                </nav>
                <!-- Navbar End -->

                <!-- Sales Chart End -->


                <!-- Recent Sales Start -->
                <div class="container-fluid pt-4 px-4">
                    <div style="background-color: #FFFFFF">
                        <div id="chart-div" style="width: 900px; height: 250px;"></div>
                    </div>
                    <div class="bg-secondary text-center rounded p-4">
                        <div class="d-flex align-items-center justify-content-between mb-4">
                            <h6 class="mb-0">Manage Order</h6>
                            <a href="">Show All</a>
                            <h1>${message}</h1>
                            <h1>${error}</h1>
                        </div>
                        <div class="table-responsive">
                            <table class="table text-start align-middle table-bordered table-hover mb-0">
                                <thead>
                                    <tr class="text-white">
                                        <th scope="col">Product ID</th>
                                        <th scope="col">Product Name</th>
                                        <th scope="col">Description</th>
                                        <th scope="col">Picture</th>
                                        <th scope="col">Price</th>
                                        <th scope="col">Sale</th>
                                        <th scope="col">Create Date</th>
                                        <th scope="col">Update Date</th>
                                        <th scope="col">Total Stars</th>
                                        <th scope="col">Total Feedback</th>
                                        <th scope="col">Quantity</th>
                                        <th scope="col">Trailer</th>
                                        <th scope="col">Update</th>
                                        <th scope="col">Delete</th>
                                    </tr>
                                </thead>
                                <tbody>

                                    <c:forEach items="${products}" var="product">
                                        <tr>
                                            <td>${product.productID}</td>
                                            <td>${product.productName}</td>
                                            <td>${product.description}</td>
                                            <td><img src="${pageContext.request.contextPath}/${product.picture}" width="80" hight="80"/></td>
                                            <td>${product.price}</td>
                                            <td>${product.sale}</td>
                                            <td> ${product.createdAt}</td>
                                            <td>${product.updatedAt}</td>
                                            <td>${product.totalStars}</td>
                                            <td> ${product.totalFeedback}</td>
                                            <td>${product.totalOrder}</td>
                                            <td>${product.audioFile}</td>


                                            <td>
                                                <a class="btn btn-sm btn-primary" href="${pageContext.request.contextPath}/product/update/${product.productID}.htm">Update</a>
                                            </td>    

                                            <td>
                                                <a class="btn btn-sm btn-primary" href="javascript:void(0);" onclick="confirmDelete(${product.productID})">Delete</a>
                                            </td>

                                        </tr>
                                    </c:forEach>

                                </tbody>
                            </table>

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
        <script>
                                                    function confirmDelete(productID) {
                                                        if (confirm("Data Will be Delete,Are you sure?")) {
                                                            // N?u ng??i d�ng ch?n Yes, chuy?n h??ng ??n trang x�a
                                                            window.location.href = "${pageContext.request.contextPath}/product/delete/" + productID + ".htm";
                                                        }
                                                    }
        </script>
    </body>

</html>
