
<link rel="stylesheet" href="css/nivo-slider.css" type="text/css" media="screen" />
<script src="js/jquery.min.js" type="text/javascript"></script>
<script src="js/jquery.nivo.slider.js" type="text/javascript"></script>
<style>
     .aa{
     margin-left:940px;
     }
            ul {
  list-style-type: none;
  margin: 0;
  padding: 0;
  overflow: hidden;
  background-color: #333;
}

li {
  float: left;
}

li a {
  display: block;
  color: white;
  text-align: center;
  padding: 14px 16px;
  text-decoration: none;
}

li a:hover:not(.active) {
  background-color: #111;
}

.active {
  background-color: #04AA6D;
}
                                                          /* cart css  start*/
                                                          *{
                     box-sizing: border-box;
              }
              .column {
           float: left;
         width: 25%; /*//ek page me jite cart chaiyee 100 se dive ker do */
         height: 700px;
        padding: 5px;
            }
 	 body{
 	 	background-color:white;
 	 }
 	#cart{
 		height:400px;
 		width:240px;
 		background-color:skyblue;
 		margin: auto;
 		margin-top:150px;
 	}
 	#cart:hover{
 	
        box-shadow: 5px 6px 5px 5px black;
        transition: 1s;
 		
 	}
 	.dot {
  height: 25px;
  width: 25px;
  background-color: tomato;
  border-radius: 50%;
  display: inline-block;
   border: none;
   cursor: pointer;
   font-size:20px;
  
}
.plus{
       color: red;
	}
	img{
            height:314px;
            width:239px; 
       }
       .n1{
              font-family:Franklin Gothic Medium;
              font-size:20px;
              text-transform: uppercase;
              margin-left:85px;
          
               
       }
       
       .n2{
             font-family:Franklin Gothic Medium;
              font-size:20px;
              margin-left:85px;
          
              
       }
      .btnn{
     border: none;
     outline: 0;
     padding: 12px;
  margin-top:-50px;
    color: white;
    background-color: #000;
    text-align: center;
   cursor: pointer;
   width: 100%;
   font-size: 18px;*/
       }
    .btnn:hover{
         color:black;
             background-color: tomato;
       }   
       a{
          text-transform: none;
          text-decoration: none;
       }
                                                 
</style>

<%
String email=(String) session.getAttribute("id");
int count=0;
%>

<%@include file="Database.jsp" %>
<ul>
  <li><a class="active" href="welcome.html">Home</a></li>
  <li><a href="ProfileClient1.jsp">Back</a></li>
  <li><a href="Logout">Logout</a></li>
  <li><a href="#about"><%=email%></a></li>
  <a href="viewcart1.jsp" class="aa"><i class="fa fa-shopping-cart" style="font-size:36px;color:#fff"></i></a><br>
  
</ul>
<%
int total=0;
String qr="select * from cart where email=?";
PreparedStatement ps=con.prepareStatement(qr);
ps.setString(1, email);
ResultSet rs=ps.executeQuery();

if(rs.next())
{
	do
	{
		String book=rs.getString("book");
		String iname=rs.getString("iname");
		String p=rs.getString("price");
		int price=Integer.parseInt(p);
		String author=rs.getString("author");
		total=total+price;
	   count++;
	   
		%>
		
  <% 
  String temp="";
  if(book!=temp)
  {
	  temp=book;
  %>
  <div class="row"> 	
        <div class="column"> 
         <div id="cart1">
         
           <img src="<%=iname%>">
           <h4 class="n2"><%=price%>.rs</h4>
           <h3 class="n1"><%=book%></h3>
	
      
</div>
</div>
</div>
<%} %> 
		
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

    </div>
	
	<% 
}

%>
<div class="cartt">
<h3 class="qua">Quantity :<%=count %></h3>

<h3 class="qua">total :<%=total %></h3>
         <%
           if(count>0)
           {
        	   %><a href="buy.jsp?email=<%=email%>" class="bn">BUY NOW</a><% 
           }
          %>
         
           
       

</div>
