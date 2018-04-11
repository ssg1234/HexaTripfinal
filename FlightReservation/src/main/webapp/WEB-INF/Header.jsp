<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<header>
	<span class="lg">HexaTrip</span>
	<c:if test="${sessionScope.login eq null}">
	<c:redirect url="/loginfrm"></c:redirect>
	</c:if>
	 <h4 align="right">Welcome ${sessionScope.login.custName}</h4>
	 <div>
	 <a href="main">Home</a>
	 <a href="logOut">LogOut</a>
     </div>
</header>

  

