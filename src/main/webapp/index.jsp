<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@ page language="java" %>
<!DOCTYPE html>
<html>
<head>
<title>Skyline Rentals</title>
<link rel="stylesheet" href="css/style.css">
</head>
<body>

<%@ include file="NavBar.jsp" %>

<div class="container fade-in">
  <div class="card">
    <h1>🚗 Welcome to <b>Skyline Rentals</b></h1>
    <p>
      ✨ Your trusted partner for premium vehicle rentals.  
      Affordable rates • Verified cars • 24/7 Support.
    </p>

    <div style="margin-top:20px;">
      <a class="btn" href="Vehicledetails.jsp">Browse Vehicles 🚘</a>
    </div>
  </div>

  <div class="card fade-in">
    <h2>🌟 Popular Cars</h2>
    <p>Explore our most booked and trusted vehicles.</p>
  </div>
</div>

<%@ include file="Footer.jsp" %>
</body>
</html>
