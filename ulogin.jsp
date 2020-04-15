<%@ page  import="java.sql.*" import="com.mysql.*" %>
<%
String a = request.getParameter("uid");
String b= request.getParameter("pwd");
String name=null,u=null,test2=null;

try{
Connection con1 = DatabaseCon.getConnection();
Statement st1 = con1.createStatement();
	
String sss1 = "select * from login where email='"+a+"' && pwd='"+b+"' ";

	ResultSet rs1=st1.executeQuery(sss1);
	if(rs1.next())
	{

		name=rs1.getString("name");
		session.setAttribute("name",name);
		session.setAttribute("uid",rs1.getString("uid"));
		session.setAttribute("email",a);
		response.sendRedirect("u_home.jsp");
		}
		else{
		response.sendRedirect("user.jsp?id=fail");
		}
}


catch(Exception e1)
{
out.println(e1.getMessage());
}

%>