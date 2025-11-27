<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@ page language="java" %>
<!DOCTYPE html>
<html>
<head>
<title>User Login</title>
<link rel="stylesheet" href="css/style.css">
</head>
<body>

<%@ include file="NavBar.jsp" %>

<div class="form-box fade-in">
  <h2>🔐 Login</h2>

  <form action="log" method="post">
    <input type="email" name="email" placeholder="Email" required>
    <input type="password" name="pass" placeholder="Password" required>
    <button class="btn">Login 🚀</button>
  </form>
</div>

<%@ include file="Footer.jsp" %>
</body>
</html>
