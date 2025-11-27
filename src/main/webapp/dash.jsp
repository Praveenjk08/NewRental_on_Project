<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@ page import="com.servlet.Dto.User" %>
<%@ page language="java" %>
<!DOCTYPE html>
<html>
<head>
<title>User Dashboard</title>
<link rel="stylesheet" href="css/style.css">
</head>
<body>

<%@ include file="NavBar.jsp" %>

<%
    User user = (User) session.getAttribute("user");
%>

<div class="container fade-in">

  <div class="card">
    <h1>👋 Hello, <%= user.getFullname() %>!</h1>
    <p>Welcome to your Skyline Rentals dashboard 🌟</p>

    <div style="margin-top:20px;">
      <a class="btn" href="vehicledetails">Browse Vehicles 🚘</a>
      <a class="btn" href="viewuser1?view=<%= user.getU_id() %>">View Profile 👤</a>
    </div>
  </div>

</div>

<%@ include file="Footer.jsp" %>
