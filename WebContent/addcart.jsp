<%@include file="Database.jsp" %>
<%
String book=request.getParameter("book");
String iname=request.getParameter("iname");
String p=request.getParameter("price");
int price=Integer.parseInt(p);
String author=request.getParameter("author");
String email=request.getParameter("email");


String qr="insert into cart values(?,?,?,?,?)";
PreparedStatement ps=con.prepareStatement(qr);
ps.setString(1, book);
ps.setString(2, iname);
ps.setInt(3, price);
ps.setString(4, author);
ps.setString(5, email);
int i=ps.executeUpdate();
con.close();
RequestDispatcher rd=request.getRequestDispatcher("ProfileClient1.jsp");
if(i>0)
{
	rd.include(request, response);
	out.println("<script>window.alert('sucessfully added to cart');</script>");
}
else
{
	rd.include(request, response);
	out.println("<script>window.alert('not add to cart');</script>");
	
}
%>