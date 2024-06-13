<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <%@page isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<%@include file="Component/AllCss.jsp"%>
<style>
.card-sh {
  box-shadow: 0 0 6px 0 rgba(0, 0, 0, 0.3);S
}

/* Centering the form */
.container {
  display: flex;
  justify-content: center;
  align-items: center;
  height: 40vh; /* Make the container take up the full viewport height */
}
</style>
</head>
<body class="bg-light">
<%@include file="Component/Navbar.jsp"%>

<div class="header text-center">
  <p class="fs-3">Login page</p>
  <c:if test="${not empty msg}">
  <p class="text-center text-success fs-4">${msg}</p>
  <c:remove var="msg"/>
  </c:if>
</div>

<div class="container">
  <div class="card card-sh">
    <div class="card-body">
      <form action="login" method="POST">
        
        <div class="mb-3">
          <label>Email</label>
          <input type="text" name="email" class="form-control">
        </div>

        <div class="mb-3">
          <label>Password</label>
          <input type="password" name="pwd" class="form-control">
        </div>


        <button class="btn btn-success col-md-12">Login</button>
        <div class="tecxt-center mt-2">
        Don't have an account <a href="register.jsp" class="text-decoration-not">create one</a>
        </div>
      </form>
    </div>
  </div>
</div>

</body>
</html>
