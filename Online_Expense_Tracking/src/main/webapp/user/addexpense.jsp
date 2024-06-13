<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ include file="../Component/AllCss.jsp" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <%@page isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="ISO-8859-1">
    <title>Add Expense</title>
    
    <style type="text/css">
    .card-sh {
  box-shadow: 0 0 6px 0 rgba(0, 0, 0, 0.3);S
}
    
    </style>
</head>
<body class="bg-light">




<c:if test="${empty loginuser }">

	<c:redirect url="../login.jsp"></c:redirect>
</c:if>

    <%@ include file="../Component/Navbar.jsp" %>

    <div class="container">
        <div class="row justify-content-center">
            <div class="col-md-6">
                <div class="card card-sh ">
                    <div class="card-header text-center">
                        <h5 class="card-title">Add Expense</h5>
                        <c:if test="${not empty msg}">
						  <p class="text-center text-success fs-4">${msg}</p>
						  <c:remove var="msg"/>
						  </c:if> 
                    </div>
                    <div class="card-body">
                        <form action="../processExpense" method="post">
                            <div class="mb-3">
                                <label for="title">Title</label>
                                <input type="text" id="title" name="title" class="form-control">
                            </div>

                            <div class="mb-3">
                                <label for="date">Date</label>
                                <input type="date" id="date" name="date" class="form-control">
                            </div>

                            <div class="mb-3">
                                <label for="time">Time</label>
                                <input type="time" id="time" name="time" class="form-control">
                            </div>

                            <div class="mb-3">
                                <label for="description">Description</label>
                                <input type="text" id="description" name="description" class="form-control">
                            </div>

                            <div class="mb-3">
                                <label for="price">Price</label>
                                <input type="text" id="price" name="price" class="form-control">
                            </div>

                            <button type="submit" class="btn btn-success col-md-12">Add</button>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>
</body>
</html>
