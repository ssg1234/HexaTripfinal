<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>
	
		<head>
			<title>Flight Booking</title>
			<style>
th{
   padding: 10px;
   font-family: sans-serif;
   font-weight: bold;
   }
   td{
   padding: 20px;
   font-family: sans-serif;
   
   }
    tr:nth-child(odd){
    background-color: #0B4AF7;
    color:white;
 }
   tr:nth-child(even){
    background-color: #99AEE8;
    color:blue;
 } 
 table{
margin: 0 auto;
border-collapse: collapse;
}
  
   
		</style>

		</head>
		<%@include file="HeadSection.jsp" %>
<%@include file="Header.jsp" %>
		<body >
		
	
		<section>
			<h3 align="center">Flight Details</h3>
		<div align="center">
			<table id="list">
				<tr>
				<th>Flight Id</th>
				<th>Flight Name</th>
				<th>Schedule Id</th>
				<th>Schedule Date</th>
				<th>Seats Available</th>
				<th>Fare</th>
				</tr>
				
				<c:forEach items="${tlist}" var="t">
				<tr>
					<td>${t.flight.flightId}</td>
					<td>${t.flight.flightName}</td>
					<td>${t.schId}</td>
					<td>${t.schDate}</td>
					<td>${t.seats}</td>
					<td>${t.flight.fare}</td>
					
				</tr>
				
				</c:forEach>

				</table>
				
				</div>
				</section>


	

		
		</body>
	
</html>