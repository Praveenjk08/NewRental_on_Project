<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@ page import="java.util.List" %>
<%@ page import="com.servlet.Dto.Vehicles" %>
<%@ page language="java" %>
<!DOCTYPE html>
<html>
<head>
<title>Vehicles</title>
<link rel="stylesheet" href="css/style.css">
</head>
<body>

<%@ include file="NavBar.jsp" %>

<%
   List<Vehicles> vlist = (List<Vehicles>) request.getAttribute("vl");
%>

<div class="container fade-in">
  <h1>🚘 Available Vehicles</h1>

  <% if (vlist != null) {
       for (Vehicles v : vlist) { %>

        <div class="card fade-in">
          <h2><%= v.getBrand() %> - <%= v.getModel() %> 🚗</h2>

          <p>Year: <%= v.getYear() %></p>
          <p>Fuel: <%= v.getFuel_type() %></p>
          <p>Mileage: <%= v.getMilage() %> km/l</p>
          <p>Price: ₹<%= v.getPrice_per_day() %> / day</p>

          <img src="<%= v.getImage_url() %>" 
               style="width:250px; border-radius:10px; margin-top:10px;">

          <br><br>
          <a class="btn" href="#">Book Now 🛒</a>
        </div>

  <%   }
     } else { %>

     <p>No vehicles available 🚫</p>

  <% } %>

</div>

<%@ include file="Footer.jsp" %>
</body>
</html>
