<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="org.springframework.ui.Model" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Login Page</title>
    <style>
    body {
    font-family: Arial, sans-serif;
    display: flex;
    justify-content: center;
    align-items: center;
    height: 100vh;
    background-color: #f4f4f4;
}

.login-container {
    background: white;
    padding: 60px;
    border-radius: 10px;
    box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
    text-align: center;
}

.input-group {
    margin-bottom: 15px;
}

label {
    display: block;
    font-weight: bold;
}

input {
    width: 100%;
    padding: 10px;
    margin-top: 5px;
    border: 1px solid #ccc;
    border-radius: 5px;
}

button {
    background: #28a745;
    color: white;
    padding: 10px 60px;
    margin-top: 10px;
    margin-left: 20px;
    border: none;
    border-radius: 5px;
    cursor: pointer;
}

button:hover {
    background: #218838;
}
#crfr{
	margin-top: 30px;
	display: flex;
	justify-content : space-evenly;
}
.error {
    color: red;
    font-size: 14px;
    margin-top: 10px;
}
a{
	color: blue;
}
    	
    </style>
</head>
<body>
    <div class="login-container">
        <h2>Login</h2>
        <form id="loginForm" action="LoginForm">
            <div class="input-group">
                <label for="username">Username</label>
                <input type="text" id="username" name="username" required>
            </div>
            <div class="input-group">
                <label for="password">Password</label>
                <input type="password" id="password" name="password" required>
            </div>
            <p id="error-message" class="error">${notMatched}</p>
            <button type="submit">Login</button>
            <div id="crfr">
            	 <a href="register" style="margin-right:40px;">Register</a>
            	 <a href="forgot" style="margin-left:40px;">Forgot Password?</a>
            </div>
        </form>
    </div>
   	
   	<script>
   		var username = document.getElementById("username");
   		var password = document.getElementById("password");
   		var error-message = document.getElementById("error-message");
   		if(error-message == "Invalid Credentials" || error-message == "Register Now")
   		{
   			username.style.border = "1px solid red";
	   		password.style.border = "1px solid red";
   		}
   		else{
   			username.style.border = "1px solid green";
	   		password.style.border = "1px solid green";
   		}
   	</script>
    
</body>
</html>
