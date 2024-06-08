<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!-- Sidebar Start -->
<div class="sidebar pe-4 pb-3">
    <nav class="navbar bg-secondary navbar-dark">
        <a href="index.html" class="navbar-brand mx-4 mb-3">
            <h3 class="text-primary"><i class="fa fa-user-edit me-2"></i>DarkPan</h3>
        </a>
        <c:choose>
            <c:when test="${empty admin}">
                <div class="nav-item dropdown">
                    <p>Admin not login</p>
                </div>
            </c:when>
            <c:otherwise>
                <div class="d-flex align-items-center ms-4 mb-4">
                    <div class="position-relative">
                        <img class="rounded-circle" src="${pageContext.request.contextPath}/${admin.avatar}" alt="" style="width: 40px; height: 40px;">
                        <div class="bg-success rounded-circle border border-2 border-white position-absolute end-0 bottom-0 p-1"></div>
                    </div>
                    <div class="ms-3">
                        <h6 class="mb-0">${admin.adminName}</h6>
                        <span>${admin.adminName}</span>
                    </div>
                </div>
            </c:otherwise>
        </c:choose>
        <div class="navbar-nav w-100">
            <a href="${pageContext.request.contextPath}/admin/view.htm" class="nav-item nav-link active"><i class="fa fa-tachometer-alt me-2"></i>Dashboard</a>
            <div class="nav-item dropdown">
                <a href="#" class="nav-link dropdown-toggle" data-bs-toggle="dropdown"><i class="fa fa-laptop me-2"></i>Elements</a>
                <div class="dropdown-menu bg-transparent border-0">
                    <a href="button.html" class="dropdown-item">Buttons</a>
                    <a href="typography.html" class="dropdown-item">Typography</a>
                    <a href="element.html" class="dropdown-item">Other Elements</a>
                </div>
            </div>
            <a href="${pageContext.request.contextPath}/favourites/viewfa.htm" class="nav-item nav-link"><i class="fa fa-heart"></i>Managa favourites</a>
            <a href="${pageContext.request.contextPath}/order/orderde.htm" class="nav-item nav-link"><i class="fa fa-cart-plus"></i>Manage Order</a>
            <a href="${pageContext.request.contextPath}/pay/view.htm" class="nav-item nav-link"><i class="fa fa-credit-card"></i>Manage Payments</a>
            <a href="${pageContext.request.contextPath}/ship/list.htm" class="nav-item nav-link"><i class="fa fa-truck"></i>Manage Deliveries</a>
            <a href="${pageContext.request.contextPath}/supplier/view.htm" class="nav-item nav-link"><i class="fa fa-truck"></i>Manage Suppliers</a>
            <a href="${pageContext.request.contextPath}/feedback_product/view.htm" class="nav-item nav-link"><i class="fa fa-truck"></i>Manage Feedback</a>
            <a href="${pageContext.request.contextPath}/product/all.htm" class="nav-item nav-link"><i class="fa fa-film"></i>Manage Product</a>
            <a href="${pageContext.request.contextPath}/category/all.htm" class="nav-item nav-link"><i class="fa fa-bars"></i>Manage Category</a>
            <a href="${pageContext.request.contextPath}/artists/all.htm" class="nav-item nav-link"><i class="fa fa-id-card"></i>Manage Artist</a>
            <div class="nav-item dropdown">
                <a href="#" class="nav-link dropdown-toggle" data-bs-toggle="dropdown"><i class="far fa-file-alt me-2"></i>Pages</a>
                <div class="dropdown-menu bg-transparent border-0">
                    <a href="signin.html" class="dropdown-item">Sign In</a>
                    <a href="signup.html" class="dropdown-item">Sign Up</a>
                    <a href="404.html" class="dropdown-item">404 Error</a>
                    <a href="blank.html" class="dropdown-item">Blank Page</a>
                </div>
            </div>
        </div>
    </nav>
</div>
<!-- Sidebar End -->

