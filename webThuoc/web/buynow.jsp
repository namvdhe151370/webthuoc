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
        <title>Shop Homepage - Start Bootstrap Template</title>
        <!-- Favicon-->
        <link rel="icon" type="image/x-icon" href="assets/favicon.ico" />
        <!-- Bootstrap icons-->
        <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.5.0/font/bootstrap-icons.css" rel="stylesheet" />
        <!-- Core theme CSS (includes Bootstrap)-->
        <link href="a.css" rel="stylesheet" />
        <style>
            .buynowform{
                border: 1px solid #000; 
                border-radius: 10px; 
                padding: 1rem;
                max-width: 540px; 
                background-color: #F7F7F7;
/*                text-align: center*/
                margin: auto;
            }
            .buynowform .form-control{
/*                text-align: center*/
            }
            .buynowform input{
                max-width: 100%
            }
        </style>
    </head>

    <body>
        <%@include file="component/narBarComponent.jsp" %>
        <!-- Product section-->
        <section class="py-5">

            <div class="container" style="min-height: 600px">
                <h1 style="text-align: center" >Buy Now</h1>
                <div>
                    <h2>List Carts</h2>
                    <table class="table">
                        <thead>
                            <tr>
                                <th scope="col">#</th>
                                <th scope="col">Name</th>
                                <th scope="col">Image</th>
                                <th scope="col">Price</th>
                                <th scope="col">Quantity</th>
                                <th scope="col">Total</th>
                            </tr>
                        </thead>
                        <tbody>
                            <c:forEach items="${carts}" var="C">
                            <form action="updatecart">
                                <tr>
                                <input name="productId" value="${C.value.product.id}" type="hidden"/>
                                <th scope="row">${C.value.product.id}</th>
                                <td>${C.value.product.name}</td>
                                <td><img src="${C.value.product.image}" width="50"/></td>
                                <td>${C.value.product.price}</td>
                                <td>${C.value.quantity}</td>
                                <td>${C.value.product.price*C.value.quantity}</td>
                                </tr>
                            </form>
                        </c:forEach>
                        </tbody>
                    </table>

                    <div class="row">
                        <div class="col-md-8"></div>
                        <div class="col-md-4"><h3  >Total Money: $${totalMoney}</h3></div>
                    </div>

                    <div class="buynowform " >
                        <h3>Information of customer</h3>
                        <form action="buynow" method="POST">
                            <div class="mb-3">
                            <label for="name" class="form-label">Name</label>
                            <input type="text" class="form-control" id="name" name="name" aria-describedby="name">
                        </div>
                        <div class="mb-3">
                            <label for="phone" class="form-label">Phone</label>
                            <input type="text" class="form-control" id="phone" name="phone" aria-describedby="phone">
                        </div>
                        <div class="mb-3">
                            <label for="address" class="form-label">Address</label>
                            <input type="text" class="form-control" id="address" name="address" aria-describedby="address">
                        </div>
                        <div class="mb-3">
                            <label for="email" class="form-label">Email</label>
                            <input type="text" class="form-control" id="email" name="email" aria-describedby="email">
                        </div>
                        <div class="mb-3">
                            <label for="note" class="form-label">Note</label>
                            <textarea class="form-control" id="note" name="note" rows="3"></textarea>
                        </div>
                        <button type="submit" class="btn btn-primary w-100">Submit</button>
                        </form>
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