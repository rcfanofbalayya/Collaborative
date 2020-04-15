<%@ include file="header.jsp"%>
	<!-- start content -->
<div class="registration">
		<div class="registration_left">
		<h2>new user? <span> create an account </span></h2>
		 <div class="registration_form">
		 <!-- Form -->
		 					                  <%
         String id=request.getParameter("id");
	       if(id!=null&&!id.equals("fail") )
           {
           out.println("<blink><h2>Registration Success ! <br> <font color=#746b6f size=+2>Your User Id:: <font color=#dd156a>"+id+" </blink></font></font></font></h2><br>");
          }%>

		 <form action="signup1.jsp" method="get" >
				<div>
					<label>
						<input placeholder="Full name:" type="text" name="name" tabindex="1" required="" autofocus="">
					</label>
				</div>
				<div>
					<label>
						<input placeholder="Contact:" type="text" name="ph" tabindex="2" required="" autofocus="">
					</label>
				</div>
				<div>
					<label>
						<input placeholder="email address:" type="email" name="email" tabindex="3" required="">
					</label>
				</div>
				<div class="sky-form">
					<div class="sky_form1">
						<ul>
							<li><label class="radio left"><input type="radio" name="gen" value="Male" checked=""><i></i>Male</label></li>
							<li><label class="radio"><input type="radio" name="gen"  value="Female"><i></i>Female</label></li>
							<div class="clearfix"></div>
						</ul>
					</div>
				</div>
				<div>
					<label>
						<input placeholder="Address" name="addr" type="text" tabindex="4" required="">
					</label>
				</div>						
				<div>
					<label>
						<input placeholder="password" name="pwd"  type="password" tabindex="4" required="">
					</label>
				</div>	
				<div>
					<input type="submit" value="create an account">
				</div>
			</form>
			<!-- /Form -->
		</div>
	</div>
		
		                  <%
                                                       String m=request.getParameter("id");                                                      
                                                       if(m!=null && m.equalsIgnoreCase("fail"))
                                                       {
                                                               out.println("<font  color='red'><blink><h3>&nbsp;&nbsp;&nbsp;Login Fail   !! </blink></font></h3>");
                                                       }
                                               %>


	<div class="registration_left">
		<h2>existing user</h2>
		 <div class="registration_form">
		 <!-- Form -->
			<form method="post" action="ulogin.jsp">

				<div>
					<label>
						<input placeholder="email:" type="email" name="uid" tabindex="3" required="">
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
			</form>
			<!-- /Form -->
			</div>
	</div>
	<div class="clearfix"></div>
	</div>
		<%@ include file="footer.jsp"%>