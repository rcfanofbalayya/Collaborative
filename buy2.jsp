<%@ page  import="java.sql.*" import="com.mysql.*" %>

<%@ include file="uheader.jsp"%>

<h3>Purchased Successfully..</h3>
<%String sub=request.getParameter("sub");%>
<%String brand=request.getParameter("brand");%>
<%double cost=Double.parseDouble(request.getParameter("cost"));%>
<%String id=request.getParameter("id");%>
<%int tot=Integer.parseInt(request.getParameter("tot"));%>


<%
try{

Connection con1 = DatabaseCon.getConnection();
Statement st1 = con1.createStatement();
st1.executeUpdate("insert into purchase(uid,pid, sub,brand, cost, freq, tot_cost, user) values('"+session.getAttribute("uid")+"','"+id+"','"+sub+"','"+brand+"','"+cost+"','"+tot+"','"+tot*cost+"','"+session.getAttribute("email")+"') ");
}catch(Exception e1)
{
out.println(e1.getMessage());
}

%>

<h3>
<table id="tab" align="center" width="70%">
<tr>
	<td>Item: <td><%=sub%></td>
<tr>
	<td>Brand: <td><%=brand%></td>
<tr>
	<td>Cost per unit: <td><%=cost%></td>
<tr>
	<td>No. of Items: <td> <%=tot%></td>
<tr>
	<td>Total Cost:<td> <%=tot*cost%></td>
</tr>
</table>
	<center><A onclick="javascript:print();" style="cursor:hand">Print</A>
</center>
</h3>
<%@ include file="ufooter.jsp"%>