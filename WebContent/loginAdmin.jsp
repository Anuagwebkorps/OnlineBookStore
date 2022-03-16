<%@ include file="data.jsp" %>
<%
String name=request.getParameter("name");
String email=request.getParameter("email");
String role=request.getParameter("role");
String pwd=request.getParameter("pwd");
String qr="insert into admin values(?,?,?,?)";
PreparedStatement ps=con.prepareStatement(qr);
ps.setString(1, name);
ps.setString(2, email);
ps.setString(3, role);
ps.setString(4, pwd);
int i=ps.executeUpdate();
if(i>0)
{
	RequestDispatcher rd=request.getRequestDispatcher("loginAdmin.html");
	rd.include(request, response);
	out.println("<script>window.alert('successfully registered');</script>");
}
else
{
	RequestDispatcher rd=request.getRequestDispatcher("AdminF.html");
	rd.include(request, response);
	out.println("<script>window.alert('not  registered');</script>");
}
con.close();
%>