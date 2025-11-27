<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@ page import="com.servlet.Dto.User" %>
<%@ page language="java" %>
<!DOCTYPE html>
<html>
<head>
<title>User Details</title>
<link rel="stylesheet" href="css/style.css">
</head>
<body>

<%@ include file="NavBar.jsp" %>

<%
   User user = (User) request.getAttribute("userrod");
%>

<div class="container fade-in">
  <div class="card">
    <h2>👤 User Details</h2>

    <table class="table">
      <tr><th>ID</th><td><%= user.getU_id() %></td></tr>
      <tr><th>Name</th><td><%= user.getFullname() %></td></tr>
      <tr><th>Email</th><td><%= user.getEmail() %></td></tr>
      <tr><th>Phone</th><td><%= user.getPhone() %></td></tr>
      <tr><th>Created At</th><td><%= user.getCurrDateTime() %></td></tr>
    </table>

    <a class="btn" href="edit1?e1=<%= user.getU_id()%>">✏️ Edit Profile</a>
  </div>
</div>

<%@ include file="Footer.jsp" %>
</body>
</html>
