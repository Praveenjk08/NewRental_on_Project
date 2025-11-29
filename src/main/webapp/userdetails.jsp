<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@ page import="java.util.List" %>
<%@ page import="com.servlet.Dto.User" %>
<%@ page language="java" %>
<!DOCTYPE html>
<html>
<head>
<title>All Users</title>
<link rel="stylesheet" href="css/style.css">
</head>
<body>

<%@ include file="NavBar.jsp" %>

<div class="container fade-in">

  <div class="card">
    <h2>👥 User List</h2>

    <%
        List<User> userlist = (List<User>) request.getAttribute("userlist1");
    %>

    <table class="table">
      <tr>
        <th>ID</th><th>Name</th><th>Email</th><th>Phone</th><th>Date</th><th>Action</th>
      </tr>

      <% if (userlist != null) {
          for (User u : userlist) { %>

        <tr>
          <td><%= u.getU_id() %></td>
          <td><%= u.getFullname() %></td>
          <td><%= u.getEmail() %></td>
          <td><%= u.getPhone() %></td>
          <td><%= u.getCurrDateTime() %></td>

          <td>
            <a href="delete?d=<%= u.getU_id() %>">🗑️ Delete</a> |
            <a href="edit?e=<%= u.getU_id() %>">✏️ Edit</a>
          </td>
        </tr>

      <% } } %>

    </table>

  </div>

</div>

<%@ include file="Footer.jsp" %>
</body>
</html>
