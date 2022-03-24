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
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title>Edit Product</title>
        <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Roboto|Varela+Round">
        <link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
        <link href="manager.css" rel="stylesheet" type="text/css"/>
        <style>

            .modal-dialogs{
                max-width: 400px;

            }
            .editform{
                border: 1px solid #000; 
                border-radius: 10px; 
                padding: 1rem 0px;

                background-color: #F7F7F7;
                /*                text-align: center*/
                margin: auto;
            }
            .editform1{
                border-right: 1px solid #000; 

            }
            .container{
                padding: 2rem 0px;
            }
            .editform2{
                margin-left: 10px;
            }
            .table2{
                border-top: 1px solid #000;
            }
        </style>
    <body>
        <div class="container">

            <div class="editform row">
                <div class="editform1 col-md-4">
                    <form action="../admin/editorder" method="post">
                        <div class="modal-header">						
                            <h4 class="modal-title">Edit Order</h4>
                            <a href="../admin/managerorder" type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</a>
                        </div>

                        <div class="modal-body">					
                            <div class="form-group">
                                <label>Order ID</label>
                                <input value="${order.id}" name="id" type="text" class="form-control" readonly required>
                            </div>

                            <div class="form-group">
                                <label>Total Price</label>
                                <input value="${order.totalPrice}" name="totalPrice" type="text" class="form-control"   required>
                            </div>
                            <div class="form-group">
                                <label>Note</label>
                                <textarea name="note" class="form-control"   required>${order.note}</textarea>
                            </div>
                            <div class="form-group">
                                <label>Date Buying</label>
                                <input value="${order.createdate}" name="createdate" type="date" class="form-control"   required>
                            </div>
                            <div class="form-group">
                                <label>Status</label>
<!--                                <input value="${order.statusOrder}" name="statusOrder" type="text" class="form-control" required>-->
                                <select name="statusOrder" class="form-control" aria-label="Default select example">
                                        <option ${order.statusOrder == 1?"selected":""} value="1">Shipping</option>
                                        <option ${order.statusOrder == 2?"selected":""} value="2">Done</option>
                                        
                                    </select>
                            </div>

                        </div>

                        <div class="modal-footer">
                            <input type="submit" class="btn btn-success" value="Save">
                        </div>
                    </form>

                </div>
                <div class="editform2 row col-md-8">
                    <h4>Order Detail</h4>
                    <table class="table">
                        <thead>
                            <tr>
                                <th scope="col">OrDetail Id</th>
                                <th scope="col">Name</th>
                                <th scope="col">Image</th>
                                <th scope="col">Price</th>
                                <th scope="col">Quantity</th>
                                <th scope="col">Total</th>
                            </tr>
                        </thead>
                        <tbody>
                            <c:forEach items="${listOD}" var="od">
                                <tr>
                            <input name="id" value="${od.id}" type="hidden"/>
                            <th scope="row">${od.id}</th>
                            <td>${od.productId}</td>
                            <td>${od.productName}</td>
                            <td><img src="${od.productImage}" width="50"/></td>
                            <td>${od.productPrice}</td>
                            <td>${od.quantity}</td>
                            </tr>
                        </c:forEach>
                        </tbody>
                    </table>
                    <div class="table2">
                        <h4>Information Shipping</h4>
                        <table class="table">
                            <thead>
                                <tr>
                                    <th scope="col">Infor Id</th>
                                    <th scope="col">Name</th>
                                    <th scope="col">Phone</th>
                                    <th scope="col">Address</th>
                                    <th scope="col">Email</th>

                                </tr>
                            </thead>
                            <tbody>
                                <tr>
                                    <th scope="row">${inforship.id}</th>
                                    <td>${inforship.name}</td>
                                    <td>${inforship.phone}</td>
                                    <td>${inforship.address}</td>
                                    <td>${inforship.email}</td>
                                </tr>

                            </tbody>
                        </table>
                    </div>
                </div>
            </div>

        </div>

        <script src="js/manager.js" type="text/javascript"></script>
    </body>
</html>