<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<title></title>
	<style type="text/css">
		#outerDiv
		{
			display: inline-flex;
		}
		#img
		{
			height: 200px;
			border-radius: 100px;

		}
		#form
		{
			margin-top: 10%;
			padding-top: 50px;
			padding-bottom: 50px;
			width: 80%;
			border: 2px solid green;
		}
		.data
		{
			margin-left: 20px;
			box-align: left;
			text-align: left;
		}
	</style>
</head>
<body>

<%
    if(((String)session.getAttribute("role")).equalsIgnoreCase("farmer"))
    {%>
    	<%@include file="FarNav.jsp" %>
	<%}
    else
    {
    	%>
    	<%@include file="BuyNav.jsp" %>
   <% }
    %>

	<%
	
	session.setAttribute("from_edit_file", "edited");
	
	String phone_f_style="";	

	String first_name=(String)session.getAttribute("first_name");
	String last_name=(String)session.getAttribute("last_name");
	String email_id=(String)session.getAttribute("email_id");
	Long phone_no;
	
	
	if((String)session.getAttribute("wrong_phone_no")!=null)
	{
		session.setAttribute("wrong_phone_no",null);
		
		phone_no=Long.parseLong(request.getParameter("phone_no"));
		phone_f_style="border:2px solid red;";
	}
	else
	{
		phone_no=Long.parseLong((String)session.getAttribute("phone_no"));
	}
	
	String place=(String)session.getAttribute("place");
	//session.getAttribute("profile_img");
	 %>
	<div align="center">
		<form id="form" action="ProfilePage.jsp">
			<h1 style="color:red">PROFILE-PAGE</h1>
			<div id="outerDiv">
				<div>
					<img src="paharo.jpg" id="img">
					<br><br>
					<button>SAVE CHANGES</button>
					<br><br>
					
					
				</div>
				<div >
				
				    <input type="text"  class="data" placeholder="first_name" name="first_name" value="<%=first_name %>" required="required">
				<br><br>
				<input type="text"   class="data" placeholder="last_name" name="last_name" value="<%=last_name %>" required="required">
				<br><br>
				<input type="text"   class="data" placeholder="email_id" name="email_id" value="<%=email_id %>" style="" disabled>
				
				<br><br>			
				
				<input type="tel"   class="data" placeholder="phone_no" name="phone_no" value="<%=phone_no %>" style="<%=phone_f_style%>" required="required" pattern="[6-9]{1}[0-9]{9}">
				
				<h6 class="data" ></h6>
				<br>
				<input type="text"   class="data" placeholder="place" name="place" value="<%=place %>" required="required">
				<br><br>
					
					
										
					
				</div>
				



			</div>

			
				
				
				
			
		</form>
	</div>

</body>
</html>