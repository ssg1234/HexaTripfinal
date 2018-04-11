<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE >
<html>
<meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<head>
<title>Booking Form</title>
<style>
 
 tr, td{
   padding: 20px;
   font-family: sans-serif;
   font-weight: bold;
 }
 
 </style>
</head>
 <%@include file="Header.jsp" %>
<body  >

<%@include file="HeadSection.jsp" %>
<section>
<h3 align="center">Book Your Flight</h3>
<div class="col-md-4"></div>
<div class="col-md-4">
<form action="bookticket" align="center">
<table>
<tr>
	<td>Source: </td>
	<td><input type="text" name="src" required/></td>
</tr>
<tr>
	<td>Destination:</td>
	<td> <input type="text" name="dest" required/></td>
</tr>
<tr>
	<td>Date: </td>
	<td><input type="text" name="date" required/></td>
</tr>
<tr>
	<td>No Of Passengers: </td>
	<td><input type="text" name="psgnr" required/></td>
</tr>
	</table>
	
	<input type="submit" value="search" class="btn btn-primary"/>&emsp;&emsp;&emsp;&emsp;

	
</form>
</div>
<div class="col-md-4" style="height:300px"></div>
</section>

</body>

</html>



