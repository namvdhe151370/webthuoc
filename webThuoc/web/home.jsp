<%-- 
    Document   : home
    Created on : Mar 8, 2022, 8:46:23 AM
    Author     : hellb
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<head>
    <title>website</title>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Jost:wght@300;400;500;700;900&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="css/css.css">
    
</head>

<body>
    <div class="navbar-main">
        <div class="navbar">
            <img src="images/logo.png" class="logo">
            <ul>
                <li><a href="#">Home</a></li>
                <li><a href="#">About</a></li>
                <li><a href="#">Shop</a></li>
                <li><a href="Login.jsp">Login</a></li>
            </ul>
            <div class="icon">
                <ion-icon name="search-outline"></ion-icon>
                <ion-icon name="cart-outline">Cart</ion-icon>
<!--                <ion-icon name="heart-outline"></ion-icon>-->
                <ion-icon href="Login.jsp" name="person-outline"></ion-icon>
                
            </div>
        </div>
    </div>
    <!--     hero section -->

    <div class="container-fluid">
        <div class="container">
            <img src="images/anhlogo1.png">
        </div>
    </div>

    <div class="deal-main">
        <div class="deal">
            <h1>Test command</h1>
            <p>sale abc xyzx</p>

            <div class="row">
                <div class="box">
                    <div class="info">
                        <h1>medicine</h1>
                        <h3>UP TO 50% OFF</h3>
                    </div>
                </div>

                <div class="box">
                    <div class="info">
                        <h1>test covid</h1>
                        <h3>UP TO 50% OFF</h3>
                    </div>
                </div>

                <div class="box">
                    <div class="info">
                        <h1>abc</h1>
                        <h3>UP TO 100% OFF</h3>
                    </div>
                </div>

                <div class="box">
                    <div class="info">
                        <h1>abcxs</h1>
                        <h3>UP TO 200% OFF</h3>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <div class="product-main">
        <div class="product">
            <h1>Gift for everyone</h1>
            <p>abcserhqwi</p>

            <div class="row">
                <div class="box">
                    <img src="images/item1.png" class="sit">
                </div>
                <div class="box">
                    <img src="images/item2.png" class="sit">
                </div>
                <div class="box">
                    <img src="images/item3.png" class="sit">
                </div>
                <div class="box">
                    <img src="images/item4.png" class="sit">
                </div>
            </div>
            <button>View all products</button>
        </div>
    </div>

    <div class="subscribe-main">
        <div class="subscribe">
            <h1>sign up and 100% sale</h1>
            <p>be the cai gi do o day nha</p>
            <input type="email" name="" placeholder="Your Email Address">

            <div class="news-icon">
                <ion-icon name="logo-facebook"></ion-icon>
                <ion-icon name="logo-twitter"></ion-icon>
                <ion-icon name="logo-pinterest"></ion-icon>
                
            </div>
        </div>
    </div>
    <div class="footer-main">
        <div class="footer">
            <ul>
                <li><a href="#">About us</a></li>
                <li><a href="#">Store Location</a></li>
                <li><a href="#">Contact</a></li>
                <li><a href="#">Support</a></li>
                <li><a href="#">Policy</a></li>
                <li><a href="#">FAQ</a></li>
            </ul>
            <p>&copy; 2022 foever.awoiuhsdfawer</p>
        </div>
    </div>
    <script type="module" src="https://unpkg.com/ionicons@5.5.2/dist/ionicons/ionicons.esm.js"></script>
    <script nomodule src="https://unpkg.com/ionicons@5.5.2/dist/ionicons/ionicons.js"></script>
</body>

</html>
