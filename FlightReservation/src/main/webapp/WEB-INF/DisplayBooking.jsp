<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>

<title>Display Booking Details</title>
<style>
table{
margin: 0 auto;
border-collapse: collapse;
}
   td{
   padding:10px;
   font-family: sans-serif;
   
   
   }
   
 p{
 font-weight: bold;
 }
 
 tr:nth-child(odd){
    background-color: #0B4AF7;
    color:white;
 }
   tr:nth-child(even){
    background-color: #99AEE8;
    color:blue;
 } 
 
 section h2{
    color:red;
 }
</style>
<%@include file="HeadSection.jsp" %>
<%@include file="Header.jsp" %>
</head>

<body >


   <section>
			<h3 align="center">Booking Details</h3>
		<div align="center">
			<h3>Your seat is confirmed</h3>
			<table>
			<tr>
			<td><p>Customer Name:</p></td>
			<td>${details.customer.custName}</td>
		
			
				<td><p>PNRNO:</p></td>
				<td>${details.pnrId}</td>
			</tr>
			<tr>
				<td><p>Source:</p></td>
				<td>${details.schedule.flight.src}</td>
		
			
				<td><p>Destination:</p></td>
				<td>${details.schedule.flight.dest}</td>
			</tr>
			<tr>
				<td><p>Flight Id:</p></td>
				<td>${details.schedule.flight.flightId}</td>
			
				<td><p>Flight Name:</p></td>
				<td>${details.schedule.flight.flightName}</td>
			</tr>
			<tr>
				<td><p>No Of Passengers:</p></td>
				<td>${param.psgnr}</td>
			
			
		
				<td><p>Price:</p></td>
				<td> ${param.psgnr * param.fare}</td>
			</tr>
			
			
			
			</table>		
				
		</div>
		</section>
			
 </body>
</html>