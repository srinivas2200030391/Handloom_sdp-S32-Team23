<%@page import="com.klef.jfsd.model.Buyer"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
Buyer b = (Buyer)session.getAttribute("buyer");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Customer Home</title>
<style>
    body {
        font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
        margin: 0;
        padding: 0;
        background: linear-gradient(135deg, #74ebd5, #acb6e5);
        color: #333;
    }

    h3 {
        text-align: center;
        color: #2c3e50;
        font-size: 2rem;
        margin-top: 20px;
        text-shadow: 1px 1px 2px #ffffff;
    }

    .profile {
        max-width: 600px;
        margin: 20px auto;
        background: #ffffff;
        border-radius: 15px;
        box-shadow: 0 8px 15px rgba(0, 0, 0, 0.2);
        padding: 30px;
        font-size: 1rem;
        line-height: 1.8;
        color: #2c3e50;
        transition: transform 0.3s ease;
    }

    .profile:hover {
        transform: scale(1.02);
    }

    .profile span {
        font-weight: bold;
        color: #34495e;
    }

    .profile div {
        margin-bottom: 15px;
        padding: 5px;
        border-bottom: 1px solid #ecf0f1;
    }

    .navbar {
        background-color: #34495e;
        padding: 15px 20px;
        color: white;
        text-align: center;
        box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
    }

    .navbar a {
        color: #ecf0f1;
        text-decoration: none;
        margin: 0 15px;
        font-weight: bold;
        transition: color 0.3s ease;
    }

    .navbar a:hover {
        color: #1abc9c;
    }

    .navbar a.active {
        color: #f1c40f;
    }

    .container {
        display: flex;
        justify-content: center;
        align-items: center;
        flex-direction: column;
        min-height: 100vh;
    }

    footer {
        text-align: center;
        padding: 10px;
        background-color: #34495e;
        color: #ecf0f1;
        position: fixed;
        bottom: 0;
        width: 100%;
        box-shadow: 0 -4px 6px rgba(0, 0, 0, 0.1);
    }

    footer a {
        color: #1abc9c;
        text-decoration: none;
        margin: 0 5px;
    }

    footer a:hover {
        text-decoration: underline;
    }
</style>
</head>
<body>
<%@include file="buyernavbar.jsp"  %><br/><br/>
<div class="navbar">
    <a href="#" class="active">Home</a>
    <a href="#">Shop</a>
    <a href="#">Orders</a>
    <a href="#">Profile</a>
</div>
<div class="container">
    <h3>My Profile</h3>
    <div class="profile">
        <div>ID: <span><%=b.getId() %></span></div>
        <div>NAME: <span><%=b.getName() %></span></div>
        <div>GENDER: <span><%=b.getGender() %></span></div>
        <div>DOB: <span><%=b.getDateofbirth() %></span></div>
        <div>EMAIL: <span><%=b.getEmail() %></span></div>
        <div>LOCATION: <span><%=b.getLocation() %></span></div>
        <div>CONTACT: <span><%=b.getContact() %></span></div>
    </div>
</div>
<footer>
    &copy; 2024 Customer Home. All rights reserved. <a href="#">Privacy Policy</a> | <a href="#">Terms of Service</a>
</footer>
</body>
</html>
