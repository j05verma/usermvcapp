<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Registration Page</title>
<%@include file="common_css_js.jsp" %>
</head>
<body>
   <div class="container">
     <form modelAttribute="user" action="save" method="post">
     <div class="form-row">
     <div class="form-group col-md-6">
      <label for="inputEmail4">Name</label>
      <input name="name" type="text" class="form-control" id="" placeholder="Name">
    </div>
    
    
    <div class="form-group col-md-6">
      <label for="inputEmail4">Phone</label>
      <input name="phone" type="tel" class="form-control" id="" placeholder="Phone">
    </div>
    <div class="form-group col-md-6">
      <label for="inputEmail4">Age</label>
      <input name="age" type="number" class="form-control" id="" placeholder="Age">
    </div>
    <div class="form-group col-md-6">
      <label for="inputPassword4">Password</label>
      <input name="password" type="password" class="form-control" id="inputPassword4" placeholder="Password">
    </div>
    <div class="form-group col-md-6">
      <label for="inputEmail4">Email</label>
      <input name="email" type="email" class="form-control" id="inputEmail4" placeholder="Email">
    </div>
    
  </div>
  <div class="col-auto text-center">
      <button type="submit" class="btn btn-success mb-2">Register</button>
    </div>
  </form>
   
   </div>
</body>
</html>