<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Admin Login</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
<style>
  body {
    background-color: #f8f9fa;
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

  .logo {
    text-align: center;
    margin-bottom: 20px;
  }

  .logo img {
    width: 150px;
    border-radius: 50%;
  }

  .content {
    flex-grow: 1;
    margin-left: 260px;
    padding: 20px;
  }

  .container {
    max-width: 500px;
    background-color: #ffffff;
    padding: 30px;
    border-radius: 10px;
    box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
    margin-top: 50px;
  }

  .container h3 {
    color: #4CAF50;
    margin-bottom: 20px;
    text-align: center;
  }

  .form-control {
    border-radius: 5px;
    margin-bottom: 15px;
  }

  .btn {
    margin-top: 10px;
    width: 48%;
  }

  .footer {
    background-color: #333;
    color: white;
    text-align: center;
    padding: 20px;
    margin-top: auto;
  }

  .footer p {
    margin: 0;
  }
</style>
</head>
<body>

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

<!-- Main Content -->
<div class="page-container">
  <div class="content">
    <div class="container">
      <h3>Admin Login Form</h3>
      <form method="post" action="checkadminlogin">
        <div class="form-group">
          <label>Enter Username</label>
          <input type="text" class="form-control" name="auname" required />
        </div>
        <div class="form-group">
          <label>Enter Password</label>
          <input type="password" name="apwd" class="form-control" required />
        </div>
        <div class="form-group text-center">
          <input type="submit" value="Login" class="btn btn-success"/>
          <input type="reset" value="Clear" class="btn btn-danger"/>
        </div>
      </form>
    </div>
  </div>

  <!-- Footer -->
  <div class="footer">
    <p>&copy; 2024 Handloom Fashion Project. All rights reserved.</p>
  </div>
</div>

<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.5.4/dist/umd/popper.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>
</html>
