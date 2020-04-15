<%@ page   import="com.mysql.*" %>
<%@ page   import="java.sql.*" %>
<%@ include file="header.jsp"%>

	 <div class="spec ">
				<h3>View User Ratings</h3>
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





ResultSet rs=st.executeQuery("select * from ratings ");

%>

      <table id="tab" width="95%">
		  <tr>
			<th class="t-head ">Sno</th>
			<th class="t-head ">User Id:</th>
			<th class="t-head ">Item Id</th>
			<th class="t-head ">Rating</th>
		
		  </tr>
		  <tr class="cross">

<%
int c=0;
while(rs.next()){
%>

			<tr><td class="t-data">
				<%=++c%>
			<td class="ring-in t-data">
				<%=rs.getString(1)%>
			<td class="t-data">
				I<%=rs.getString(2)%>
			<td class="ring-in t-data">
				<%=rs.getString(3)%>
		
<%
}
%>
	</table>
	<form method="post" action="prediction.jsp">
		<input type="submit" value="Rating Prediction">
	</form>
<br><br><br><br>
<%@ include file="afooter.jsp"%>