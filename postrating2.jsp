<%@ page  import="java.sql.*" import="com.mysql.*" %>


<%String pid=request.getParameter("pid");%>


<%
try{

Connection con1 = DatabaseCon.getConnection();
Statement st1 = con1.createStatement();
st1.executeUpdate("insert into ratings values('"+session.getAttribute("uid")+"', '"+pid+"','0' )");
st1.executeUpdate("update purchase set status='done' where uid='"+session.getAttribute("uid")+"' and pid='"+pid+"' ");
response.sendRedirect("u_home.jsp");

}catch(Exception e1)
{
out.println(e1);
}

%>


<%@ include file="ufooter.jsp"%>