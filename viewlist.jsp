<%@ include file="uheader.jsp"%>

<%@ page import="java.sql.*,com.mysql.*"%>


				<h3><%=request.getParameter("name")%> Products</h3>
					

							<div class="grids_of_4">

			
<%
	String id=request.getParameter("id");
	Connection con=DatabaseCon.getConnection();
	Statement st = con.createStatement();
	String sss = "select * from menu3 where menu2='"+id+"' ";
	System.out.println(sss);
	ResultSet rs=st.executeQuery(sss);
	while(rs.next()){
	%>	
	
			<div class="grid1_of_4">
				<div class="content_box">
				<a href="viewproduct.jsp?id=<%=rs.getString("menu3")%>&&menu2=<%=id%>">
			
				   <img src="view.jsp?id=<%=rs.getString("menu3")%>" width="267" height="251" alt="" class="img-responsive"/>
			
				   	  
				    <h4><%=rs.getString(4)%>						</a></h4>

					 <div class="grid_1 simpleCart_shelfItem">
				    
					 <div class="item_add"><span class="item_price"><h6>ONLY <%=rs.getString(5)%>/-</h6></span></div>
					<div class="item_add"><span class="item_price">				<a href="viewproduct.jsp?id=<%=rs.getString("menu3")%>&&menu2=<%=id%>">
					View</a></span></div>
					 </div>
			   	</div>
			</div>


				

<%


	}

%>
</div></div>
<br><br><br><br><br>
<%@ include file="ufooter.jsp"%>