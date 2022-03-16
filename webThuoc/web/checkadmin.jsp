<%-- 
    Document   : checkadmin
    Created on : Mar 15, 2022, 9:35:59 PM
    Author     : hellb
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
        <meta name="description" content="" />
        <meta name="author" content="" />
        <title>Neo Shin Shop</title>
        <!-- Favicon-->
        <link rel="icon" type="image/x-icon" href="assets/favicon.ico" />
        <!-- Bootstrap icons-->
        <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.5.0/font/bootstrap-icons.css" rel="stylesheet" />
        <!-- Core theme CSS (includes Bootstrap)-->
        <link href="a.css" rel="stylesheet" type="text/css"/>

        <style>
            .namh1 h1{
                color: green;
            }
            .namh1 p{
                color: green;
            }
            .row ul li a{
                text-decoration: none;
                color: cadetblue;
                font-weight: bold;
            }
        </style>
    </head>

    <body>
        <%@include file="component/narBarComponentManager.jsp" %>
        <!-- Header-->
        <header class="bg-dark py-5">
            <div class="container px-4 px-lg-5 my-5">
                <div class="namh1 text-center text-white">
                    <h1 class="display-4 fw-bolder">Neo Shin Drug Shop</h1>
                    <p class="lead fw-normal text-white-50 mb-0">Always take care of you</p>
                </div>
            </div>
        </header>
        <!-- Section-->
        <section class="py-5">
            <div class="container px-4 px-lg-5 mt-5">
                <div class="row">
                    <div class="col-md-3 mb-3">
                        <h2>List Catergories</h2>

                        <ul class="list-group categoryul">
                            <c:forEach items="${sessionScope.listCategory}" var="C">
                                <li class="list-group-item "><a class="categorylink" href="categoryselect?categoryid=${C.id}">${C.name}</a></li>
                                </c:forEach>
                        </ul>
                    </div>
                    <div class="col-md-9">
                        <nav aria-label="... " class="d-flex justify-content-center">
                            <ul class="pagination pagination-sm">
                                <li class="page-item active" aria-current="page">
                                    <span class="page-link">1</span>
                                </li>
                                <li class="page-item"><a class="page-link" href="Home?page=2">2</a></li>
                                <li class="page-item"><a class="page-link" href="Home?page=3">3</a></li>
                                <li class="page-item"><a class="page-link" href="Home?page=4">4</a></li>
                            </ul>
                        </nav>
                        <h2>Product</h2>
                        <c:choose>
                            <c:when test="${listProduct==null ||listProduct.size() ==0}">We don't have that</c:when>
                        </c:choose>
                        
                        <div class="row gx-4 gx-lg-5 row-cols-2 row-cols-md-3 row-cols-xl-4 justify-content-center">
                            <c:forEach items="${listProduct}" var="P">
                                <div class="col mb-5">
                                    <div class="card h-100">

                                        <!-- Product image-->
                                        <a href="Detail?productId=${P.id}">
                                            <img class="card-img-top" src="${P.image}"
                                                 alt="..." />
                                        </a>

                                        <!-- Product details-->
                                        <div class="card-body p-4">
                                            <div class="text-center">
                                                <!-- Product name-->
                                                <h5 class="fw-bolder">${P.name}</h5>
                                                <!-- Product reviews-->
                                                <div class="d-flex justify-content-center small text-warning mb-2">
                                                    <div class="bi-star-fill"></div>
                                                    <div class="bi-star-fill"></div>
                                                    <div class="bi-star-fill"></div>
                                                    <div class="bi-star-fill"></div>
                                                    <div class="bi-star-fill"></div>
                                                </div>
                                                <!-- Product price-->
                                                $${P.price}
                                            </div>
                                        </div>
                                        <!-- Product actions-->
                                        <div class="card-footer p-4 pt-0 border-top-0 bg-transparent">
                                            <div class="text-center"><a class="btn btn-outline-success mt-auto" href="addtocart?productid=${P.id}">Add to
                                                    cart</a></div>
                                        </div>
                                    </div>
                                </div>
                            </c:forEach>

                        </div>

                    </div>
                </div>

            </div>
        </section>

        <%@include file="component/footerComponent.jsp" %>
        <!-- Bootstrap core JS-->
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
        <!-- Core theme JS-->
        <script src="js/scripts.js"></script>
    </body>

</html>