<!DOCTYPE html>
<html lang="en">
<head>
  <title>Bootstrap Example</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
</head>
<%
String email=(String) session.getAttribute("id");
%>
<%@page import="com.Emaill"%>

<body>
<marquee width="60%" direction="left" style="color: lightgreen;"><h2>Online Book Store</h2></marquee>
<h3 align="center">Login Page Client</h3>
<div class="container">
  
  <form action="LoginProfile"> <!-- use jsp loginAdmin.jsp -->
    
    <div class="form-group ">
      <label for="email">Email:</label>
      <input type="email" class="form-control"  placeholder="Enter email" name="email">
    </div>
    
    <div class="form-group ">
        <label for="pwd">Password:</label>
        <input type="password" class="form-control"  placeholder="Enter password" name="pwd">
      </div>
    
    <button type="submit" class="btn btn-default">Submit</button>
  </form>
</div>
<% 

 Emaill.send("chouhanvishal273@gmail.com", "jiqruamhvpktnvzk", email, "Online Book Store", "Welcome user on online book store...");
 
 //RequestDispatcher rd=request.getRequestDispatcher("ProfileClient.jsp");
	//rd.include(request, response);
	out.println("<script>window.alert('successfully register');</script>");
 %>
</body>
</html>
