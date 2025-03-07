<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ page import="com.mvc.entity.Customer, com.mvc.hibernate.manager.HibernateManager" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Edit Page</title>
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
		padding: 10px 30px;
	}
	input[type="submit"]{
		margin-top : 20px;
		color: white;
		background-color: green;
		padding: 10px 50px;
		border-radius: 5px;
	}
	h1{
		color: white;
		background-color: green;
	}
	input[type="number"]{
		background-color : rgb(222, 222, 222);
	}
	input[type="password"]{
		display : none;
	}
</style>
</head>
<body>
	<center>
		<div id="myForm">
			<form action="EditById">
				<h1>Edit Your Details</h1>
				<label>ID : </label><br><input type="number" value="${ customer.id }" name="id" readonly="true"><br>
				<label>Name : </label><br><input type="text" value="${ customer.name }" name="name" ><br>
				<label>Email : </label><br><input type="text" value="${ customer.email }" name="email"><br>
				<label>Mobile : </label><br><input type="text" value="${ customer.mobile }" name="mobile"><br>
				<input type="submit" value="Edit">
			</form>
		</div>
	</center>
</body>
</html>