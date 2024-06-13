<%@ page import="com.dao.ExpenseDao" %>
<%@ page import="com.entity.User" %>
<%@ page import="com.entity.Expense" %>
<%@ page import="java.util.List" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <%@page isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="ISO-8859-1">
    <%@ include file="../Component/AllCss.jsp" %>
    <title>Expense Tracker - All Expenses</title>
</head>
<body>


<c:if test="${empty loginuser }">

	<c:redirect url="../login.jsp"></c:redirect>
</c:if>

    <%@ include file="../Component/Navbar.jsp" %>
    <div class="container">
        <div class="row">
            <div class="col-md-8 offset-md-2">
                <div class="card">
                    <div class="card-header text-center">
                        <p class="fs-3">All Expenses</p>
                    </div>
                    <div class="card-body">
                        <table class="table">
                            <thead>
                                <tr>
                                    <th scope="col">Title</th>
                                    <th scope="col">Description</th>
                                    <th scope="col">Date</th>
                                    <th scope="col">Time</th>
                                    <th scope="col">Price</th>
                                    <th scope="col">Action</th>
                                </tr>
                            </thead>
                            <tbody>
                                <% 
                                User user = (User) session.getAttribute("loginuser");
                                List<Expense> expenses = ExpenseDao.getallexpensebyuser(user);
                                for (Expense ex : expenses) {
                                %>
                                <tr>
                                    <td><%= ex.getTitle() %></td>
                                    <td><%= ex.getDescription() %></td>
                                    <td><%= ex.getDate() %></td>
                                    <td><%= ex.getTime() %></td>
                                    <td><%= ex.getPrice() %></td>
                                    <td><a href="#" class="btn btn-primary me-1">Edit</a>
                                    	<a href="#" class="btn btn-danger me-1">Delete</a> 
                                     </td>
                                </tr>
                                <% 
                                }
                                %>
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
        </div>
    </div>
</body>
</html>
