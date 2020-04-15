<%@ page  import="java.sql.*" import="com.mysql.*" import="com.ct.*"%>


<%@ include file="uheader.jsp"%>
<%
try{
String q1="select * from menu3 where menu3 ='"+request.getParameter("id")+"' ";	
String menu2=request.getParameter("menu2");
Connection con1 = DatabaseCon.getConnection();
Statement st1 = con1.createStatement();
ResultSet rs1=st1.executeQuery(q1);
	if(rs1.next())
	{

%>
<form method="post" action="buy.jsp">
				

			<div class="row single">
				<div class="det">
				  <div class="single_left">
					<div class="grid images_3_of_2">
						<div class="flexslider">
							        <!-- FlexSlider -->
										<script src="js/imagezoom.js"></script>
										  <script defer="" src="js/jquery.flexslider.js"></script>
										<link rel="stylesheet" href="css/flexslider.css" type="text/css" media="screen">

										<script>
										// Can also be used with $(document).ready()
										$(window).load(function() {
										  $('.flexslider').flexslider({
											animation: "slide",
											controlNav: "thumbnails"
										  });
										});
										</script>
									<!-- //FlexSlider-->

							  
							
					
								   <div class="thumb-image"> <img src="view.jsp?id=<%=rs1.getString("menu3")%>" data-imagezoom="true" class="img-responsive" draggable="false"> </div>
								</li>
								
							  </ul></div><ul class="flex-direction-nav"><li class="flex-nav-prev"><a class="flex-prev" href="#">Previous</a></li><li class="flex-nav-next"><a class="flex-next" href="#">Next</a></li></ul></div>
				  </div>






				  <div class="desc1 span_3_of_2">
					<h3><%=rs1.getString("subject_")%></h3>
					<span class="brand">Brand: <a href="#"><%=Details.main(menu2,"menu2")%></a></span>
					<br>
					<span class="code">Product Code: Product <%=rs1.getString(3)%></span>
					<p><%=rs1.getString("des")%></p>
						<div class="price">
							<span class="text">Price:</span>
							<span class="price-new">   <%=rs1.getDouble("cost")%> /-Rs. </span><span class="price-old">  <%=(int)(rs1.getDouble("cost")*1.1)%>/- Rs.</span> 
							<span class="price-tax">You Save: (10%),  Include All taxes</span><br>
						</div>
					<div class="det_nav1">
						<h4>Quantity :</h4>
							<div class=" sky-form col col-4">
				<input type="number" name="qua" min=1 size="10px" placeholder="Enter Quantity" required>
							



				</div>

	

				<%
				String[] res={"0","0"};
				double rat=0.0;
				try{
				res=Rating.main(rs1.getString("menu3"));
				rat=Double.parseDouble(res[0]);
				rat=rat/5*100;
				System.out.println("--------"+rat);	
				}catch(Exception e){
				System.out.println("--------"+rs1.getString("menu3")+""+e);	
				
				}
				%>

				<h2><span style="display: block; width: 65px; height: 13px; background: url(star-rating-sprite.png) 0 0;">
    <span style="display: block; width:<%=rat%>%; height: 13px; background: url(star-rating-sprite.png) 0 -13px;"></span></h2>



				</div>

<input type="hidden" name="id" value="<%=request.getParameter("id")%>">
<input type="hidden" name="brand" value="<%=Details.main(menu2,"menu2")%>">
<input type="hidden" name="sub" value="<%=rs1.getString("subject_")%>">
<input type="hidden" name="cost" value="<%=rs1.getDouble("cost")%>">


				<div>
					<input type="submit" value="Buy">
				</div>

					
			   	 </div>
          	    <div class="clearfix"></div>
          	   </div>
			</form>			


<%}}

catch(Exception e1)
{
out.println(e1.getMessage());
}
%>
<%@ include file="ufooter.jsp"%>