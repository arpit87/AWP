/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Transport;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author BHUMESH
 */
public class contactus extends HttpServlet {

  
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException 
    {
        String name=request.getParameter("name");
        String email=request.getParameter("email");
        String msg=request.getParameter("msg");
        String mobile=request.getParameter("mobile");
        String person=request.getParameter("person");
        
        try{
                String driver = "com.mysql.jdbc.Driver";
                Class.forName(driver);
                String url = "jdbc:mysql://localhost:3306/transportdb";
                Connection conn = DriverManager.getConnection(url,"root","");                
                PreparedStatement ps = conn.prepareStatement("insert into contacts(name ,email,msg , mobile , person ) values(?,?,?,?,?)");             
                
                ps.setString(1,name);
                ps.setString(2,email);
                ps.setString(3,msg);
                ps.setString(4,mobile);
                ps.setString(5,person);
                
                ps.executeUpdate();              
        }        
        catch(ClassNotFoundException | SQLException e)
        {
            
        }
        
        response.sendRedirect("welcome.jsp");
        
    }

}
