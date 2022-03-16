<%@ include file="Database.jsp" %>
<%
String book=request.getParameter("book");
String img=request.getParameter("img");
String pp=request.getParameter("price");
int price=Integer.parseInt(pp);
String author=request.getParameter("author");

String qr="insert into field values(?,?,?,?)";
PreparedStatement ps=con.prepareStatement(qr);
ps.setString(1,book);
ps.setString(2,img);
ps.setInt(3,price);
ps.setString(4,author);
int i=ps.executeUpdate();
con.close();
RequestDispatcher rd=request.getRequestDispatcher("show.jsp");
rd.include(request,response);

%>