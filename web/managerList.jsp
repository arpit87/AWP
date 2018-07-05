<%-- 
    Document   : viewContacts
    Created on : Apr 18, 2018, 2:39:09 PM
    Author     : BHUMESH
--%>
<%
        response.setHeader("Cache-Control","no-cache,no-store,must-revalidate");
        response.setHeader("Pragma","no-cache");
        response.setHeader("Expires","0");
        if(session.getAttribute("AdminName") == null || session.getAttribute("AdminPass")==null)
        {
            response.sendRedirect("index.jsp");
        }
%>
    
<%@page import="java.sql.SQLException"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>MANAGER LIST</title>
        <link rel="stylesheet" type="text/css" href="table.css">
        <link rel="stylesheet" type="text/css" href="design.css">
        <link rel="stylesheet" type="text/css" href="designA.css">   
    </head>
    </head>
    <body>
    <header><b>LIST OF MANAGERS</b></header>
   
    <table>
      <tr>
        <th>NAME</th>
        <th>USERNAME</th>        
        <th>PASSWORD</th>
        <th>DOJ</th>
        <th>DOB</th>
        <th>SALARY</th>
        <th>BRANCH</th>
        <th>GENDER</th>        
      </tr>

<%          
            try
            {
                Class.forName("com.mysql.jdbc.Driver").newInstance();
                String url = "jdbc:mysql://localhost:3306/transportdb";
                String username = "root";
                String password = "";
                Class.forName("com.mysql.jdbc.Driver");
                Connection con = DriverManager.getConnection(url,username,password); 

                Statement smt=con.createStatement();
                String q="Select * from managers";
                ResultSet rs=smt.executeQuery(q);
                while(rs.next())
                {

                 %>
                     <tr>
                         <td><%= rs.getString(1) %></td>
                         <td><%= rs.getString(2) %></td>
                         <td><%= rs.getString(3) %></td>
                         <td><%= rs.getString(4) %></td>
                         <td><%= rs.getString(5) %></td>
                         <td><%= rs.getString(6) %></td>
                         <td><%= rs.getString(7) %></td>
                         <td><%= rs.getString(8) %></td>
                     </tr>
                 <%              
                 }
                 %>
                 </table>
                    <%
                        rs.close();
                        smt.close();
                        con.close();
            }
            catch(Exception e)
            {
            }            
%>
    </body>
    </html>
