<%@ page   import="com.mysql.*" %>
<%@ page   import="java.sql.*" %>
<%@ include file="uheader.jsp"%>

	 <div class="spec ">
				<h3>View Your Order Deatils</h3>
					<div class="ser-t">
						<b></b>
						<span><i></i></span>
						<b class="line"></b>
					</div>
			</div>



<br>

<%
int i=10000;
Connection con = DatabaseCon.getConnection();
Statement st=con.createStatement();





ResultSet rs=st.executeQuery("select * from purchase where user='"+session.getAttribute("email")+"' ");

%>

      <table id="tab" width="95%">
		  <tr>
			<th class="t-head ">Sno</th>
			<th class="t-head ">Transaction Id:</th>
			<th class="t-head ">Product</th>
			<th class="t-head ">Brand</th>
			<th class="t-head">Cost</th>
			<th class="t-head">Quantity</th>
			<th class="t-head">Total Cost</th>
		  </tr>
		  <tr class="cross">

<%
int c=0;
while(rs.next()){
%>

			<td class="t-data">
				<%=++c%>
			<td class="ring-in t-data">
				Transaction<%=rs.getString("sno")%>
			<td class="t-data">
				<%=rs.getString("sub")%>
			<td class="ring-in t-data">
				<%=rs.getString("brand")%>
			<td class="ring-in t-data">
				<%=rs.getString("cost")%>
			<td class="ring-in t-data">
				<%=rs.getString("freq")%>
			<td class="ring-in t-data">
				<%=rs.getString("tot_cost")%>
<%
}
%>
	</table>
<br><br><br><br>
<%@ include file="ufooter.jsp"%>