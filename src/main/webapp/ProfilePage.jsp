<%@page import="java.sql.ResultSet"%>
<%@page import="krushimart.dto.Post"%>
<%@page import="java.util.List"%>
<%@page import="krushimart.dao.PostDao"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="com.mysql.cj.xdevapi.PreparableStatement"%>
<%@page import="java.sql.Connection"%>
<%@page import="javax.servlet.RequestDispatcher"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title></title>
<style type="text/css">
#outerDiv {
	display: inline-flex;
}

#img {
	height: 200px;
	border-radius: 100px;
}

#form {
	margin-top: 10%;
	padding-top: 50px;
	padding-bottom: 50px;
	width: 80%;
	border: 2px solid green;
}

.data {
	margin-left: 20px;
	text-align: left;
}

h2 {
	color: green;
	text-align: left;
}
   .cards
    {
    display: flex;
    flex-wrap:wrap;
    justify-content:center; 
    
    
    
    }
    .card
    {
    margin: 10px;
    width: 20%;
     background: linear-gradient(rgba(125, 215, 162, 0.8), rgba(64, 163, 113, 0.5)),
                url('./images/vegetables.jpeg') no-repeat fixed;
    background-size: cover;
    color: ;
    background-size:cover;
    background-repeat: no-repeat;
    padding: 1px;
    border: 1px solid red;
    box-shadow: 5px 10px 10px grey;
    
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
    margin-top: 120px;
    padding: 50px;
    font-weight: bolder;
    color:  black;
    text-shadow: 2px 2px 2px white;
    
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
	Connection connection = null;
	PreparedStatement preparedStatement ;	
		
	if(session.getAttribute("from_edit_file")!=null)
	{
		
		session.setAttribute("from_edit_file", "");
		try
		{
			String first_name = request.getParameter("first_name");
		String last_name = request.getParameter("last_name");
		//String email_id = request.getParameter("email_id");
		Long phone_no = Long.parseLong(request.getParameter("phone_no"));
		String place = request.getParameter("place");
		
		String old_email_id=(String)session.getAttribute("email_id");

		Class.forName("com.mysql.cj.jdbc.Driver");
		connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/krushimart", "root", "root");
		preparedStatement = connection.prepareStatement("update user set first_name=?,last_name=?,phone_no=?,place=? where email_id=?");
		preparedStatement.setString(1, first_name);
		preparedStatement.setString(2, last_name);
		
		preparedStatement.setLong(3, phone_no);
		preparedStatement.setString(4, place);	
		preparedStatement.setString(5, old_email_id);	
		
		if(preparedStatement.executeUpdate()>0)
		{
			session.setAttribute("first_name",first_name );
			session.setAttribute("last_name",last_name);
			
			session.setAttribute("phone_no",String.valueOf(phone_no) );
			session.setAttribute("place",place);
		    
			
		}
		
		
		
	} catch (Exception exp) {		
		
			
					
			
			
			session.setAttribute("phone_no", request.getParameter("phone_no"));	
			session.setAttribute("wrong_phone_no", request.getParameter("phone_no"));
			RequestDispatcher dispatcher= request.getRequestDispatcher("EditProfile.jsp");
			dispatcher.include(request, response);
		
		

	}
	}

	String first_name = (String) session.getAttribute("first_name");
	String last_name = (String) session.getAttribute("last_name");
	String email_id = (String) session.getAttribute("email_id");
	long phone_no = Long.parseLong((String) session.getAttribute("phone_no"));
	String place = (String) session.getAttribute("place");
	session.getAttribute("profile_img");
	%>
	<div align="center" class="outerdiv">
		<form id="form" action="EditProfile.jsp">
			<h1 style="color: red">PROFILE-PAGE</h1>
			<div id="outerDiv">
				<div>
					<img src="paharo.jpg" id="img"> <br>
					<br>
					<button>EDIT PROFILE</button>
				</div>
				<div>
					<h2 class="data"><%=first_name%> <%=last_name%></h2>
					<h2 class="data" ><%=email_id%></h2>
					<h2 class="data"><%=phone_no%></h2>
					<h2 class="data"><%=place%></h2>

				</div>
			</div>

		</form>
	</div>
	<div class="outerdiv1">
	
	<%
	
	PostDao postDao=new PostDao();
	
	
	     
	     int u_id = (Integer) session.getAttribute("u_id") ;
	
	    
	ResultSet resultSet=postDao.getUserPost(u_id);
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
       <img class="card-img-top" src="..." alt="Card image cap">
       <div class="card-body">
       <h5 class="card-title"><%=name %></h5>
       <h5 class="card-title"><%=quantity %></h5>
       <h5 class="card-title"><%=price %></h5>
       
       <p class="card-text"><%=discription %></p>
       </div>
       <div class="card-footer">
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

</body>
</html>