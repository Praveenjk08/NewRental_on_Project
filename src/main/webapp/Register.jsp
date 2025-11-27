<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@ page language="java" %>
<!DOCTYPE html>
<html>
<head>
<title>User Registration</title>
<link rel="stylesheet" href="css/style.css">
</head>
<body>

<%@ include file="NavBar.jsp" %>

<div class="form-box fade-in">
  <h2>📝 Create Account</h2>

  <form action="reg" method="post">
    <input type="text" name="name" placeholder="Full Name" required>
    <input type="email" name="email" placeholder="Email Address" required>
    <input type="password" name="pass" placeholder="Password" required>
    <input type="tel" name="ph" placeholder="Phone Number" required>

    <input type="date" name="date" value="<%= java.time.LocalDate.now() %>" readonly>

    <button class="btn">Register 🚀</button>
  </form>
</div>

<%@ include file="Footer.jsp" %>
</body>
</html>
