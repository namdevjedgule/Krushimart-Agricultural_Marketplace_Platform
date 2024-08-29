<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <link rel="stylesheet" href="./css/style.css">
    
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css"
        integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.0/css/all.min.css" integrity="sha512-Avb2QiuDEEvB4bZJYdft2mNjVShBftLdPG8FJ0V7irTLQ8Uo0qcPxh4Plq7G5tGm0rU+1SPhVotteLpBERwTkw==" crossorigin="anonymous" referrerpolicy="no-referrer" />
    <link rel="stylesheet" type="text/css" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.1/css/all.min.css">
    
    <style>
    
    
    .ot{
    		position: fixed;
    		top: 0px;
    		overflow: hidden;
    		z-index: +1;
    		width: 100%;
    }
    
    </style>
<!-- Navbar -->
    <div class="ot">
    	<nav class="navbar navbar-light" style="background-color: lightgray;">
        <div class="container">
            <span class="navbar-text-dark">
                Welcome to a KrishiMart.
            </span>
        </div>
    </nav>
    <!-- Second Navbar -->
    <div class="row" id="second-navbar" style="margin-right: 20px;" style="background-color: white;">
        <div class="container">
            <div class="row">
                <div class="col-md-3" >
                    <div class="applogo" >
                        <h1><img src="./images/logo1.png" alt="logo" class="logoimg">
                            <div class="mart tracking-in-expand">MART</div>
                        </h1>
                    </div>
                </div>
                <div class="col-md-3" style="display: flex;" >
                    <div class="row" style="margin-top: 20px; margin-left: 100px; ">
                        <div class="col-sm-4"><i class="fa-solid fa-location-dot"></i>
                        </div>
                        <div class="col-md-8">
                            <p>Deccan, Pune-411004 </p>
                            
                        </div>
                    </div>
                </div>
                <div class="col-md-3" style="display: flex;" style="margin-top: 20px; margin-left: 100px;">
                    <div class="row" style="margin-top: 20px;">
                        <div class="col-md-4"><i class="fa-solid fa-phone"></i>
                        </div>
                        <div class="col-md-8" >
                           <p>8080707957 <br> aamrapalibiradarofficial@gmail.com</p> 
                            
                            
                        </div>
                    </div>
                </div>
                <div class="col-md-3" style="display: flex;" >
                    <div class="row" style="margin-top: 20px; margin-left: 100px;"> 
                        <div class="col-md-4"><i class="fa-regular fa-clock"></i>
                        </div>
                        <div class="col-md-8" >
                          <span>6 hours-21 hours</span> *Weekends working
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- Third Navbar -->
    <div id="third-navbar" style="background-color: rgb(15, 173, 15);">
        <div class="">
            <nav class="navbar navbar-expand-lg navbar-light ml-5" style="margin-left: 180px !important;">
                <a class="navbar-brand font-weight-bold" href="HomePage.jsp"> Home </a>
                <button class="navbar-toggler font-weight-bold" type="button" data-toggle="collapse" data-target="#navbarText" aria-controls="navbarText" aria-expanded="false" aria-label="Toggle navigation">
                  <span class="navbar-toggler-icon"></span>
                </button>
                <div class="collapse navbar-collapse" id="navbarText">
                	
                  <ul class="navbar-nav mr-auto">
                  	<li class="nav-item">
                      <a class="nav-link  text-white" href="PostPage.jsp">Post</a>
                    </li>
                    <li class="nav-item">
                      <a class="nav-link  text-white" href="ProfilePage.jsp">Profile</a>
                    </li>
                    
                    <li class="nav-item">
                      <a class="nav-link  text-white" href="AboutPage.jsp">About</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link  text-white" href="Contact.jsp">Contact</a>
                      </li>
                  </ul>
                  <span class="navbar-text d-flex m-3" >
                    <input class="form-control mr-sm-2" type="search" placeholder="Search" aria-label="Search">
                    <button class="btn btn-outline-dark my-2 my-sm-0 font-weight-bold" type="submit">Search</button>
                  </span>
                  
                  <span class="navbar-text d-flex " style="margin-right: 100px !important;" >
                    <button class="btn btn-outline-warning  my-sm-0 font-weight-bold" type="submit"><a href="LoginPage.jsp">Logout</a></button>
                   
                  </span>
                </div>
              </nav>
        </div>
    </div>
    	
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
