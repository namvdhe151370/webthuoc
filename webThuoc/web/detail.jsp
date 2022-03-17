<%-- 
    Document   : home
    Created on : Mar 8, 2022, 8:46:23 AM
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
        <title>Detail with Neo Shin</title>
        <!-- Favicon-->
        <link rel="icon" type="image/x-icon" href="assets/favicon.ico" />
        <!-- Bootstrap icons-->
        <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.5.0/font/bootstrap-icons.css" rel="stylesheet" />
        <!-- Core theme CSS (includes Bootstrap)-->
        <link href="a.css" rel="stylesheet" />
    </head>

    <body>
        <%@include file="component/narBarComponent.jsp" %>
        <!-- Product section-->
        <section class="py-5">
            <div class="container px-4 px-lg-5 my-5">
                <div class="row gx-4 gx-lg-5 align-items-center">
                    <div class="col-md-6"><img class="card-img-top mb-5 mb-md-0" src="${product.image}" alt="..." /></div>
                    <div class="col-md-6">
                        <!--                        <div class="small mb-1">SKU: BST-498</div>-->
                        <h1 class="display-5 fw-bolder">${product.name}</h1>
                        <div class="fs-5 mb-5">
                            <!--                            <span class="text-decoration-line-through">$45.00</span>-->
                            <span>$${product.price}</span>
                        </div>
                        <p class="lead">${product.description}</p>
                        <div class="d-flex">
                            <!--                            <input class="form-control text-center me-3" id="inputQuantity" type="num" value="1" style="max-width: 3rem" />-->
                            <a href="addtocart?productid=${product.id}" class="btn btn-outline-success flex-shrink-0" type="button">
                                <i class="bi-cart-fill me-1"></i>
                                Add to cart
                            </a>

                            <a class="btn btn-outline-success flex-shrink-0 d-flex ms-2" type="button">
                                <i class="bi bi-bag me-1"> </i>
                                Buy Now
                            </a>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <!-- Footer-->
        <%@include file="component/footerComponent.jsp" %>
        <!-- Bootstrap core JS-->
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
        <!-- Core theme JS-->
        <script src="js/scripts.js"></script>
    </body>

</html>