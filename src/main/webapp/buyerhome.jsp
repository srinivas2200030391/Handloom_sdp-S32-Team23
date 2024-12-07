<%@page import="java.time.LocalDateTime"%>
<%@page import="java.time.format.DateTimeFormatter"%>
<%@page import="com.klef.jfsd.model.Buyer"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
Buyer b = (Buyer)session.getAttribute("buyer");
if (b == null) {
    out.println("Error: Buyer not found in session. Redirecting to login page...");
    response.sendRedirect("buyerlogin");
    return;
}

LocalDateTime currentDateTime = LocalDateTime.now();
DateTimeFormatter formatter = DateTimeFormatter.ofPattern("EEEE, MMMM d, yyyy 'at' h:mm a");
String formattedDateTime = currentDateTime.format(formatter);
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Buyer Home</title>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css">
<style>
    body {
        font-family: Arial, sans-serif;
        margin: 0;
        padding: 0;
        display: flex;
        flex-direction: column;
        min-height: 100vh;
        background: linear-gradient(to bottom, #e0f7fa, #ffffff);
        color: #333;
    }

    h1 {
        margin-top: 50px;
        font-size: 2.5rem;
        color: #00796b;
        text-align: center;
    }

    p {
        text-align: center;
        font-size: 1.2rem;
    }

    .shop-now {
        display: block;
        margin: 40px auto;
        padding: 15px 30px;
        font-size: 1.5rem;
        color: #fff;
        background: #00796b;
        border: none;
        border-radius: 5px;
        cursor: pointer;
        text-align: center;
        text-decoration: none;
        box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
        transition: all 0.3s ease;
    }

    .shop-now:hover {
        background: #004d40;
        transform: scale(1.05);
        box-shadow: 0 6px 8px rgba(0, 0, 0, 0.2);
    }

    .quote-section {
        margin: 30px auto;
        padding: 20px;
        background: #ffffff;
        border: 2px solid #00796b;
        border-radius: 10px;
        max-width: 600px;
        text-align: center;
    }

    .quote-section blockquote {
        font-style: italic;
        color: #004d40;
    }

    .quote-section cite {
        display: block;
        margin-top: 10px;
        font-weight: bold;
        color: #00796b;
    }

    #footer {
        background-color: #333;
        color: white;
        text-align: center;
        padding: 20px;
        margin-top: auto;
    }

    #footer a {
        color: #FFD700;
        text-decoration: none;
    }
</style>
</head>
<body>
<jsp:include page="buyernavbar.jsp" /><br/><br/>

<h1>Welcome, <%= b.getName() %>!</h1>
<p>Today is <strong><%= formattedDateTime %></strong>.</p>

<!-- Shop Now Button -->
<a href="shopnow" class="shop-now">Shop Now</a>

<!-- Inspirational Quote Section -->
<div class="quote-section">
    <blockquote>
        "Crafting tradition, thread by thread. Wear the pride of heritage with every handloom piece."
    </blockquote>
    <cite>- Handloom Artisan</cite>
</div>

<!-- Footer -->
<div id="footer">
    <p>&copy; 2024 Handloom Fashion. All Rights Reserved. | <a href="aboutus">About Us</a> | <a href="contactus">Contact Us</a></p>
</div>
</body>
</html>