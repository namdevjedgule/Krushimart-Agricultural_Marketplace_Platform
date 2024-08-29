<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<title>Post1</title>
	<style>
	.postdiv{
		margin-top: 300px;
		margin-left: 200px;
		margin-right: 200px;
		border: 2px solid green;
		height: 400px;
		weight: 400px;
		padding-top: 50px;
	}
	.postdiv{
    background: linear-gradient(rgba(125, 215, 162, 0.8), rgba(64, 163, 113, 0.5)),
                url('./images/footer1.jpg') no-repeat fixed;
    background-size: cover;
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
	<div align="center" class="postdiv">
		
		<form action="addpost" method="post">
			<div class="postdata1">
                <h2>PostPage</h2>
                <input type="text" name="name" placeholder="Product Name" required="required"> <br><br> 
                <input type="number" name="quantity" placeholder="Product Quantity " required="required" > <br><br> 
                <input type="number" name="price" placeholder="Product Price" required="required"> <br><br> 
                <input type="text" name="discription" placeholder="Product Discription" required="required"> <br><br> 
                 <input type="submit"value="POST" class="btn">
            </div>
		</form>
	</div>

</body>
</html>