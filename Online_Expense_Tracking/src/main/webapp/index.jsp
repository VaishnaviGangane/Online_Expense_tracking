<%@page import="org.hibernate.boot.registry.StandardServiceRegistryBuilder"%>
<%@page import="org.hibernate.boot.MetadataSources"%>
<%@page import="org.hibernate.boot.Metadata"%>
<%@page import="org.hibernate.SessionFactory"%>
<%@page import="org.hibernate.boot.registry.StandardServiceRegistry"%>
<%@page import="org.hibernate.cfg.Configuration"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Expense Tracker</title>
    <%@include file="Component/AllCss.jsp"%>
</head>
<body>
    <%@include file="Component/Navbar.jsp"%>
    

    <div id="carouselExampleControls" class="carousel slide" data-bs-ride="carousel">
        <div class="carousel-inner">
            <div class="carousel-item active">
                <img src="image/ex1.jpg" class="d-block w-100" alt="..." height="650px">
            </div>
            <div class="carousel-item">
                <img src="image/ex2.jpg" class="d-block w-100" alt="..." height="650px">
            </div>
            <div class="carousel-item">
                <img src="image/ex3.jpg" class="d-block w-100" alt="..." height="650px">
            </div>
        </div>
        <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleControls" data-bs-slide="prev">
            <span class="carousel-control-prev-icon" aria-hidden="true"></span>
            <span class="visually-hidden">Previous</span>
        </button>
        <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleControls" data-bs-slide="next">
            <span class="carousel-control-next-icon" aria-hidden="true"></span>
            <span class="visually-hidden">Next</span>
        </button>
    </div>
</body>
</html>
