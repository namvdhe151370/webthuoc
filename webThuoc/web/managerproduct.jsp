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
                        <ul class="navbar-nav me-auto mb-2 mb-lg-0 ms-lg-4">

                                <li class="nav-item"><a href="#addEmployeeModal"  class="btn btn-success" data-toggle="modal"><i class="bi bi-file-plus"></i> <span>Add New Product</span></a></li>
                            </ul>
                        <!--                        <a data-target="#addEmployeeModal"  class="btn btn-success" data-toggle="modal"><i class="material-icons">&#xE147;</i> <span>Add New Product</span></a>-->
                        <!--                    <a href="#deleteEmployeeModal" class="btn btn-danger" data-toggle="modal"><i class="material-icons">&#xE15C;</i> <span>Delete</span></a>						-->
                    </div>
                </div>
            </div>

            <table class="table">
                <thead>
                    <tr>
                        <th scope="col">ID</th>
                        <th scope="col">Name</th>
                        <th scope="col">Image</th>
                        <th scope="col">Price</th>
                        <th scope="col">Quantity</th>
                        <th scope="col">Edit</th>
                        <th scope="col">Delete</th>
                    </tr>
                </thead>
                <tbody>
                    <c:forEach items="${listP}" var="o">

                        <tr>
                            <td>${o.id}</td>
                            <td>${o.name}</td>
                            <td>
                                <img src="${o.image}" width="50">
                            </td>
                            <td>${o.price} $</td>
                            <td>${o.quantity}</td>
                            <td><a href="../admin/editproduct?pid=${o.id}"  class="edit btn btn-outline-primary" data-toggle="modal"><i class="bi bi-pencil-square"></i> Edit</a></td>
                            <td><a href="../admin/deleteproduct?pid=${o.id}" class="delete btn btn-outline-danger" data-toggle="modal"><i class="bi bi-trash"></i> Delete</a></td>
                        </tr>

                    </c:forEach>
                </tbody>
            </table>
        </div>
        <!-- Edit Modal HTML -->
        <div id="addEmployeeModal" class="modal fade">
            <div class="modal-dialog">
                <div class="modal-content">
                    <form action="../admin/addproduct" method="post">
                        <div class="modal-header">						
                            <h4 class="modal-title">Add Product</h4>
                            <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                        </div>
                        <div class="modal-body">					
                            <div class="form-group">
                                <label>Name</label>
                                <input name="name" type="text" class="form-control" required>
                            </div>
                            <div class="form-group">
                                <label>Image</label>
                                <input name="image" type="text" class="form-control" required>
                            </div>
                            <div class="form-group">
                                <label>Price</label>
                                <input name="price" type="text" class="form-control" required>
                            </div>
                            <div class="form-group">
                                <label>Quantity</label>
                                <input name="quantity" type="text" class="form-control" required>
                            </div>

                            <div class="form-group">
                                <label>Description</label>
                                <textarea name="description" class="form-control" required></textarea>
                            </div>
                            <div class="form-group">
                                <label>Category</label>
                                <select name="category" class="form-select" aria-label="Default select example">
                                    <c:forEach items="${listC}" var="C">
                                        <option value="${C.id}">${C.name}</option>
                                    </c:forEach>
                                </select>
                            </div>

                        </div>
                        <div class="modal-footer">
                            <input type="button" class="btn btn-default" data-dismiss="modal" value="Cancel">
                            <input type="submit" class="btn btn-success" value="Add">
                        </div>
                    </form>
                </div>
            </div>
        </div>


        <%@include file="component/footerComponent.jsp" %>
        <!-- Bootstrap core JS-->
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
        <!-- Core theme JS-->
        <script src="js/scripts.js"></script>
    </body>

</html>