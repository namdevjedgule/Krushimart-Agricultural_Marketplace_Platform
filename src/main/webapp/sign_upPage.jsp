<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="./css/sign-up_Page.css">
    <title>SignupPage</title>
</head>

<body>
 
   <div class="bg-image" id="bagroundImg">
        <div id="overlay">
            <div class="maindiv" id="bgimg">

                <div class="applogo">
                    <h1><img src="./images/logo1.png" alt="logo" class="logoimg">
                        <div class="mart tracking-in-expand">MART</div>
                    </h1>
                </div>
                <div class="cards">
                    <div class="farmer cardreg">
                        <div class="common-card" align="center">
                            <h3 class="heading">FARMER</h3>
                            <div class="image1">
                                <img src="./images/Farmer.png" style="background-size:cover; " alt="famericon"
                                    width="250px" class="farmer_icon" >
                            </div>
                            <div class="signup">
                                <a href="FarmerRegistration.jsp">SIGN UP</a>
                            </div>
                        </div>
                    </div>
                    <div class="buyer cardreg">
                        <div class="common-card" align="center">
                            <h3 class="heading">CONSUMER</h3>
                            <div class="image1">
                                <img src="./BuyerImg.png" alt="famericon"
                                    width="110px" class="farmer_icon" >
                            </div>
                            <div class="signup">
                                <a href="BuyerRegistrationForm.jsp">SIGN UP</a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div id="exitsting-user">
                <p><a href="">Existing User?</a></p>
                <a href="LoginPage.jsp"><button class="btn">Login</button></a>
            </div>
        </div>
        
    </div>
   
</body>

</html>