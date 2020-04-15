<%@ page import="java.sql.*,com.mysql.*"%>
<html>
<head>

<%
int id=1;
	Connection ccc=DatabaseCon.getConnection();
	Statement ss = ccc.createStatement();
		
	String sss = "select max(id) from users ";
	ResultSet r=ss.executeQuery(sss);
	if(r.next())
	{
		id=r.getInt(1);
		id++;
	}
	

	ResultSet rs=null;
	PreparedStatement ps=null;
	String name = request.getParameter("name");

	String pwd = request.getParameter("pwd");

	String email = request.getParameter("email");	
	String tele = request.getParameter("ph");
	String addr = request.getParameter("addr");
	String gen = request.getParameter("gen");


       try
                {	  

Connection con=DatabaseCon.getConnection();
ps=con.prepareStatement("INSERT INTO users(id,uid,name,email,tele,gen,addr)VALUES(?,?,?,?,?,?,?)");

ps.setInt(1,id);
ps.setString(2,"u"+id);
ps.setString(3,name);
ps.setString(4,email);
ps.setString(5,tele);
ps.setString(6,gen);
ps.setString(7,addr);

int s = ps.executeUpdate();

ps=con.prepareStatement("INSERT INTO login(uid,name,pwd,email)VALUES(?,?,?,?)");

ps.setString(1,"u"+id);
ps.setString(2,name);
ps.setString(3,pwd);
ps.setString(4,email);

s = ps.executeUpdate();


response.sendRedirect("user.jsp?id="+email);

}

catch(Exception ex){

out.println("Error in connection : "+ex);

}




%>
       
