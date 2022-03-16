<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

<a href="viewcart.jsp"><i class="fa fa-shopping-cart" style="font-size:36px;color:blue"></i></a><br>
<a href="welcome.html">HOME</a><br></br>
<a href="Profilecc.jsp">Profile</a>

<%
String email=(String) session.getAttribute("id");
%>
welcome <%=email%>
<style>
 #main{
 
 }
 
</style>
 <marquee><h1>This is an example of ajax</h1></marquee>  
<form name="vinform">  
<input type="text" name="t1" onkeyup="sendInfo()">  
<input type="button" value="ShowTable" >  
</form>  
  
<span id="amit"> </span>  
  
</div>

<script>  
var request;  
function sendInfo()  
{  
var v=document.vinform.t1.value;  
var url="search.jsp?val="+v;  
  
if(window.XMLHttpRequest){  
request=new XMLHttpRequest();  
}  
else if(window.ActiveXObject){  
request=new ActiveXObject("Microsoft.XMLHTTP");  
}  
  
try  
{  
request.onreadystatechange=getInfo;  
request.open("GET",url,true);  
request.send();  
}  
catch(e)  
{  
alert("Unable to connect to server");  
}  
}  
  
function getInfo(){  
if(request.readyState==4){  
var val=request.responseText;  
document.getElementById('amit').innerHTML=val;  
}  
}  
  
</script>  


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
		<div style="height: 220px;width: 100%;background-color: pink;text-align: center">
		Book NAME : <%=book %><br>
		Book Img : <%=iname %><br>
		Book Price : <%=price %><br>
		Book Author : <%=author %><br>
		<img src="<%=iname %>" height="100px" width="100px" />
		<a href="addcart.jsp?book=<%=book %>&iname=<%=iname%>&price=<%=price %>&author=<%=author %>&email=<%=email %>">ADD TO CART</a>

		</div>
		<%
	}while(rs.next());
}
else
{
	out.println("no records found");
}


%>
