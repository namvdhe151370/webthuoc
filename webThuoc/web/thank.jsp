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
            /*            .buynowform{
                            border: 1px solid #000; 
                            border-radius: 10px; 
                            padding: 1rem;
                            max-width: 540px; 
                            background-color: #F7F7F7;
                            text-align: center
                            margin: auto;
                        }
                        .buynowform .form-control{
                            text-align: center
                        }
                        .buynowform input{
                            max-width: 100%
                        }*/
        </style>
    </head>

    <body>
        <%@include file="component/narBarComponent.jsp" %>
        <div class="container" style="min-height: 600px">
            <div class="alert alert-primary text-center" role="alert">
                Orders successfully. Thanhks for your buying.
                <div class="text-center mt-2">
                    <a class="btn btn-outline-success" href="Home">Continue Shopping</a>
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