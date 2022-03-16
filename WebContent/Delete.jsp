<%@ include file="Database.jsp"%>
<%
String book=request.getParameter("book");
String qr="delete from field where book=?";
PreparedStatement ps=con.prepareStatement(qr);
ps.setString(1, book);
int i=ps.executeUpdate();
con.close();
out.println(i+" product deleted");
response.sendRedirect("del.jsp");

%>