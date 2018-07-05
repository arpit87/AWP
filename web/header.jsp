<%-- 
    Document   : header
    Created on : Apr 18, 2018, 1:08:16 AM
    Author     : BHUMESH
--%>
<HEAD>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<link rel="stylesheet" type="text/css" href="design.css">
<meta name="viewport" content="width=device-width, initial-scale=1">
<style>

/* Caption text */
.text {
  color: #f2f2f2;
  font-size: 15px;
  padding: 8px 12px;
  position: absolute;
  bottom: 8px;
  width: 100%;
  text-align: center;
}

/* Number text (1/3 etc) */
.numbertext {
  color: #f2f2f2;
  font-size: 12px;
  padding: 8px 12px;
  position: absolute;
  top: 0;
}

/* The dots/bullets/indicators */
.dot {
  height: 15px;
  width: 15px;
  margin: 0 2px;
  background-color: #bbb;
  border-radius: 50%;
  display: inline-block;
  transition: background-color 1.0s ease;
}

.active {
  background-color: #717171;
}

/* Fading animation */
.fade {
  -webkit-animation-name: fade;
  -webkit-animation-duration: 1.5s;
  animation-name: fade;
  animation-duration: 1.5s;
}

@-webkit-keyframes fade {
  from {opacity: .4} 
  to {opacity: 1}
}

@keyframes fade {
  from {opacity: .4} 
  to {opacity: 1}
}

/* On smaller screens, decrease text size */
@media only screen and (max-width: 300px) {
  .text {font-size: 11px}
}
ul#header{
        list-style-type: none;
        overflow: hidden;
        padding: 0px;
        margin: 0px;
        background-color:green;
}
li#header{
        font-size: 15px;
        float:left;
        text-align: center;
}
a{
        text-decoration: none;
        color:white;
        padding: 17px;
        display: block;
        border: none;
        color: white;
        padding: 15px 32px;
        text-align: center;
        text-decoration: none;
        display: inline-block;
        font-size: 15px;
        margin: 4px 2px;
        cursor: pointer;
        -webkit-transition-duration: 0.4s; /* Safari */
        transition-duration: 0.4s;
}   
li a:hover {
    box-shadow: 0 12px 16px 0 rgba(0,0,0,0.24),0 17px 50px rgba(0,0,0,0.19);
    background-color:gray;
}
.text-block {
    box-shadow: 0 12px 16px 0 rgba(0,0,0,0.24),0 17px 50px rgba(0,0,0,0.19);
 
    position: absolute;
    bottom: 200px;
    right: 20px;
    background-color: black;
    color: white;
    padding-left: 20px;
    padding-right: 20px;
}

</style>

    <title>Transport Company</title>
    </HEAD> 
    <body> 

        <header><b>THE TRANSPORT COMPANY</B> </header>
    <div>
        <ul id="header">
            <li id="header"><a href="index.html">HOME</a></li>
            <li id="header"><a onclick="document.getElementById('id04').style.display='block'">RECENTLY INSTALLED TRUCKS</a></li>
            <li id="header"><a href="services.jsp">SERVICES</a></li>
            <li id="header"><a onclick="document.getElementById('id03').style.display='block'">CONTACT US</a></li>
        </ul>
    </DIV>    
        
    <div class="w3-container" id="id03" style="display: none;">           
        
        <div class="w3-modal-content w3-card-4 w3-animate-zoom" style="max-width:600px">
           
            <div align="center"><br>
                    <span onclick="document.getElementById('id03').style.display='none',document.getElementById('id03').style.display='none'" class="w3-button w3-xlarge w3-hover-red w3-display-topright" title="Close Modal">&times;</span>
                    <img src="images/contacts.jpg" alt="Avatar" style="width:30%" class="w3-circle w3-margin-top">
            </div>
           
            <form class="w3-container" action="contactus" method="post">
                <div class="w3-section">
                    <label><b>NAME:</b></label>
                    <input class="w3-input w3-border w3-margin-bottom" type="text" placeholder="NAME" name="name" autofocus required>
                    <br>
                    <label><b>E-MAIL:</b></label>
                    <input class="w3-input w3-border" type="email" placeholder="E-MAIL" name="email" required>
                    <br>
                    <label><b>MESSAGE:</b></label>
                    <textarea class="w3-input w3-border" placeholder="MESSAGE" name="msg" required></textarea>
                    <br>
                    <label><b>MOBILE:</b></label>
                    <input class="w3-input w3-border" type="text" placeholder="MOBILE NUMBER" name="mobile" required>
                    <input  type="hidden" name="person" value="USER">                    
                    <button class="w3-button w3-block w3-green w3-section w3-padding" type="submit">SEND</button>
                </div>
            </form>

            <div class="w3-container w3-border-top w3-padding-16 w3-light-grey">
                    <button onclick="document.getElementById('id03').style.display='none',document.getElementById('id03').style.display='none'" type="button" class="w3-button w3-red">Cancel</button>
            </div>
        </div>
    </div>

<div class="w3-container" id="id04" style="display: none;">                   
        <div class="w3-modal-content w3-card-4 w3-animate-zoom" style="max-width:600px">          
            <div align="center"><br>
                    <span onclick="document.getElementById('id04').style.display='none',document.getElementById('id04').style.display='none'" class="w3-button w3-xlarge w3-hover-red w3-display-topright" title="Close Modal">&times;</span>
                    <img src="images/truck.jpeg" alt="Avatar" style="width:30%" class="w3-circle w3-margin-top">
            </div>

            <button class="w3-button w3-block w3-green w3-section w3-padding" type="submit"><a href="recentlyInstallTrucks.jsp">RECENTLY INSTALLED TRUCKS</a></button>

            <div class="w3-container w3-border-top w3-padding-16 w3-light-grey">
                    <button onclick="document.getElementById('id04').style.display='none',document.getElementById('id04').style.display='none'" type="button" class="w3-button w3-red">Cancel</button>                
            </div>
        </div>
    </div>
  


    </body>
</html>
