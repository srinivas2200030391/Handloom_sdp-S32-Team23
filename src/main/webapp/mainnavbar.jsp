<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" type="text/css" href="style.css"/>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
<title>JFSD Project</title>
<style>
  html, body {
    height: 100%; /* Ensure full height */
    margin: 0;
    padding: 0;
    font-family: 'Arial', sans-serif;
    background-color: #f4f4f9;
  }

  /* Flex container for page layout */
  .page-container {
    display: flex;
    flex-direction: column;
    min-height: 100vh; /* Occupy full viewport height */
  }

  .content {
    flex-grow: 1; /* Allows content to grow and push footer down */
    margin-left: 260px;
    padding: 20px;
  }

  /* Sidebar styling */
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

  h2 {
    color: #4CAF50;
    font-weight: bold;
    text-align: center;
    margin-bottom: 30px;
  }

  /* Welcome section */
  .welcome-section {
    text-align: center;
    background: linear-gradient(45deg, #4CAF50, #81C784);
    padding: 50px;
    color: white;
    border-radius: 10px;
    box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
  }

  .welcome-section h1 {
    font-size: 36px;
    margin-bottom: 20px;
  }

  .welcome-section p {
    font-size: 18px;
    margin-bottom: 20px;
  }

  .welcome-section .btn {
    background-color: white;
    color: #4CAF50;
    padding: 10px 20px;
    font-size: 16px;
    text-decoration: none;
    border-radius: 5px;
    border: 2px solid white;
  }

  .welcome-section .btn:hover {
    background-color: #4CAF50;
    color: white;
  }

  /* Footer styling */
  .footer {
    background-color: #333;
    color: white;
    text-align: center;
    padding: 40px 0; /* Increased padding for larger footer */
    margin-top: auto; /* Push footer to bottom */
  }

  .footer a {
    color: #4CAF50;
    text-decoration: none;
  }

  .footer a:hover {
    text-decoration: underline;
  }

  /* Responsive adjustments */
  @media screen and (max-width: 768px) {
    .sidebar {
      width: 100%;
      height: auto;
      position: relative;
    }
    .sidebar a {
      float: left;
    }
    .content {
      margin-left: 0;
    }
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
    <h2>Welcome to the Handloom Fashion Project</h2>
    <div class="welcome-section">
      <h1>Promoting Handloom Fashion Globally</h1>
      <p>
        Experience the vibrant and authentic handloom fashion products directly from the weavers. 
        Our platform connects global buyers with unique and sustainable handloom designs.
      </p>
      <a href="buyerreg" class="btn">Join as a Buyer</a>
      <a href="adminlogin" class="btn">Admin Login</a>
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
