<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@ page language="java" %>
<!DOCTYPE html>
<html>
<head>
<title>Admin Login</title>
<link rel="stylesheet" href="css/style.css">
</head>
<body>

<%@ include file="NavBar.jsp" %>

<div class="form-box fade-in">
  <h2>🛠️ Admin Login</h2>

  <form action="adminlog" method="post">
    <input type="email" name="aname" placeholder="Admin Email" required>
    <input type="password" name="apass" placeholder="Password" required>
    <button class="btn">Login</button>
  </form>
</div>

<%@ include file="Footer.jsp" %>
</body>
</html>
