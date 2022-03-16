<%@include file="Database.jsp" %>
<%
String iname=request.getParameter("iname");
String book=(String)session.getAttribute("book");
String qr="update field set img=? where book=?";
PreparedStatement ps=con.prepareStatement(qr);
ps.setString(1, iname);
ps.setString(2, book);
int i=ps.executeUpdate();
RequestDispatcher rd=request.getRequestDispatcher("show.jsp");
if(i>0)
{
	rd.include(request,response);
	out.println("<script>window.alert('upload image successfully');</script>");
}
else
{
	rd.include(request,response);
	out.println("<script>window.alert('unable to upload');</script>");	
}
%>