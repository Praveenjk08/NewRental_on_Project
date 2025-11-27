<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@ page import="com.servlet.Dto.User" %>
<%@ page language="java" %>
<!DOCTYPE html>
<html>
<head>
<title>Edit User</title>
<link rel="stylesheet" href="css/style.css">
</head>
<body>

<%@ include file="NavBar.jsp" %>

<%
   User user = (User) request.getAttribute("editusers");
%>

<div class="form-box fade-in">
  <h2>✏️ Edit User</h2>

  <form action="update1" method="get">
    <input type="hidden" name="uid" value="<%= user.getU_id() %>">

    <input type="text" name="name" value="<%= user.getFullname() %>" required>
    <input type="email" name="email" value="<%= user.getEmail() %>" required>
    <input type="password" name="pass" value="<%= user.getPass() %>" required>
    <input type="tel" name="ph" value="<%= user.getPhone() %>" required>

    <button class="btn">Update ✔️</button>
  </form>

</div>

<%@ include file="Footer.jsp" %>
</body>
</html>
