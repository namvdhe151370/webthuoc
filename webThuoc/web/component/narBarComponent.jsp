<%-- 
    Document   : narBarComponent
    Created on : Mar 12, 2022, 10:46:47 PM
    Author     : hellb
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <body>
        <!-- Navigation-->
        <nav class="navbar navbar-expand-lg navbar-light bg-light">
            <div class="container px-4 px-lg-5">
                <a class="navbar-brand" href="#!">Start Bootstrap</a>
                <button class="navbar-toggler" type="button" data-bs-toggle="collapse"
                        data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false"
                        aria-label="Toggle navigation"><span class="navbar-toggler-icon"></span></button>
                <div class="collapse navbar-collapse" id="navbarSupportedContent">
                    <ul class="navbar-nav me-auto mb-2 mb-lg-0 ms-lg-4">
                        <li class="nav-item"><a class="nav-link active" aria-current="page" href="Home">Home</a></li>
                        <li class="nav-item"><a class="nav-link" href="#!">About</a></li>
                        <li class="nav-item dropdown">
                            <a class="nav-link dropdown-toggle" id="navbarDropdown" href="#" role="button"
                               data-bs-toggle="dropdown" aria-expanded="false">Shop</a>
                            <ul class="dropdown-menu" aria-labelledby="navbarDropdown">
                                <li><a class="dropdown-item" href="#!">All Products</a></li>
                                <li>
                                    <hr class="dropdown-divider" />
                                </li>
                                <li><a class="dropdown-item" href="#!">Popular Items</a></li>
                                <li><a class="dropdown-item" href="#!">New Arrivals</a></li>
                            </ul>
                        </li>
                    </ul>
                    <form action="Search" class="d-flex me-2 ">
                        <input class="form-control me-2" type="search" placeholder="Search" aria-label="Search" name="productname">
                        <button class="btn btn-outline-success" type="submit">Search</button>
                    </form>
                    <div class="d-flex me-2 my-3">
                        <a class="btn btn-outline-success" href="carts">
                            <i class="bi-cart-fill me-1"></i>
                            Cart
                            <span class="badge bg-success text-white ms-1 rounded-pill">${sessionScope.carts.size()}</span>
                        </a>
                    </div>
                    <a href="Login.jsp" class="btn btn-outline-success">Login</a>
                </div>
            </div>
        </nav>
    </body>
</html>
