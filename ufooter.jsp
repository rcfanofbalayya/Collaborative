<%@ page import="java.sql.*,com.mysql.*"%>

						</div>
					</div>
			
					
						
						
						<div class="footer">
					<div class="clearfix"> </div>
						<p>© All Rights Reserved.</p>
			</div>
		</div>
			</div>
			<!--content-->
		</div>
</div>
				<!--//content-inner-->
			<!--/sidebar-menu-->
				<div class="sidebar-menu">
					<header class="logo1">
<center><h3><font size="" color="#fff"><%=session.getAttribute("name")%></font></h3></center>
					</header>
						<div style="border-top:1px ridge rgba(255, 255, 255, 0.15)"></div>
                           <div class="menu">
									<ul id="menu" >
										<li><a href="u_home.jsp"><i class="fa fa-tachometer"></i> <span>Home</span></a></li>
										<li><a href="vieworders.jsp"><i class="fa fa-tachometer"></i> <span>Your Orders</span></a></li>
										
<%
	Connection ccc=DatabaseCon.getConnection();
	Statement st2 = ccc.createStatement();
	Statement stt2 = ccc.createStatement();
	String sss1 = "select * from menu1 ";
	ResultSet rss=st2.executeQuery(sss1);

	
	ResultSet rss2=null;
	while(rss.next()){

		%>


										<li id="menu-academico" ><a href="#"><i class="fa fa-file-text-o"></i> <span> <%=rss.getString(2)%></span> <span class="fa fa-angle-right" style="float: right"></span></a>

										   <ul id="menu-academico-sub" >
										   
											<%
											rss2=stt2.executeQuery("select * from menu2 where menu1='"+rss.getString(1)+"' ");
											while(rss2.next()){
												System.out.println(rss2.getString(2));
											%>				

									<li id="menu-academico-avaliacoes" ><a href="viewlist.jsp?id=<%=rss2.getString(2)%>&&name=<%=rss2.getString(3)%>"><i  aria-hidden="true"></i><%=rss2.getString(3)%></a></li>
												<%
											}	
											%>
</ul>

										</li>
													<%
			}
%>					<li><a href="user.jsp"><i	class="fa fa-user"></i> <span>Logout</span></a></li>
		

								  </ul>
								</div>
							  </div>
							  <div class="clearfix"></div>		
							</div>
	
<script src="js/jquery.nicescroll.js"></script>
<script src="js/scripts.js"></script>
<!-- Bootstrap Core JavaScript -->
   <script src="js/bootstrap.min.js"></script>
   <!-- /Bootstrap Core JavaScript -->
   <!-- real-time -->
<script language="javascript" type="text/javascript" src="js/jquery.flot.js"></script>
	
<!-- /real-time -->
<script src="js/jquery.fn.gantt.js"></script>
		   <script src="js/menu_jquery.js"></script>
</body>
</html>