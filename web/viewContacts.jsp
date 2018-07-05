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
        <title>CONTACTS</title>
        <link rel="stylesheet" type="text/css" href="table.css">    
        <link rel="stylesheet" type="text/css" href="design.css">    
        <link rel="stylesheet" type="text/css" href="designA.css">    
    </head>
    </head>
    <body>
  
   <header><b>MESSAGES</b></header>
    <table>
      <tr>
        <th>NAME</th>
        <th>E-MAIL</th>
        <th>MESSAGE</th>
        <th>MOBILE</th>
        <th>PERSON</th>
      </tr>

<%    
                       
            try
            {
                String url = "jdbc:mysql://localhost:3306/transportdb";
                String username = "root";
                String password = "";

                Class.forName("com.mysql.jdbc.Driver");
                Connection con = DriverManager.getConnection(url,username,password) ;
             
                   Statement smt=con.createStatement();
                   String q="Select * from contacts";
                   
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
