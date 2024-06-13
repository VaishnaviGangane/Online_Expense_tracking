<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <%@page isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<%@include file="Component/AllCss.jsp"%>
<style>
.card-sh {
  box-shadow: 0 0 6px 0 rgba(0, 0, 0, 0.3);
}

/* Centering the form */
.container {
  display: flex;
  justify-content: center;
  align-items: center;
  height: 50vh; /* Make the container take up the full viewport height */
}
</style>
</head>
<body class="bg-light">
<%@include file="Component/Navbar.jsp"%>

<div class="header text-center">
  <p class="fs-3">Register page</p>
  <c:if test="${not empty msg}">
  <p class="text-center text-success fs-4">${msg}</p>
  <c:remove var="msg"/>
  </c:if> 
</div>

<div class="container">
  <div class="card card-sh">
    <div class="card-body">
      <form action="userRegister" method="post">
        <div class="mb-3">
          <label>Enter full name</label>
          <input type="text" name="fullname" class="form-control">
        </div>

        <div class="mb-3">
          <label>Email</label>
          <input type="text" name="email" class="form-control">
        </div>

        <div class="mb-3">
          <label>Password</label>
          <input type="password" name="pwd" class="form-control">
        </div>

        <div class="mb-3">
          <label>About</label>
          <input type="text" name="about" class="form-control">
        </div>

        <button class="btn btn-success col-md-12">Register</button>
      </form>
    </div>
  </div>
</div>

</body>
</html>
