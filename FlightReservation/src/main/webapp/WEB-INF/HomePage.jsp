<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>

<title>Home Page</title>
<style>

a:link, a:visited {
    background-color: #2070E8;
    color: white;
    padding: 14px 25px;
    text-align: right;
    text-decoration: none;
    display: inline-block;
}


a:hover, a:active {
    background-color:white;
     color: black;
}


</style>
 <%@include file="HeadSection.jsp" %>
 <header>
	<span>HexaTrip</span>
	<c:if test="${sessionScope.login eq null}">
	<c:redirect url="/loginfrm"></c:redirect>
	</c:if>
	 <h4 align="right">Welcome ${sessionScope.login.custName}</h4>
	 </header>
</head>
 
<body >
   
  
	<section id="home">
		<div align="center" id="lbar">
			<nav>
				<table>
					<tr>
						<td> <a href="bookfrm">Book Flights</a></td>
					</tr>
					<tr>
						<td> <a href="pnrForm">View Booking Details</a></td>
					</tr>
					<tr>
						<td> <a href="viewflights">Display Flight Details</a></td>	
					</tr>
					<tr>					
						<td> <a href="logOut">LogOut</a></td>
					</tr>
				</table>
				
			</nav>
		</div>

	</section>

</body>
</html>