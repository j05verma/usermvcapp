<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" isELIgnored="false"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Profile Page</title>
<%@include file="common_css_js.jsp"%>
</head>
<body>
	<c:choose>
		<c:when test="${u!=null }">
		 <div class="container mt-3 text-center">
		     <h4>User_Id <span class="badge badge-primary">${u.getId() }</span></h4>
		     <h4>User_Name <span class="badge badge-secondary">${u.getName() }</span></h4>
			 <h4>User_Phone <span class="badge badge-success">${u.getPhone() }</span></h4>
			 <h4>User_Age <span class="badge badge-dark">${u.getAge() }</span></h4>
			 <h4>User_Password <span class="badge badge-danger">${u.getPassword() }</span></h4>
			 <h4>User_Email <span class="badge badge-warning">${u.getEmail() }</span></h4>
			</div>
		</c:when>
		<c:otherwise>
			<%
				response.sendRedirect("http://localhost:8080/usermvcapp/");
			%>
		</c:otherwise>
	</c:choose>
</body>
</html>