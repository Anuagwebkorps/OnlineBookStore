<%@include file="Database.jsp" %>
<%
String book=request.getParameter("book");
String p=request.getParameter("price");
int price=Integer.parseInt(p);
String author=request.getParameter("author");





String qr="update field set book=?,price=? where author=?";
PreparedStatement ps=con.prepareStatement(qr);
ps.setString(1, book);
ps.setInt(2, price);
ps.setString(3, author);
int i=ps.executeUpdate();
con.close();
out.println(i+"product updated");
response.sendRedirect("update.jsp");
%>