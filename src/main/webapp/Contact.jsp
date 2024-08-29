<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Contact Page</title>
  <link rel="stylesheet" href="style.css">
  <link rel="stylesheet" href="./css/home.css">
  
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

  <!-- Contact -->
  <div class="container">
    <div class="row">
      <div class="col-md-6 card">
        <h1 class="text-center">Contact Us</h1>
        <ul>
          <li>India: +91 1234 567 890</li>
          <li>United Kingdom: +91 1234 567 890</li>
        </ul>
      </div>
      <div class="col-md-6 card border">
        <h1 class="text-center">Enquiry form</h1>
        <form>
          <div class="form-row">
            <div class="form-group col-md-6 ">
              <label for="inputEmail4">First Name</label>
              <input type="text" class="form-control" id="inputEmail4" placeholder="firstname">
            </div>
            <div class="form-group col-md-6">
              <label for="inputPassword4">Last Name</label>
              <input type="text" class="form-control" id="inputPassword4" placeholder="lastname">
            </div>
          </div>
          <div class="form-group">
            <label for="inputAddress">Email</label>
            <input type="email" class="form-control" id="inputAddress" placeholder="email">
          </div>
          <div class="form-group">
            <label for="inputAddress2">Phone</label>
            <input type="phone" class="form-control" id="inputAddress2" placeholder="phoneno">
          </div>
          <div class="form-row">
            <div class="form-group col-md-6">
              <label for="inputCity">Message</label><br>
              <textarea name="" id="" cols="10" rows="2"></textarea>
            </div>
          </div>
          <div class="form-group">
            <div class="form-check">
              <input class="form-check-input" type="checkbox" id="gridCheck">
              <label class="form-check-label" for="gridCheck">
                Check me out
              </label>
            </div>
          </div>
          <button type="submit" class="btn btn-primary">Sign in</button>
        </form>

      </div>
    </div>
  </div>

  
</body>

</html>