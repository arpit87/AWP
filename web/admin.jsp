<%-- 
    Document   : admin
    Created on : Apr 14, 2018, 2:21:26 PM
    Author     : BHUMESH
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<%
    response.setHeader("Cache-Control","no-cache,no-store,must-revalidate");
    response.setHeader("Pragma","no-cache");
    response.setHeader("Expires","0");
    if(session.getAttribute("AdminName") == null || session.getAttribute("AdminPass")==null)
    {
        response.sendRedirect("index.jsp");
    }
%>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>admin</title>
        <link rel="stylesheet" type="text/css" href="design.css">
        <link rel="stylesheet" type="text/css" href="designA.css">
    </head>
    
    <body style="height:750px;">
        <header>WELCOME <%out.println("   " + session.getAttribute("AdminName"));%> <img src="images/logo.png" style="float: right;" width="60px" height="50px"> </header>

<span align="right">
        <form action = "logout" method="post">                
            <button value="submit" class="logout" >LOGOUT</button>
        </form>
    
</span> 
<iframe src="images/4.jpg"  style="float:right;height:80%;width:73%;display: block;">    
</iframe>
            
        
  <button class="btn1" onclick="document.getElementById('id01').style.display='block'"  >CREATE NEW MANAGER</button>
  <br>
  <div id="id01" class="modal">
  <span onclick="document.getElementById('id01').style.display='none'" class="close" title="Close Modal">&times;</span>

  <form class="modal-content" action="createNewManager" method="post">
    <div class="container">
      <h1 align="center">Sign Up</h1>
      <p>Please fill in this form to create NEW MANAGER.</p>
      <hr>
    
      <label for="name"><b> NAME:</b></label>
      <input type="text" name="name" placeholder="NAME" required autofocus>
      <br>
      <label for="username"><b>USERNAME:</b></label>
      <input type="text" name="username" placeholder="USERNAME" required>
      <br>
      <label for="password"><b> PASSWORD:</b></label>      
      <input type="password" name="password" placeholder="PASSWORD" required>
      <br>
      <label for="salary"><b>SALARY:</b></label>     
      <input type="text" name="salary" placeholder="SALARY" required>
      <br>
      <label for="gender"><b>GENDER:</b></label>
      <input type="text" name="gender" placeholder="GENDER" required>                       
      <br>
      <label for="branch"><b>BRANCH:</b></label>                                            
      <input type="text" name="branch" placeholder="BRANCH" required>
      <br>
      <br>
      <label for="doj"> <b>DOJ:</b></label>
      <input type="date" name="doj" required>
      <label for="dob"><b>DOB:</b></label>
      <input type="date" name="dob" required>
      
      <p>By creating an account you agree to our <a href="#" style="color:dodgerblue">Terms & Privacy</a>.</p>

      <div class="clearfix">
        <button type="button" onclick="document.getElementById('id01').style.display='none'" class="cancelbtn">Cancel</button>
        <button type="submit" class="signupbtn">Sign Up</button>
      </div>
    </div>
  </form>
</div>

    <script>
    // Get the modal
    var modal = document.getElementById('id01');

    // When the user clicks anywhere outside of the modal, close it
    window.onclick = function(event) {
        if (event.target == modal) {
            modal.style.display = "none";
        }
    };
    </script>

    
    
    
        <button class="btn1" onclick="document.getElementById('id02').style.display='block'"  >UPDATE INFORMATION OF MANAGER</button>
    <br>
        <div id="id02" class="modal">
        <span onclick="document.getElementById('id02').style.display='none'" class="close" title="Close Modal">&times;</span>
  
  <form class="modal-content" action="updateManager" method="post">
    <div class="container">
      <h1 align="center">UPDATE INFORMATION</h1>
      
      <label for="name"><b> NAME:</b></label>
      <input type="text" name="name" placeholder="NAME" autofocus>
      <br>
      <label for="username"><b>USERNAME:</b></label>
      <input type="text" name="username" placeholder="USERNAME" required>
      <br>
      <label for="password"><b> PASSWORD:</b></label>      
      <input type="password" name="password" placeholder="PASSWORD">
      <br>
      <label for="salary"><b>SALARY:</b></label>     
      <input type="text" name="salary" placeholder="SALARY">
      <br>
      <label for="gender"><b>GENDER:</b></label>
      <input type="text" name="gender" placeholder="GENDER">                       
      <br>
      <label for="branch"><b>BRANCH:</b></label>                                            
      <input type="text" name="branch" placeholder="BRANCH">
      <br>
      <br>
      <label for="doj"> <b>DOJ:</b></label>
      <input type="date" name="doj" >
      <label for="dob"><b>DOB:</b></label>
      <input type="date" name="dob" >
      
      <p>By creating an account you agree to our <a href="#" style="color:dodgerblue">Terms & Privacy</a>.</p>

      <div class="clearfix">
        <button type="button" onclick="document.getElementById('id02').style.display='none'" class="cancelbtn">Cancel</button>
        <button type="submit" class="signupbtn">UPDATE</button>
      </div>
    </div>
  </form>
</div>

    <script>
    // Get the modal
    var modal = document.getElementById('id02');

    // When the user clicks anywhere outside of the modal, close it
    window.onclick = function(event) 
    {
        if (event.target == modal) {
            modal.style.display = "none";
        }
    };
    </script>

    
    
    
        <button class="btn1" onclick="document.getElementById('id03').style.display='block'"  >SEARCH TRUCK</button>
        <br> 
        <div id="id03" class="modal">
         <span onclick="document.getElementById('id03').style.display='none'" class="close" title="Close Modal">&times;</span>

         <form class="modal-content" action="searchTruck" method="post">
           <div class="container">
             <h1 align="center">SEARCH</h1>
             <hr>

             <label for="truckno"><b> TRUCK NUMBER :</b></label>
             <input type="text" name="truckno" placeholder="TRUCK NUMBER" required autofocus>

             <div class="clearfix">
               <button type="button" onclick="document.getElementById('id03').style.display='none'" class="cancelbtn">Cancel</button>
               <button type="submit" class="signupbtn">SEARCH</button>
             </div>
           </div>
         </form>
       </div>
    <script>
    // Get the modal
    var modal = document.getElementById('id03');

    // When the user clicks anywhere outside of the modal, close it
    window.onclick = function(event) {
        if (event.target === modal) {
            modal.style.display = "none";
        }
    };
    </script>

    
    
    
        <button class="btn1" onclick="document.getElementById('id04').style.display='block'"  >LIST OF ALL MANAGERS</button>
        <br>
        <div id="id04" class="modal">
            <span onclick="document.getElementById('id04').style.display='none'" class="close" title="Close Modal">&times;</span>

            <form class="modal-content" action="managerList.jsp" method="post">
                <div class="container">
                <div class="clearfix">
                <button type="button" onclick="document.getElementById('id04').style.display='none'" class="cancelbtn">Cancel</button>
                <button type="submit" class="signupbtn">LIST OF ALL MANAGERS</button>
                </div>
                </div>
            </form>
        </div>
        <script>
        // Get the modal
        var modal = document.getElementById('id04');

        // When the user clicks anywhere outside of the modal, close it
        window.onclick = function(event) {
        if (event.target === modal) {
        modal.style.display = "none";
        }
        };
        </script>

    
        
        
        <button class="btn1" onclick="document.getElementById('id05').style.display='block'"  >VIEW CONTACTS</button>
        <br>
        <div id="id05" class="modal">
            <span onclick="document.getElementById('id05').style.display='none'" class="close" title="Close Modal">&times;</span>

            <form class="modal-content" action="viewContacts.jsp" method="post">
                <div class="container">
                <div class="clearfix">
                <button type="button" onclick="document.getElementById('id05').style.display='none'" class="cancelbtn">Cancel</button>
                <button type="submit" class="signupbtn"><a href="viewContacts.jsp">VIEW CONTACTS</a></button>
                </div>
                </div>
            </form>
        </div>
        <script>

        // Get the modal
        var modal = document.getElementById('id05');

        // When the user clicks anywhere outside of the modal, close it
        window.onclick = function(event) {
        if (event.target === modal) {
        modal.style.display = "none";
        }
        };
        </script>

        
    
        
    <button class="btn1" onclick="document.getElementById('id06').style.display='block'"  >RECENTLY INSTALLED TRUCKS</button>
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

    // Get the modal
    var modal = document.getElementById('id06');

    // When the user clicks anywhere outside of the modal, close it
    window.onclick = function(event) {
    if (event.target === modal) {
    modal.style.display = "none";
    }
    };
    </script>

    
    <button class="btn1" onclick="document.getElementById('id07').style.display='block'"  >INSTALL NEW TRUCK</button>
    <br>
    <div id="id07" class="modal">
  <span onclick="document.getElementById('id07').style.display='none'" class="close" title="Close Modal">&times;</span>

  <form class="modal-content" action="installNewTrucks" method="post">
    <div class="container">
      <h1 align="center">INSTALL NEW TRUCK</h1>
      <p>Please fill in this form to INSTALL NEW TRUCK.</p>
      <hr>
    
      <label for="model"><b> MODEL</b></label>
      <input type="text" name="model" placeholder="MODEL" required autofocus>
      <br>
      <label for="truckno"><b>TRUCK NUMBER</b></label>
      <input type="text" name="truckno" placeholder="TRUCK NUMBER" required>
      <br>     
      <label for="owner"><b>OWNER:</b></label>
      <input type="text" name="owner" placeholder="OWNER" required>
      <br>
      <label for="mobile"><b> MOBILE:</b></label>      
      <input type="text" name="mobile" placeholder="MOBILE" required>
      <br>
      <label for="src"><b>ROUTE-FROM:</b></label>     
      <input type="text" name="src" placeholder="ROUTE-FROM" required>
      <br>
      <label for="destination"><b>DESTINATION:</b></label>
      <input type="text" name="destination" placeholder="DESTINATION" required>                       
      <br>
      <p>By creating an account you agree to our <a href="#" style="color:dodgerblue">Terms & Privacy</a>.</p>

      <div class="clearfix">
        <button type="button" onclick="document.getElementById('id07').style.display='none'" class="cancelbtn">Cancel</button>
        <button type="submit" class="signupbtn">CREATE</button>
      </div>
    </div>
  </form>
</div>

    <script>
    // Get the modal
    var modal = document.getElementById('id07');

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
      <input type="text" name="model" placeholder="MODEL" >
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
      <input type="hidden" name="person" value="ADMIN">                            
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
    </body>
</html>
