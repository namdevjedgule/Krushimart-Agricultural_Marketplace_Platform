<!DOCTYPE html>
<%@page import="krushimart.dto.Post"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="krushimart.dao.PostDao"%>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>KrishiMart-Home </title>
    <link rel="stylesheet" href="./css/style.css">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css"
    integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.0/css/all.min.css" integrity="sha512-Avb2QiuDEEvB4bZJYdft2mNjVShBftLdPG8FJ0V7irTLQ8Uo0qcPxh4Plq7G5tGm0rU+1SPhVotteLpBERwTkw==" crossorigin="anonymous" referrerpolicy="no-referrer" />
   <link rel="stylesheet" type="text/css" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.1/css/all.min.css">
    <style type="text/css">
    
    .cards
    {
    display: flex;
    flex-wrap:wrap;
    justify-content:center;
     
     
        
    
    }
  .card{
    width: 20%;
    margin: 10px;
   
    }
    .cardfooter{
    background-color: grey;
    font-color: white;
    
    }
    
    .outerdiv
    {
    background-image: url("./images/.jpg");
    background-size:cover;
    background-repeat: no-repeat;
    margin-top: 200px;
    padding: 50px;
    font-weight: bolder;
    color:  black;
    text-shadow: 2px 2px 2px white;
    
    }
    img{
    	background-size:cover;
   		background-repeat: no-repeat;
   
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

    
    <div class="outerdiv">
    <%
	
	PostDao postDao=new PostDao();
	    
	
	
	ResultSet resultSet=postDao.getAllPost();
	int ct=1;
	
	while(resultSet.next())
	{
		   		
		   String name=resultSet.getString("name");
		   String quantity=resultSet.getString("quantity");
		   double price=resultSet.getDouble("price");
	       String discription=resultSet.getString("discription");
	if(ct==1)
    	{
    	%>   	
    	<div class="cards" >	    	
    	<%}%>
       <div class="card">
       
       <img class="card-img-top" src="images/vegetables.jpeg" alt="Card image cap">
       <div class="card-body">
       <h5 class="card-title"><%=name %></h5>
       <h5 class="card-title"><%=quantity %></h5>
       <h5 class="card-title"><%=price %></h5>
       
       <p class="card-text"><%=discription %></p>
       </div>
       <div class="cardfooter" style="background-color: lightgrey; color:black;">
       <small class="text-muted">Last updated 3 mins ago</small>
       
       </div>
       </div>
       <%if(ct==4)
    	{
    	   ct=0;
    	%>
    	</div>   	
    	
    	<%    	
    	}%>   	
    	
    	<%
    	ct++;
    	}%>
    	
    	<%if(ct==1||ct==2||ct==3)
    	{
    	%>
    	</div>   	
    	
    	<%    	
    	}%>
    	
    	</div>


    <!-- footer section -->
    <div class="footersec">
      <footer class="footer">
        <div class="container">
          <div class="row">
            <div class="footer-col">
              <h4>company</h4>
              <ul>
                <li><a href="#">about us</a></li>
                <li><a href="#">our services</a></li>
                <li><a href="#">privacy policy</a></li>
                <li><a href="#">affiliate program</a></li>
              </ul>
            </div>
            <div class="footer-col">
              <h4>get help</h4>
              <ul>
                <li><a href="#">FAQ</a></li>
                <li><a href="#">shipping</a></li>
                <li><a href="#">returns</a></li>
                <li><a href="#">order status</a></li>
                <li><a href="#">payment options</a></li>
              </ul>
            </div>
            <div class="footer-col">
              <h4>online shop</h4>
              <ul>
                <li><a href="#">watch</a></li>
                <li><a href="#">bag</a></li>
                <li><a href="#">shoes</a></li>
                <li><a href="#">dress</a></li>
              </ul>
            </div>
            <div class="footer-col">
              <h4>follow us</h4>
              <div class="social-links">
                <a href="#"><i class="fab fa-facebook-f"></i></a>
                <a href="#"><i class="fab fa-twitter"></i></a>
                <a href="#"><i class="fab fa-instagram"></i></a>
                <a href="#"><i class="fab fa-linkedin-in"></i></a>
              </div>
            </div>
          </div>
        </div>
     </footer>
    </div>
    <!-- Second footer -->
    <div class="secfooter">
      <footer class="foot">
        <!-- Social media links. Add or remove any networks. -->
      <div class="contact-info">
        <a href="mailto:jedgulenamdev@gmail.com">jedgulenamdev@gmail.com</a><br>
        <a href="#">LinkedIn</a><br>
        <a href="#">Github</a>
      </div>

      <p> &copy Copyright 2024 by KrishiMart</p>
      </footer>
    </div>


    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"
        integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN"
        crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js"
        integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q"
        crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js"
        integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl"
        crossorigin="anonymous"></script>
</body>
</html>



