<%@ include file="header.jsp"%>
	<!-- start content -->
<div class="registration">
		
		                  <%
                                                       String m=request.getParameter("id");                                                      
                                                       if(m!=null && m.equalsIgnoreCase("fail"))
                                                       {
                                                               out.println("<font  color='red'><blink><h3>&nbsp;&nbsp;&nbsp;Login Fail   !! </blink></font></h3>");
                                                       }
                                               %>


	<div class="registration_left">
		<h2>Admin Login</h2>
		 <div class="registration_form">
		 <!-- Form -->
			<form method="post" action="alogin.jsp">

				<div>
					<label>
						<input placeholder="User Id:" type="text" name="uid" tabindex="3" required="">
					</label>
				</div>
				<div>
					<label>
						<input placeholder="password" name="pwd" type="password" tabindex="4" required="">
					</label>
				</div>						
				<div>
					<input type="submit" value="sign in">
				</div>
				<br>				<br>				<br>				<br>
			</form>
			<!-- /Form -->
			</div>
	</div>
	<div class="clearfix"></div>
	</div>
		<%@ include file="footer.jsp"%>