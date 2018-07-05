<%-- 
    Document   : viewContacts
    Created on : Apr 18, 2018, 2:39:09 PM
    Author     : BHUMESH
--%>

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
        <title>recently install trucks</title>
        <link rel="stylesheet" type="text/css" href="table.css"></head>
        <link rel="stylesheet" type="text/css" href="design.css"></head>
        <link rel="stylesheet" type="text/css" href="designA.css"></head>        
    </head>
    <body>

        <header><b>INSTALLED TRUCKS</b></header>
        
    <table>
      <tr>
        <th>MODEL</th>
        <th>TRUCK</th>
        <th>OWNER</th>
        <th>MOBILE</th>
        <th>SOURCE</th>
        <th>DESTINATION</Th>
      </tr>
      <%
            try
            {
                Class.forName("com.mysql.jdbc.Driver").newInstance();
                String url = "jdbc:mysql://localhost:3306/transportdb";
                String username = "root";
                String password = "";
                Connection con = DriverManager.getConnection(url,username,password); 
                Statement smt=con.createStatement();
                String q="Select * from trucks";
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