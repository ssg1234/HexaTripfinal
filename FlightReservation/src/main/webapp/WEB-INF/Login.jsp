<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<head>
<style>
h1{
font-size:48px;
	color:#1947C4;
	text-shadow: 5px 5px 5px white;
	font-family: cursive;
}
.bg{
 background-image: url("images/login1.jpg");
 background-repeat: no-repeat;
 background-size: 1500px;
 background-position: center;
 }
 p{
 font-family: sans-serif;
 font-weight: bold;
 }

</style>

<title>Login page</title>
</head>

<body class="bg" >

	<h1 align="center">HEXATRIP</h1>
 	<section>
 	<%@include file="HeadSection.jsp" %>
 	<br>
 	<h3 align="center">LOGIN</h3>
 
 	<div align ="center"  id="log">
 		<form action="checkLogin" method=post >
 			<p>Username:</p><input type="text" name="uname" required/><br><br>
 			
 			<p>Password:</p><input type="password" name="pwd" required/><br><br>
 			<input type="submit" value="Login" class="btn btn-primary"/>
 		</form>
 	</div>
 	</section>
 	
</body>
</html>