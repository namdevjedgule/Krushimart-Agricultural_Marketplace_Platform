<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>KrushiMart -login page</title>

<link rel="stylesheet" href="./css/Login.css">

</head>

<body>
<%
session.invalidate();
%>
 <%@include file="RegNav.jsp" %>
 
<div class="wrapper">
  <div class="logo">
    <img src="./images/logo1.png" alt="logoo" >

    <div class="mart tracking-in-expand">MART</div>
     
</div>

       
  <div class="login-box">
    <form action="login" method="post">
      <h3 class="h3">Login Here</h3>

      
      <input type="text" placeholder="Username" name="username" id="username" required style="background-color: white;">

      <br>
      <input type="password" placeholder="Password"  name="password" id="password" required style="background-color: white;">
      <br>
      
  
        <button type="submit">Login</button>
        <div class="remember-forgot">
        <br>
        
          
          <button type="button" onClick="forgotPass()">Forgot Password?</button>
          <br>
        </div>
  
        <div class="register-link"><br>
          <p>Don't have an account? <a href="sign_upPage.jsp">RegisterPage</a></p>
        </div>
    </form>
  </div>

</div>
<div>
<script type="text/javascript">
function forgotPass() {
	window.alert("This Feature is not implemented yet !!!");
	
}

</script>
</div>

  
</body>
</html>