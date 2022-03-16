<%
String book=request.getParameter("book");
session.setAttribute("book", book);
%>
 <h3>File Upload:</h3>
      Select a file to upload: <br />
      <form action = "UploadServlet.jsp" method = "post"
         enctype = "multipart/form-data">
         <input type = "file" name = "file" size = "50" />
         <br />
         <input type = "submit" value = "Upload File" />
      </form>