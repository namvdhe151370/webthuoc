<%-- 
    Document   : about
    Created on : Mar 14, 2022, 9:00:48 PM
    Author     : hellb
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
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
        <link href="a.css" rel="stylesheet" />
        <style>
            .namh1 h1{
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
        <%@include file="component/narBarComponent.jsp" %>
        <!-- Header-->
        <header class="bg-dark py-5">
            <div class="container px-4 px-lg-5 my-5">
                <div class="namh1 text-center text-white">
                    <h1 class="display-4 fw-bolder">Neo Shin Drug Shop</h1>
                    <p class="lead fw-normal text-white-50 mb-0">Always take care of you</p>
                </div>
            </div>
        </header>
        <div>
            <section class="py-5 ">
                <div class="container px-4 px-lg-5 mt-5" style="min-height: 600px">
                    <div class="row btn-outline-success" style="min-height: 300px">
                        <div class="col-md-7 mb-3 mt-5">
                            <h1>WHO WE ARE</h1>
                            <p>If you’re a brand, be sure to share your team as well unless you have a separate page introducing your teammates.</p>

                            <p>    But the question remains: why do you want to nail sharing all this information? The reason is simple: you want to take your audience backstage to show them you are human and tell them you are worth trusting (and, therefore, buy from).</p>

                        </div>
                        <div class="col-md-5">
                            <ul class="list-group categoryul">
                                <img class="card-img-top" style="border-radius: 50%" src="images/aboutus2.png"
                                     alt="..." />
                            </ul>
                        </div>
                    </div>
                    <div class="row btn-outline-success" style="min-height: 300px">
                        <div class="col-md-5">
                            <ul class="list-group categoryul ">
                                <img class="card-img-top" style="border-radius: 50%" src="images/aboutus3.png"
                                     alt="..." />
                            </ul>
                        </div>
                        <div class="col-md-7 mb-3 mt-5">
                            <h1>CONTACT WITH US</h1>
                            <p>Think of it like this: would you rather buy from a business you know nothing about or would you deal with someone with a friendly face shared on their About page and a story that you find inspiring? I’m willing to bet you’d work with the latter. Isn’t it?</p>

                            <p>An excellent About page not only narrates your story, values, and gives an inside look into how your business came to be, but it also helps sell. When prospects learn your story and connect with it, they’re likely to buy from you. A well-planned About Us page can do all this!</p>

                        </div>

                    </div>
                </div>

            </section>
        </div>
        <%@include file="component/footerComponent.jsp" %>
        <!-- Bootstrap core JS-->
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
        <!-- Core theme JS-->
        <script src="js/scripts.js"></script>
    </body>
</html>
