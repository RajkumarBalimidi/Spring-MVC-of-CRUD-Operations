<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Success Page</title>
<style>
	#success{
		margin-top: 15%;
		margin-left: 35%;
		justify-content: center;
		border: 1px solid black;
		border-radius: 5px;
		width: 300px;
		padding: 5px 10px;
		text-align: center;
		background-color: white;
	}
	h1{
		color: green;
	}
	input[type="submit"]{
		padding: 6px 30px;
		border-radius: 5px;
		color: white;
		background-color: blue;
	}
</style>
</head>
<body>
	<div id="success">
		<h1>Successfully Updated</h1>
		<form action="Success">
			<input type="submit" value="Ok">
		</form>
	</div>
</body>
</html>