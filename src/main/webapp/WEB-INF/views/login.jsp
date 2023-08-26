<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" isELIgnored="false"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Login Page</title>
<%@include file="common_css_js.jsp" %>
</head>
<body>
	<c:if test="${msg!=null }">
		<h1>${msg }</h1>
	</c:if>
	
	<form action="loginuser" method="post">
  <div class="container text-center">
   
    
    <div class="form-group">
      <label for="disabledTextInput">Phone Number</label>
      <input type="tel" id="disabledTextInput" name="phone" class="form-control" placeholder="Enter Phone Number">
    </div>
    <div class="form-group">
      <label for="disabledTextInput">Password</label>
      <input name="password" type="password" id="disabledTextInput" class="form-control" placeholder="Enter Password">
    </div>
    
    <button type="submit" class="btn btn-primary">Login</button>
    <button type="submit" class="btn btn-success"><a style="color: black"  href="load?choice=1">Register</a>
	    </button>
    </div>
</form>
</body>
</html>