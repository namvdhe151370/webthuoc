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
        <title>Cart with Neo Shin</title>
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
            <div class="container" style="min-height: 600px">
                <c:if test="${sessionScope.carts.size() ==0}">
                    <h2>List Carts don't have anything.</h2>
                </c:if>
                <c:if test="${sessionScope.carts.size()!=0}">
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
                                <th scope="col">Action</th>
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
                                <td><input name="quantity" onchange="this.form.submit()" value="${C.value.quantity}" style="max-width: 60px" type="number" min="1" max="${C.value.product.quantity}"/></td>
                                <td>${C.value.product.price*C.value.quantity}</td>
                                <td><a href="deletecart?productId=${C.value.product.id}" class="btn btn-outline-danger"><i class="bi bi-trash"></i> Delete</a></td>
                                </tr>
                            </form>
                        </c:forEach>
                        </tbody>
                    </table>
                    <h3>Total: $${totalMoney}</h3>

                    <a href="buynow" class="btn btn-outline-success w-20">Buy Now</a>


                </c:if>

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