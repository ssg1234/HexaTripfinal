<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<header>
	<span class="lg">HexaTrip</span>
	
	
	 <div>
	 <a href="logOut">LogOut</a>
     </div>
</header>
<%@include file="HeadSection.jsp" %>
<body>

<section>
   <h2 align="center">Error Page</h2>
   <div style="color:red" align="center">${err}</div>
</section>


 
</body>
</html>