<%@ page  import="java.sql.*" import="com.mysql.*" import="com.ct.*"%>


<%@ include file="header.jsp"%>

<br><br>
<h1>Add Item.</h1>

<%

	Connection con1=DatabaseCon.getConnection();
//System.out.println(con1);
	Statement st = con1.createStatement();

	st = con1.createStatement();
	ResultSet rs=st.executeQuery("select * from menu3");

%>	
			<div class="in-check" >
<h3>
<table align="center" cellpadding="5">
<tr><td><h3><font size="" color="#004f9d"><b>Menu1 ID&nbsp;&nbsp;&nbsp;&nbsp;</font><td><h3><font size="" color="#004f9d"><b>Menu2 ID&nbsp;&nbsp;&nbsp;&nbsp;</font><td><h3><font size="" color="#004f9d"><b>Details</font>

<%
while(rs.next())
	{
		%>
	<tr><td><%=Details.main(rs.getString(1),"menu1")%><td><%=Details.main(rs.getString(2),"menu2")%><td><%=rs.getString(4)%>&nbsp;&nbsp;&nbsp;<td><a href="viewp.jsp?id=<%=rs.getString(3)%>">View</a>

<%
	}
%>	
</table>
</div>
<h3>

<%
	st = con1.createStatement();
	rs=st.executeQuery("select * from menu2");

%>	
<form method="post" action="addmenu_3.jsp">
           
<table align="center" cellpadding="5">
<tr><td><h3><font size="" color="#004f9d"><b>Select Sub Category Subject</font>
<tr><td><select name="level3">
<%
while(rs.next())
	{
		%>
	<option value="<%=rs.getString(1)%>,<%=rs.getString(2)%>"><%=Details.main(rs.getString(2),"menu2")%>--<%=rs.getString(1)%>

<%
	}
%>	

</select><br>
	
<tr><td><input type="text" name="sub" size="20" required placeholder="Enter Item Name">
<tr><td><input type="number" step="any" min="0"  required name="cost" size="30" placeholder="Enter Cost">
<tr><td><h5><textarea name="des" rows="8" cols="91"  required placeholder="Enter Description"></textarea>


<tr><td>
<input type="submit" value="   ADD  ">
</form>
</table>


<br><br>
<%@ include file="afooter.jsp"%>