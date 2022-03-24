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
        <title>Thanks from Neo Shin Shop</title>
        <!-- Favicon-->
        <link rel="icon" type="image/x-icon" href="assets/favicon.ico" />
        <!-- Bootstrap icons-->
        <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.5.0/font/bootstrap-icons.css" rel="stylesheet" />
        <!-- Core theme CSS (includes Bootstrap)-->
        <link href="a.css" rel="stylesheet" />
        <style>
            .thanksnam{
                background-image: url(images/thankyou1.jpg); 
                background-repeat: no-repeat;  
                width: 100%;
                background-size: cover;
                height: 650px;
            }
            
        </style>
    </head>

    <body>
        <%@include file="component/narBarComponent.jsp" %>
        <div class="container" >
<!--            <div class="thanksnam">
            </div>-->
            <div class="thanksnam alert alert-primary text-center align-items-center" role="alert">
                
                <div class="text-center mt-2">
                    <a class="btn btn-primary" href="Home">Continue Shopping</a>
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