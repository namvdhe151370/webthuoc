<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
        <meta name="description" content="" />
        <meta name="author" content="" />
        <title>Manager Drug Shop</title>
        <!-- Favicon-->
        <link rel="icon" type="image/x-icon" href="assets/favicon.ico" />
        <!-- Bootstrap icons-->
        <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.5.0/font/bootstrap-icons.css" rel="stylesheet" />
        <!-- Core theme CSS (includes Bootstrap)-->
        <link href="manager.css" rel="stylesheet" type="text/css"/>
        <link href="a.css" rel="stylesheet" type="text/css"/>
        <!--        <link href="css/a.css" rel="stylesheet" type="text/css"/>-->
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
            .tableform{
                border: 1px solid #000; 
                border-radius: 10px; 
                padding: 1rem;
                max-width: 540px; 
                background-color: #F7F7F7;
                /*                text-align: center*/
                margin: auto;
                margin-bottom: 20px;
            }
            .modal .modal-dialog {
                max-width: 400px;
            }
            .modal .modal-header, .modal .modal-body, .modal .modal-footer {
                padding: 20px 30px;
            }
            .modal .modal-content {
                border-radius: 3px;
            }
            .modal .modal-footer {
                background: #ecf0f1;
                border-radius: 0 0 3px 3px;
            }
            .modal .modal-title {
                display: inline-block;
            }
            .modal .form-control {
                border-radius: 2px;
                box-shadow: none;
                border-color: #dddddd;
            }
            .modal textarea.form-control {
                resize: vertical;
            }
            .modal .btn {
                border-radius: 2px;
                min-width: 100px;
            }	
            .modal form label {
                font-weight: normal;
            }
        </style>
    </head>

    <body>

        <%@include file="component/narBarComponentManager.jsp" %>
        <!-- Header-->
        <div class="tableform container" style="min-height: 600px">
            <div class="table-title">
                <div class="row">
                    <div class="col-sm-6">
                        <h2>Manage Product</h2>
                    </div>
                    <div class="col-sm-6">
                    </div>
                </div>
            </div>

            <table class="table">
                <thead>
                    <tr>
                        <th scope="col">Order ID</th>

                        <th scope="col">Total Price</th>
                        <th scope="col">Note</th>
                        <th scope="col">Date Buying</th>

                        <th scope="col">Status</th>
                        <th scope="col">Edit</th>
                        <th scope="col">Delete</th>
                    </tr>
                </thead>
                <tbody>
                    <c:forEach items="${listO}" var="o">

                        <tr>
                            <td>${o.id}</td>

                            <td>${o.totalPrice}</td>
                            <td>${o.note}</td>
                            <td>${o.createdate}</td>

                            <td><c:if test="${o.statusOrder == 1}"><p>Shipping</p>
                                </c:if>
                                <c:if test="${o.statusOrder == 2}"><p>Done</p>
                                </c:if>
                                
                            </td>
                            <td><a href="../admin/editorder?oid=${o.id}&shid=${o.shippingId}"  class="edit btn btn-outline-primary" data-toggle="modal"><i class="bi bi-pencil-square"></i>Edit</a></td>
                            
                        <td><a onclick="doDelete(${o.id})" class="delete btn btn-outline-danger" data-toggle="modal"><i class="bi bi-trash"></i> Delete</a></td>
                        </tr>
                    <script>
                        function doDelete(id) {
                            var c = confirm("Bạn có muốn xoá order: " + id + "?");
                            if (c) {
                                window.location.href = "../admin/deleteorder?oid=" + id;
                            }
                        }
                    </script>
                   
                                                 
                    </c:forEach>
                </tbody>
            </table>
        </div>

        <%@include file="component/footerComponent.jsp" %>
        <!-- Bootstrap core JS-->
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
        <!-- Core theme JS-->
        <script src="js/scripts.js"></script>
    </body>

</html>