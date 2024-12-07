<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ taglib uri="jakarta.tags.core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Registration Success</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
<style>
  html, body {
    height: 100%; /* Full height for the viewport */
    margin: 0;
    display: flex;
    flex-direction: column;
    font-family: 'Arial', sans-serif;
  }

  .container {
    flex: 1; /* Allow the container to grow and fill available space */
    max-width: 600px;
    background-color: #ffffff;
    padding: 40px;
    border-radius: 10px;
    box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
    margin: 100px auto 20px; /* Center the container */
  }

  .success-message {
    text-align: center;
    color: #4CAF50;
    margin-bottom: 20px;
  }

  .success-message h1 {
    font-size: 36px;
  }

  .btn-login {
    display: block;
    width: 100%;
    margin-top: 20px;
    background-color: #4CAF50;
    color: white;
    border-radius: 5px;
    padding: 10px;
    font-size: 16px;
    border: none;
  }

  .btn-login:hover {
    background-color: #45a049;
    text-decoration: none;
  }

  .footer {
    background-color: #333;
    color: white;
    text-align: center;
    padding: 20px 0;
  }
</style>
</head>
<body>
<div class="container">
  <div class="success-message">
    <h1>Registration Successful!</h1>
    <p><c:out value="${message}"></c:out></p>
    <a href="buyerlogin" class="btn-login">Login Here</a>
  </div>
</div>

<!-- Footer -->
<div class="footer">
  <p>&copy; 2024 Handloom Fashion Project. All rights reserved.</p>
</div>

<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.5.4/dist/umd/popper.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>
</html>
