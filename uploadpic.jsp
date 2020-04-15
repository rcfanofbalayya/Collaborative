
<%@ page  import="java.sql.*" import="com.mysql.*" %>

<%@ include file="header.jsp"%>

<%
String pid=request.getParameter("id");
session.setAttribute("pid",pid);
%>

<br><br><br>
<form  action="upload2.jsp" ENCTYPE="multipart/form-data" method="post" >   
	<table width="60%" align="center">
<tr>
<td><img src="images/photo_upload1.png" width="50" height="50" border="0" alt=""><font size="+2" color=""><b>Upload your  Pic for Item</font>

</tr>
</table>

 <%
                                                       String id=request.getParameter("id");
                                                       if(id!=null && id.equalsIgnoreCase("succ"))
                                                       {

													         out.println(" <font	color=red><b>Picture Stored Successfully !!</font><br>");

													   }
%>
		

<table  width="60%" align="center">
  <tr>
	<td><br><input type="file" name="pic" accept="image/*"></td>
  </tr>
  <tr>
	<td><br><input type="submit" value="Upload"></td>
  </tr>
  </table>

</form>
</h2>
<br><br><br><br><br>
<%@ include file="afooter.jsp"%>