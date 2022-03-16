<a href="Logout">Logout</a><br>
<a href="ProfileClient.jsp">back</a><br>

<link rel="stylesheet" href="css/nivo-slider.css" type="text/css" media="screen" />
<script src="js/jquery.min.js" type="text/javascript"></script>
<script src="js/jquery.nivo.slider.js" type="text/javascript"></script>


<%
String email=(String) session.getAttribute("id");
%>

user:- <%=email%>
<%@include file="Database.jsp" %>

<%
int total=0;
String qr="select * from cart where email=?";
PreparedStatement ps=con.prepareStatement(qr);
ps.setString(1, email);
ResultSet rs=ps.executeQuery();
int count=0;
if(rs.next())
{
	do
	{
		String book=rs.getString("book");
		String iname=rs.getString("iname");
		String price=rs.getString("price");
		String author=rs.getString("author");
	   count++;
	   
		%>
		
		<style>
		 .dd{
		   background-color:red;
		   text-align:center;
		 }
		</style>
	   <body>
	    <div >
  
  <div class="card" style="width:350px" class="text-center">
    <img class="card-img-top" src="<%=iname %>" alt="Card image" style="width:50%">
    <div class="card-body" style="background_color:red">
      <h4 class="card-title">Book :<%=book %></h4>
      <p class="card-text">Author :<%=author %></p>
      <p class="card-text">Price :<%=price %></p>
    </div>
  </div>
  <br>
		
		</div>
		</body>
		
		<%
	}while(rs.next());
}
else
{
	out.println("no records found");
}
if(email==null)
{
	//out.println("error");
   %>
   <div style="height: 120px;width: 100%;background-color: #fff;text-align: center">

          <a href="Client.html">Register first</a>
    </div>
   
   <%
}
else
{
	%>
	      
	
	<div style="height: 120px;width: 100%;background-color: #fff;text-align: center">

        <a href="buy.jsp?email=<%=email%>">BUY NOW</a>
    </div>
	
	<% 
}

%>
<span class="badge badge-primary"><%=count %></span>

