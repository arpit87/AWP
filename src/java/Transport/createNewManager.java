/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Transport;

import java.io.IOException;
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
public class createNewManager extends HttpServlet {

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException 
    {
        String name = request.getParameter("name");
        String username = request.getParameter("username");
        String password = request.getParameter("password");
        String doj = request.getParameter("doj");
        String dob = request.getParameter("dob");
        String salary = request.getParameter("salary");
        String branch = request.getParameter("branch");
        String gender = request.getParameter("gender");
        
        try{
                String driver = "com.mysql.jdbc.Driver";
                Class.forName(driver);
                String url = "jdbc:mysql://localhost:3306/transportdb";
                Connection conn = DriverManager.getConnection(url,"root","");                
                PreparedStatement ps=conn.prepareStatement("insert into managers(name ,username,password , doj , dob ,salary, branch , gender ) values(?,?,?,?,?,?,?,?)");             
                ps.setString(1,name);
                ps.setString(2,username);
                ps.setString(3,password);
                ps.setString(4,doj);
                ps.setString(5,dob);
                ps.setString(6,salary);
                ps.setString(7,branch);
                ps.setString(8,gender);                        
                ps.executeUpdate();              
        }        
        catch(ClassNotFoundException | SQLException e)
        {
            
        }
        response.sendRedirect("admin.jsp");
    }
}
