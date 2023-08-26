<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" isELIgnored="false"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Edit profile</title>
<%@include file="common_css_js.jsp" %>
</head>
<body>
	<c:choose>
		<c:when test="${u!=null }">
		  
		<div class="container mt-3">
			<form:form modelAttribute="user" action="update" method="post">
				<form:label  path="id">Id</form:label>
				<form:input class="form-control" path="id" value="${u.getId() }" />
				<br>
				<form:label path="name">Name</form:label>
				<form:input class="form-control" path="name" value="${u.getName() }" />
				<br>
				<form:label path="phone">Phone</form:label>
				<form:input class="form-control" path="phone" value="${u.getPhone() }" />
				<br>
				<form:label path="age">Age</form:label>
				<form:input class="form-control" path="age" value="${u.getAge() }" />
				<br>
				<form:label path="password">Password</form:label>
				<form:input class="form-control" path="password" value="${u.getPassword() }" />
				<br>
				<form:label path="email">Password</form:label>
				<form:input class="form-control" path="email" value="${u.getEmail() }" />
				<br>
				<div class="container  text-center">
				<form:button class="btn btn-primary">Update</form:button>
				</div>
			</form:form>
			
			
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