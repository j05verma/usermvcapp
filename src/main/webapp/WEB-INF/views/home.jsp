<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" isELIgnored="false"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Home Page</title>
<%@include file="common_css_js.jsp"%>
</head>
<body>
	<c:choose>
		<c:when test="${u!=null }">
			<div class="container navbar navbar-light mt-5 ">
				<nav aria-label="breadcrumb">
					<ol class="breadcrumb">
						<li class="breadcrumb-item"><a href="load?choice=2">Edit
								Account</a></li>
						<li class="breadcrumb-item"><a href="view.jsp">Profile</a></li>
						<li class="breadcrumb-item"><a href="delete/${u.getId()}">Delete
								Your Account</a></li>
						<li class="breadcrumb-item"><a href="logout">logout</a></li>
					</ol>
				</nav>
			</div>

			<%-- 
			<h3>
				<a href="load?choice=2">Edit Account</a>
			</h3>
			<h3>
				<a href="view.jsp">Profile</a>
			</h3>
			<h3>
				<a href="delete?id=${u.getId() }">Delete Your Account</a>
			</h3>
			<h3>
				<a href="logout">logout</a>
			</h3> --%>
		</c:when>
		<c:otherwise>
			<%
			response.sendRedirect("login");
			%>
		</c:otherwise>
	</c:choose>
</body>
</html>