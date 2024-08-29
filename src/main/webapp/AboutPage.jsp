<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" href="./css/about.css">
<style type="text/css">
	#contact1{
		background-color: bisque;
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
 <section class="contact container" id="contact1" style="background-color: bisque;">
    <div class="max-width p-4">
      <h2 class="title">Contact Me</h2><br>
      <div class="contact-content">
        <div class="column left">
          <div class="text">Get in Touch</div>
          <p>Agriculture is the practice of cultivating plants and livestock in order to provide facilities the human
            beings. In the rise of the sedentary human lifestyle agriculture was the key development. The cultivation of
            plant and food grains began years ago in order to provide food to the city population. Agriculture is the
            main need for the people to live in the society. Agriculture is the main source of livelihood, it provides a
            source for the people to earn. Most of the population in the rural areas is dependent on agriculture as
            their main source of income.</p>
          <div class="icons">

            <a href="#">
              <div class="row">
                <i class="fa-solid fa-user-large"></i>
                <div class="info">
                  <div class="head">Name</div>
                  <div class="sub-title"><a href="#" style="text-decoration: none; color: #333;"> Krushimart</a></div>
                </div>
              </div>
            </a>

            <div class="row">
              <i class="fa-solid fa-location-dot"></i>
              <div class="info">
                <div class="head"> Address</div>
                <div class="sub-title"> Pune,Maharashtra, India</div>
              </div>
            </div>

            <div class="row">
              <i class="fa-solid fa-envelope"></i>
              <div class="info">
                <div class="head">Email</div>
                <div class="sub-title"><a href="mailto:#" style="text-decoration: none; color: #333;">
                    krushimart@gmail.com</a></div>
              </div>
            </div>

            <div class="row">
              <i class="bi bi-translate"></i>
              <div class="info">
                <div class="head">Language Available</div>
                <div class="sub-title">Hindi, English, Marathi</div>
              </div>
            </div>

            <br>

            <!-- Social -->
            <div class="social-menu">
              <ul>
                <li><a href="#"><i class="fa-brands fa-github"></i></a></li>
                <li><a href="#"><i class="fa-brands fa-linkedin-in"></i></a></li>
                <li><a href="#"><i class="fa-brands fa-instagram"></i></a></li>
                <li><a href="#"><i class="fa-brands fa-twitter"></i></a></li>
                <li><a href="#" title="Get Educate with Us"><i class="fa-solid fa-graduation-cap"></i></a></li>
              </ul>
            </div>
          </div>
        </div>

        <!-- Reach -->
        <div class="column right mt-4">
          <div class="text">Message me</div>
          <form action="#">
            <div class="fields">
              <div class="field name">
                <input type="text" placeholder="Your Name" required>
              </div>
              <div class="field email">
                <input type="email" placeholder="Your Email" required>
              </div>
            </div>
            <div class="field">
              <input type="text" placeholder="Subject" required>
            </div>
            <div class="field textarea">
              <textarea cols="30" rows="10" placeholder="Message.." required></textarea>
            </div>
            <div class="button-area">
              <button type="submit">Send message</button>
            </div>
          </form>
        </div>
      </div>
    </div>
  </section>

  <!-- Footer -->

  <footer>
    <span>
      <a href="#"> KrushiMart</a> | <span class="far fa-copyright"></span> 2023 All Rights Reserved. Privacy Policy
    </span>
  </footer>
</body>
</html>