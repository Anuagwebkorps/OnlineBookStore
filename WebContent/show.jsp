<%@ include file="Database.jsp"%>
<table align="center" border="1px solid" class="table table-striped">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
<th>book name</th>
<th>author</th>
<th>img</th>
<th>upload</th>

<%
String qr="select * from field";
Statement st=con.createStatement();
ResultSet rs=st.executeQuery(qr);
if(rs.next())
{
	do{
		
		String book=rs.getString("book");
		String iname=rs.getString("img");
        int price=rs.getInt("price");
		String author=rs.getString("author");

		%>
		<tr>
		<td><%=book%></td>
		<td><%=author%></td>
		<td><img src="<%=iname %>" alt="no pic" height="100px" width="100px" /></td>
		<td><a href="upload.jsp?book=<%=book%>">Upload Image</a></td>
		</tr>
		<%
	}while(rs.next());
}
else{
	out.println("no data...");
}

%>
<a href="ProfileAdmin.html">back</a>
</table>