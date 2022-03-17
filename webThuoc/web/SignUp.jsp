<%-- 
    Document   : SignUp
    Created on : Mar 8, 2022, 8:59:07 AM
    Author     : hellb
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Sign up with Neo Shin</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script> 
<style>
	.login-form {
		width: 340px;
    	margin: 50px auto;
	}
    .login-form form {
    	margin-bottom: 15px;
        background: #f7f7f7;
        box-shadow: 0px 2px 2px rgba(0, 0, 0, 0.3);
        padding: 30px;
    }
    .login-form h2 {
        margin: 0 0 15px;
    }
    .form-control, .btn {
        min-height: 38px;
        border-radius: 2px;
    }
    .btn {        
        font-size: 15px;
        font-weight: bold;
    }
</style>
</head>
<body>
<div class="login-form">
    <form action="SignUp" method="post">
        <h2 class="text-center">Sign up</h2>  
        <p class="text-danger">${mess}</p>
        <div class="form-group">
            <input type="text" class="form-control" placeholder="Enter Username" required="required" name="username">
        </div>
        <div class="form-group">
            <input type="password" class="form-control" placeholder="Enter Password" required="required" name="password">
        </div>
        <div class="form-group">
            <input type="password" class="form-control" placeholder="Enter Re-Password" required="required" name="re-password">
        </div>
        <div class="form-group">
            <input type="text" class="form-control" placeholder="Enter Display Name" required="required" name="displayname">
        </div>
        <div class="form-group">
            <input type="text" class="form-control" placeholder="Enter Address" required="required" name="address">
        </div>
        <div class="form-group">
            <input type="text" class="form-control" placeholder="Enter email" required="required" name="email">
        </div>
         <div class="form-group">
            <input type="text" class="form-control" placeholder="Enter Phone" required="required" name="phone">
        </div>
         <div class="form-group">
            <input type="text" class="form-control" placeholder="Enter Avatar" required="required" name="avatar">
        </div>
        <div class="form-group">
            <button type="submit" class="btn btn-primary btn-block">Create now</button>
        </div>
        
        <p class="text-center"><a href="Login.jsp">Login</a></p>
    </form>
    
</div>
</body>
</html> 
