<%-- 
    Document   : narBarComponent
    Created on : Mar 12, 2022, 10:46:47 PM
    Author     : hellb
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<link href="../a.css" rel="stylesheet" type="text/css"/>
<style>
    .avatarname{
        color: #198754;
    }
</style>
<!DOCTYPE html>
<html>
    <body>
        <!-- Navigation-->
        <nav class="navbar navbar-expand-lg navbar-light bg-light">
            <div class="container px-4 px-lg-5">

                <img class="" style="max-width: 8%" src="../images/logo1.png" alt="..." />
                <button class="navbar-toggler" type="button" data-bs-toggle="collapse"
                        data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false"
                        aria-label="Toggle navigation"><span class="navbar-toggler-icon"></span></button>
                <div class="collapse navbar-collapse" id="navbarSupportedContent">
                    <ul class="navbar-nav me-auto mb-2 mb-lg-0 ms-lg-4">
                        <li class="nav-item"><a class="nav-link" href="../admin/managerproduct">Manager Product</a></li>
                        <li class="nav-item"><a class="nav-link" href="../admin/managerorder">Manager Order</a></li>
                    </ul>
                    
                    <c:choose>
                        <c:when test="${sessionScope.account!=null}">
                            <div class="avatarname">
                                <img class="card-img-top me-2" style="max-width: 50px;border-radius: 50%" src="${sessionScope.account.avatar}"
                                     alt="..." />
                                ${sessionScope.account.displayName}
                            </div>
                            <a href="../Logout" class="btn btn-outline-success ms-2">Logout</a>
                        </c:when>
                        <c:otherwise>
                            <a href="Login" class="btn btn-outline-success">Login</a>
                        </c:otherwise>
                    </c:choose>

                </div>
            </div>
        </nav>
    </body>
    <!-- Bootstrap core JS-->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
    <!-- Core theme JS-->
    <script src="js/scripts.js"></script>
</html>
