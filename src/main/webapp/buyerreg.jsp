<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Buyer Registration</title>
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
    max-width: 600px;
    background-color: #ffffff;
    padding: 30px;
    border-radius: 10px;
    box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
    margin-top: 50px;
  }

  .container h3 {
    color: #4CAF50;
    margin-bottom: 20px;
  }

  .form-control {
    border-radius: 5px;
  }

  .form-check {
    display: inline-block;
    margin-right: 15px;
  }

  .form-check-input {
    margin-top: 5px;
  }

  .btn {
    margin-top: 10px;
  }

  .footer {
    background-color: #333;
    color: white;
    text-align: center;
    padding: 40px 0;
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
      <h3 align="center">Buyer Registration Form</h3>
      <form method="post" action="insertbuyer">
        <div class="form-group">
          <label for="bname">Enter Name</label>
          <input type="text" class="form-control" name="bname" id="bname" required />
        </div>

        <div class="form-group">
          <label>Select Gender</label>
          <div class="form-check">
            <input type="radio" name="bgender" class="form-check-input" value="Male" required /> <label class="form-check-label">Male</label>
          </div>
          <div class="form-check">
            <input type="radio" name="bgender" class="form-check-input" value="Female" required /> <label class="form-check-label">Female</label>
          </div>
          <div class="form-check">
            <input type="radio" name="bgender" class="form-check-input" value="Others" required /> <label class="form-check-label">Others</label>
          </div>
        </div>

        <div class="form-group">
          <label for="bdob">Select Date of Birth</label>
          <input type="date" name="bdob" class="form-control" id="bdob" required />
        </div>

        <div class="form-group">
          <label for="bemail">Enter Email ID</label>
          <input type="email" name="bemail" class="form-control" id="bemail" required />
        </div>

        <div class="form-group">
          <label for="bpwd">Enter Password</label>
          <input type="password" name="bpwd" class="form-control" id="bpwd" required />
        </div>

        <div class="form-group">
          <label for="blocation">Enter Location</label>
          <input type="text" name="blocation" class="form-control" id="blocation" required />
        </div>

        <div class="form-group">
          <label for="bcontact">Enter Contact</label>
          <input type="number" name="bcontact" class="form-control" id="bcontact" required />
        </div>

        <div class="form-group text-center">
          <input type="submit" value="Register" class="btn btn-success"/>
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
