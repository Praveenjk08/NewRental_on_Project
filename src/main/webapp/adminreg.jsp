<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@ page language="java" %>
<!DOCTYPE html>
<html>
<head>
<title>Admin Registration</title>
<link rel="stylesheet" href="css/style.css">
</head>
<body>

<%@ include file="NavBar.jsp" %>

<div class="form-box fade-in">
  <h2>👑 Admin Registration</h2>

  <form action="adminreg" method="post">
    <input type="text" name="aname" placeholder="Admin Name" required>
    <input type="email" name="aemail" placeholder="Admin Email" required>
    <input type="password" name="apass" placeholder="Admin Password" required>
    <input type="tel" name="aph" placeholder="Phone Number" required>

    <input type="date" name="adate" value="<%= java.time.LocalDate.now() %>" readonly>

    <button class="btn">Create Admin</button>
  </form>
</div>

<%@ include file="Footer.jsp" %>
</body>
</html>
