
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>


<%
String email=(String) session.getAttribute("id");

%>
 <%-- <%=email %> --%>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>


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
              font-size:16px;
              text-transform: uppercase;
              margin-left:94px;
              color:white;
              
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
        input{
      width: 40%;
      height:34px;
      margin-left:310px;
      margin-top:45px;
      font-size: 20px;
    }
    
      button{
       border: none;
     outline: 0;
     padding: 12px;
  margin-top:-40px;
    color: white;
    background-color:#000;
    text-align: center;
   cursor: pointer;
   width: 15%;
   font-size:11px;*/
      
      } 
      #search{
      
    color: white;
   
    text-align: center;
   cursor: pointer;
  
      }                                                              /* cart css end */
</style>

<!-- <div style="text-align:center">
  <form action="#" id="main">
  SEARCH: <input type="search" placeholder="search..." name="search">
  <input type="submit">
 <br><br>
  
</div> -->
 <!-- navbar start-->
 
   <%
     if(email==null)
     {
    	 %>
    	 <ul>
  <li><a class="active" href="welcome.html">Home</a></li>
  <li><a href="#" >Profile</a></li>
  <li><a href="#">Contact</a></li>
  <a href="loginClient.html"><i class="material-icons" style="font-size:30px;color:white;margin-left:1000px;margin-top:5px;">account_circle</i>
</a></li>

</ul>
    	 <%
     }
     else
     {
    	 %>
    	 <ul>
  <li><a class="active" href="welcome.html">Home</a></li>
  <li><a href="Logout">Logout</a></li>
  <li><a href="#about"><%=email%></a></li>
  <a href="viewcart1.jsp" class="aa"><i class="fa fa-shopping-cart" style="font-size:36px;color:#fff"></i></a><br>
  
</ul>
  <h3 id="search"><a href="S1.html">Search</a></h3>


    	 <%
     }
   %>
                      <!-- navbar end-->

                     <!-- cart-1 -->
   



<%@include file="Database.jsp" %>

<%
String qr="select * from field";
Statement st=con.createStatement();
ResultSet rs=st.executeQuery(qr);
if(rs.next())
{
	do
	{
		String book=rs.getString("book");
		String iname=rs.getString("img");
        int price=rs.getInt("price");
		String author=rs.getString("author");
		
		%>
		 <%if(email==null){%>
		
		<div class="row"> 
        <div class="column"> 
         <div id="cart">
           <img src="<%=iname%>">
           <h4 class="n2"><%=price%>$</h4>
           <h3 class="n1"><%=book%></h3>
           <p ><button class="btnn"><a href="loginClient.html">Add to cart</a></button></p>
	<!-- <button class="dot" style="margin-top:-12px;margin-left:89px;">+</button>
	<button class="dot" style="margin-top:-66px;">-</button> -->
      
</div>
</div>
</div> 

<%}  %>
<%if(email!=null){%>
		<div class="row"> 
    <div class="column"> 
<div id="cart">
<img src="<%=iname%>">
 <h4 class="n2"><%=price%>$</h4>
       <h3 class="n1"><%=book%></h3>
       
         <p ><button class="btnn"><a href="addcart.jsp?book=<%=book %>&iname=<%=iname%>&price=<%=price %>&author=<%=author %>&email=<%=email %>">ADD TO CART</a></button></p>
       
	<!-- <button class="dot" style="margin-top:-12px;margin-left:89px;">+</button>
	<button class="dot" style="margin-top:-66px;">-</button> -->
      
</div>
</div>
</div> 

<%}  %>
 
   
		<%
	}while(rs.next());
}
else
{
	out.println("no records found");
}


%>
