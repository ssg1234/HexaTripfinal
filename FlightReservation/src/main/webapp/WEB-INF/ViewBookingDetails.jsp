<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<title>BookingDetails</title>

<style>

tr:nth-child(odd){
    background-color: #0B4AF7;
    color:white;
 }
   tr:nth-child(even){
    background-color: #99AEE8;
    color:blue;
 } 
   td{
   padding: 5px;
   font-family: sans-serif;
   
   }
   table{
margin: 0 auto;
border-collapse: collapse;
}
   
 p{
 font-weight: bold
 }

</style>
</head>
<%@include file="Header.jsp" %>
<body>
<%@include file="HeadSection.jsp" %>

<section>
<div align="center">
<h3 align="center">Booking Details</h3>
    <table id="list">

	<tr>
		<td><p>Flight Id</p></td>
		<td>${book.schedule.flight.flightId}</td>
	</tr>
	<tr>
		<td><p>Flight Name</p></td>
		<td>${book.schedule.flight.flightName}</td>
	</tr>
	<tr>
		<td><p>Source</p></td>
		<td>${book.schedule.flight.src}</td>
	</tr>
	<tr>
		<td><p>Destination</p></td>
		<td>${book.schedule.flight.dest}</td>
	</tr>
	<tr>
		<td><p>Customer Name</p></td>
		<td>${book.customer.custName}</td>
	</tr>
	<tr>
		<td><p>Fare</p></td>
		<td>${book.schedule.flight.fare}</td>
	</tr>
	
</table>

</div>
</section>

</body>
</html>