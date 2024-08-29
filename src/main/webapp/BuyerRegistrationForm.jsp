<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<title></title>
	<style type="text/css">
		#bgi
		{
			width: 100%;
			z-index: -2;
			opacity: 80%;
			position: fixed;
			top: 0px;
			left: 0px;
		}
		#outerDiv
		{
			display: inline-flex;
			margin-left: -30%;
		}
		#imgDiv
		{
			margin-left: 10%;
			margin-top: 15%;
			margin-right: -30%;

		}
		#img
		{

		}
		#formDiv
		{
			margin-left: 1100px;
			z-index: +1;
			border-left:2px solid goldenrod;

		}
		#form
		{
			margin-top: 10%;
			padding-top: 50px;
			padding-bottom: 50px;
			width: 230%;
			border: 2px solid goldenrod;
			border-left: none;
		}
		.namesF
		{
			width: 120px;
		}
		.otherF
		{
			width: 250px;
		}
		#btn
		{
			background-color: goldenrod;
			color: black;font-size: 15px;
		}
		#btn:hover
		{
			background-color: green;
			color: black;font-size: 15px;
		}

	</style>
</head>
<body align="center">
<%@include file="RegNav.jsp" %>
	<div>
		<img src="C:\Users\akash\eclipse-workspace\krushimart\src\main\webapp\FarmerBGImg.jpg" id="bgi">
	</div>
	<div id="outerDiv" align="center">
		<div id="imgDiv" style="background-color:;">
			<img src="C:\Users\akash\eclipse-workspace\krushimart\src\main\webapp\paharo.jpg" alt="Buyer" id="img">
		
		</div>
		<div id="formDiv">
	       <form id="form" action="register" method="post">
			   <h1 style="color: goldenrod;"> Registration-Form</h1>
			
	     
		        <input type="text" name="firstname" placeholder="Firstname" class="namesF"> <input type="text" name="lastname" placeholder="Lastname" class="namesF" required="required">
		        <br><br>
		        <input type="text" name="email" placeholder="Email_id" class="otherF" required="required"> <br><br>
		  
		        <input type="tel" name="phone" pattern="[6-9]{1}[0-9]{9}" placeholder="Phone_No" class="otherF" required="required"> <br><br>

		        <input type="text" name="password" placeholder="password"class="otherF" required="required"> <br><br>
		       
		          <input type="hidden" name="role" value="buyer">
		 
		 
		        <input type="submit" class="otherF" id="btn" style=""><br><br>
		        <button type="reset" class="otherF" id="btn">Reset</button><br><br>
		        <a href="sign_upPage.jsp" class="otherF" id="btn">Back</a>
		        
	   
	        </form>	
	   </div>
		
	</div>
</body>
</html>