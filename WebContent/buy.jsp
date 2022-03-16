<%@page import="com.Emaill"%>
<% 

String email=request.getParameter("email");
//String email="yhbjnxnnb@zeroe.ml";
 Emaill.send("chouhanvishal273@gmail.com", "jiqruamhvpktnvzk", email, "Online Book Store", "You Buy book download [https://www.iitk.ac.in/esc101/share/downloads/javanotes5.pdf]");
 
 RequestDispatcher rd=request.getRequestDispatcher("ProfileClient1.jsp");
	rd.include(request, response);
	out.println("<script>window.alert('successfully buy');</script>");
 %>