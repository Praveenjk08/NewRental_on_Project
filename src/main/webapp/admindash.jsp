<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@ page import="com.servlet.Dto.Admin" %>
<%@ page language="java" %>
<!DOCTYPE html>
<html>
<head>
<title>Admin Dashboard</title>
<link rel="stylesheet" href="css/style.css">
</head>
<body>

<%@ include file="NavBar.jsp" %>

<%
   Admin admin = (Admin) session.getAttribute("admin");
%>

<div class="container fade-in">
  <div class="card">
    <h1>🛡️ Admin Panel</h1>
    <h3>Hello, <%= admin.getAdmin_Fullname() %> 👑</h3>

    <p>Manage users, vehicles, and bookings efficiently.</p>

    <div style="margin-top:20px;">
      <a class="btn" href="viewuser">Manage Users 👥</a>
      <a class="btn" href="vehicledetails">View Vehicles 🚘</a>
    </div>
  </div>
</div>

<%@ include file="Footer.jsp" %>
</body>
</html>
