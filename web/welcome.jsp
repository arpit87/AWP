<%-- 
    Document   : welcome
    Created on : Apr 14, 2018, 1:07:54 AM
    Author     : BHUMESH
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
       
        <link rel="stylesheet" href="designB.css">
        <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
        <link rel="stylesheet" type="text/css" href="design.css">
        <link rel="stylesheet" type="text/css" href="designA.css">
    </head>

    <body style="height:750px;">
        
        <%
            response.setHeader("Cache-Control","no-cache,no-store,must-revalidate");
            response.setHeader("Pragma","no-cache");
            response.setHeader("Expires","0");
            if(session.getAttribute("username") == null || session.getAttribute("password")==null)
            {
                response.sendRedirect("index.html");
            }
        %>
        <header>WELCOME <%out.println("   " + session.getAttribute("username"));%></header> 
        <span align="right">
            <form action = "logout" method="post">                
                <button value="submit" class="logout" >LOGOUT</button>
            </form>
        </span> 
            
        </span> 
        <iframe src="images/4.jpg"  style="float:right;height:75%;width:73%;display: block;">    
        </iframe>

        
        <button class="btn1" onclick="document.getElementById('id06').style.display='block'">RECENTLY INSTALLED TRUCKS</button>
    <br>
    <div id="id06" class="modal">
        <span onclick="document.getElementById('id06').style.display='none'" class="close" title="Close Modal">&times;</span>

        <form class="modal-content" action="recentlyInstallTrucks.jsp" method="post">
            <div class="container">
            <div class="clearfix">
            <button type="button" onclick="document.getElementById('id06').style.display='none'" class="cancelbtn">Cancel</button>
            <button type="submit" class="signupbtn">RECENTLY INSTALLED TRUCKS</button>
            </div>
            </div>
        </form>
    </div>
    <script>

    var modal = document.getElementById('id06');

    // When the user clicks anywhere outside of the modal, close it
    window.onclick = function(event) {
    if (event.target === modal) {
    modal.style.display = "none";
    }
    };
    </script>

    
    <button class="btn1" onclick="document.getElementById('id08').style.display='block'"  >CHANGE THE STATUS OF TRUCK</button>
    <br>
    <div id="id08" class="modal">
  <span onclick="document.getElementById('id08').style.display='none'" class="close" title="Close Modal">&times;</span>

  <form class="modal-content" action="changeStatusOfTruck" method="post">
    <div class="container">
      <h1 align="center">CHANGE THE STATUS OF TRUCK</h1>
      <hr>
    
      <label for="model"><b> MODEL</b></label>
      <input type="text" name="model" placeholder="MODEL">
      <br>
      <label for="truckno"><b>TRUCK NUMBER</b></label>
      <input type="text" name="truckno" placeholder="TRUCK NUMBER" required autofocus>
      <br>     
      <label for="owner"><b>OWNER:</b></label>
      <input type="text" name="owner" placeholder="OWNER">
      <br>
      <label for="mobile"><b> MOBILE:</b></label>      
      <input type="text" name="mobile" placeholder="MOBILE">
      <br>
      <label for="src"><b>ROUTE-FROM:</b></label>     
      <input type="text" name="src" placeholder="ROUTE-FROM">
      <br>
      <label for="destination"><b>DESTINATION:</b></label>
      <input type="text" name="destination" placeholder="DESTINATION">                       
      <br>
      <input type="hidden" name="person" value="MANAGER">                       
      
      <div class="clearfix">
        <button type="button" onclick="document.getElementById('id08').style.display='none'" class="cancelbtn">Cancel</button>
        <button type="submit" class="signupbtn">CHANGE STATUS</button>
      </div>
    </div>
  </form>
</div>

    <script>
    // Get the modal
    var modal = document.getElementById('id08');

    // When the user clicks anywhere outside of the modal, close it
    window.onclick = function(event) {
        if (event.target === modal) {
            modal.style.display = "none";
        }
    };
    </script>
             
    
    
    <button class="btn1" onclick="document.getElementById('id04').style.display='block'">TRUCKS RELATED TO BRANCH</button>
    <br>
    <div id="id04" class="modal">
        <span onclick="document.getElementById('id04').style.display='none'" class="close" title="Close Modal">&times;</span>

        <form class="modal-content" action="trucksRelatedToBranch.jsp" method="post">
            <div class="container">
            <div class="clearfix">
            <button type="button" onclick="document.getElementById('id04').style.display='none'" class="cancelbtn">Cancel</button>
            <button type="submit" class="signupbtn">TRUCKS RELATED TO BRANCH</button>
            </div>
            </div>
        </form>
    </div>
    <script>

    var modal = document.getElementById('id04');

    // When the user clicks anywhere outside of the modal, close it
    window.onclick = function(event) {
    if (event.target === modal) {
    modal.style.display = "none";
    }
    };
    </script>
                
    
    
         
    <button class="btn1" onclick="document.getElementById('id05').style.display='block'">CONTACT TO ADMIN</button>    
     
    <div class="w3-container" id="id05" style="display: none;">                   
        <div class="w3-modal-content w3-card-4 w3-animate-zoom" style="max-width:600px">           
            <div align="center"><br>
                    <span onclick="document.getElementById('id05').style.display='none',document.getElementById('id05').style.display='none'" class="w3-button w3-xlarge w3-hover-red w3-display-topright" title="Close Modal">&times;</span>
                    <img src="images/contacts.jpg" alt="Avatar" style="width:30%" class="w3-circle w3-margin-top">
            </div>
           
            <form class="w3-container" action="contactus" method="post">
                <div class="w3-section">
                    <input class="w3-input w3-border w3-margin-bottom" type="hidden" name="name" value="<%=session.getAttribute("username")%>" >
                    <label><b>E-MAIL:</b></label>
                    <input class="w3-input w3-border" type="email" placeholder="E-MAIL" name="email" required autofocus>
                    <br>
                    <label><b>MESSAGE:</b></label>
                    <textarea class="w3-input w3-border" placeholder="MESSAGE" name="msg" required></textarea>
                    <br>
                    <label><b>MOBILE:</b></label>
                    <input class="w3-input w3-border" type="text" placeholder="MOBILE NUMBER" name="mobile" required>
                    <input  type="hidden" name="person" value="MANAGER">                    
                    <button class="w3-button w3-block w3-green w3-section w3-padding" type="submit">SEND</button>
                </div>
            </form>

            <div class="w3-container w3-border-top w3-padding-16 w3-light-grey">
                    <button onclick="document.getElementById('id05').style.display='none',document.getElementById('id05').style.display='none'" type="button" class="w3-button w3-red">Cancel</button>
            </div>
        </div>
    </div>
                  
        
    </body>
</html>
