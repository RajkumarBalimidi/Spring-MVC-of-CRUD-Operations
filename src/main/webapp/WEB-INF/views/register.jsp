<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Register Page</title>
<style>
	#myForm{
		margin-top: 5%;
		text-align: center;
		background: white;
		width: 300px;
		height: auto;
		padding : 10px;
		align-item: center;
		border-radius: 10px;
		border:1px solid black;
	}
	label{
		margin-bottom : 5px;
		font-weight: bold;
	}
	input{
		margin-bottom: 10px;
		padding: 10px 50px;
	}
	input[type="submit"]{
		margin-top : 20px;
		color: white;
		background-color: blue;
		padding: 10px 50px;
		border-radius: 5px;
	}
	h1{
		color: blue;
	}
</style>
</head>
<body>
	<center>
		<div id="myForm">
			<form:form action="Register" modelAttribute="customer">
				<h1>Register Page</h1>
				<label>Name : </label><br><form:input path="name" required="required"></form:input><br>
				<label>Email : </label><br><form:input path="email" required="required"></form:input><br>
				<label>Mobile : </label><br><form:input path="mobile" required="required"></form:input><br>
				<label>New Password : </label><br><form:input type="password" path="password" required="required"></form:input><br>
				<input type="submit" value="Register">
			</form:form>
		</div>
	</center>
</body>
</html>