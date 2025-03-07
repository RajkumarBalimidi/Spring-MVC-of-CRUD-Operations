<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Forgot Password</title>
<style>
	#forgot{
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
	h1{
		margin-bottom: 20px;
	}
	input[type="email"],input[type="password"]{
		margin-bottom: 15px;
		padding: 10px 25px;
	}
	input[type="submit"]{
		margin-top: 10px;
		margin-bottom: 15px;
		color: white;
		background-color: green;
		border-radius: 10px;
		padding: 10px 50px;
	}
	#error-msg{
		color: red;
		text-align: center;
	}
	label{
		font-weight: bold;
	}
</style>
</head>
<body>
	<center>
		<div id="forgot">
			<form action="ForgotPassword">
				<h1>Set Password</h1><br>
				<p id=error-msg>${notRegister}</p>
				<label>Email : </label><br><input type="email" name="email" id="email" required><br>
				<label>Password : </label><br><input type="password" name="npassword" id="npassword" required><br>
				<label>Confirm Password : </label><br><input type="password" name="cpassword" id="cpassword" required><br>
				<input type="submit" value="Reset">
			</form>
		</div>
	</center>
	
	<script>
		var npassword = documet.getElementBtId("npassword");
		var cpassword = documet.getElementBtId("cpassword");
		if(npassword != cpassword)
		{
			npassword.style.border = "1px solid red";
			cpassword.style.border = "1px solid red";
		}
	</script>
	
</body>
</html>