<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="jakarta.tags.core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Buyer Login</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
<style>
  body {
    background-color: #f4f4f9;
    font-family: 'Arial', sans-serif;
  }

  .page-container {
    display: flex;
    flex-direction: column;
    min-height: 100vh;
  }

  .sidebar {
    height: 100%;
    width: 250px;
    position: fixed;
    top: 0;
    left: 0;
    background-color: #333;
    padding-top: 20px;
    overflow-x: hidden;
  }

  .sidebar a {
    padding: 15px 20px;
    text-decoration: none;
    font-size: 18px;
    color: white;
    display: block;
  }

  .sidebar a:hover {
    background-color: #575757;
    color: white;
  }

  .content {
    flex-grow: 1;
    margin-left: 260px;
    padding: 20px;
  }

  .container {
    max-width: 600px;
    background-color: #ffffff;
    padding: 40px;
    border-radius: 10px;
    box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
    margin: 0 auto;
  }

  .header {
    text-align: center;
    margin-bottom: 30px;
    color: #4CAF50;
  }

  .header h3 {
    font-size: 28px;
  }

  .form-group label {
    color: #333;
    font-weight: bold;
  }

  .btn {
    width: 48%;
    margin-top: 10px;
  }

  .btn-login {
    background-color: #4CAF50;
    color: white;
    border-radius: 5px;
    border: none;
  }

  .btn-login:hover {
    background-color: #45a049;
  }

  .btn-clear {
    background-color: #e0e0e0;
    color: #333;
    border-radius: 5px;
    border: none;
  }

  .btn-clear:hover {
    background-color: #ccc;
  }

  .message {
    text-align: center;
    color: red;
    margin-bottom: 20px;
  }

  .footer {
    background-color: #333;
    color: white;
    text-align: center;
    padding: 40px 0;
    margin-top: auto;
  }

  .footer a {
    color: #4CAF50;
    text-decoration: none;
  }

  .footer a:hover {
    text-decoration: underline;
  }
</style>
</head>
<body>
<div class="page-container">
  <!-- Sidebar -->
  <div class="sidebar">
    <div class="logo">
      <a href="https://imgbb.com/"><img src="https://i.ibb.co/vD8P3NG/fbfb30cbcb584de1800c92cd09350116-free.png" alt="Project Logo" border="0"></a>
    </div>
    <a href="/">Home</a>
    <a href="buyerreg">Buyer Registration</a>
    <a href="buyerlogin">Buyer Login</a>
    <a href="adminlogin">Admin Login</a>
  </div>

  <!-- Content -->
  <div class="content">
    <div class="container">
      <div class="header">
        <h3>Buyer Login Form</h3>
      </div>

      <div class="message">
        <c:out value="${message}"></c:out>
      </div>

      <form method="post" action="checkbuyerlogin">
        <div class="form-group">
          <label for="bemail">Enter Email</label>
          <input type="email" class="form-control" name="bemail" id="bemail" required />
        </div>

        <div class="form-group">
          <label for="bpwd">Enter Password</label>
          <input type="password" name="bpwd" class="form-control" id="bpwd" required />
        </div>

        <div class="form-group text-center">
          <input type="submit" value="Login" class="btn btn-login" />
          <input type="reset" value="Clear" class="btn btn-clear" />
        </div>
      </form>
    </div>
  </div>

  <!-- Footer -->
  <div class="footer">
    <p>Contact us at: <a href="mailto:support@handloomproject.com">support@handloomproject.com</a></p>
    <p>&copy; 2024 Handloom Fashion Project. All rights reserved.</p>
  </div>
</div>
</body>
</html>
