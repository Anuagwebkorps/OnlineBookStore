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

<body>
<marquee width="60%" direction="right" style="color: red;"><h2>Online Book Store</h2></marquee>
<h3 align="center">Client Register Page</h3>
<div class="container">
  
  <form action="loginClient"> <!-- use jsp loginAdmin.jsp -->
    <div class="form-group ">
        <label for="name">Name:</label>
        <input type="text" class="form-control"  placeholder="Enter name" name="name" required="required">
      </div>
    <div class="form-group ">
      <label for="email">Email:</label>
      <input type="email" class="form-control"  placeholder="Enter email" name="email">
    </div>
    <div class="form-group ">
      <label for="role">Role:</label>
      <input type="text" class="form-control"  placeholder="Enter role" name="role"  required="required">
    </div>
    <div class="form-group ">
        <label for="pwd">Password:</label>
        <input type="password" class="form-control"  placeholder="Enter password" name="pwd"  required="required">
      </div>
    
    <button type="submit" class="btn btn-default">Submit</button>
  </form>
</div>
<div style="text-align: center;">
<h3><a href="loginClient.html">LOGIN</a></h3>
</div>

</body>

</html>
