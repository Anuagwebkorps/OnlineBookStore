<%
String book=request.getParameter("book");
String price=request.getParameter("price");
String author=request.getParameter("author");

%>
<form action="UpdateData.jsp">
Book<input type="text" name="book" value="<%=book %>"><br>
Price<input type="text" name="price" value="<%=price %>"><br>
Author<input type="text" name="author" value="<%=author %>"><br>

<input type="submit" value="Update" />
</form>