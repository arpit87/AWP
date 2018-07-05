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
public class installNewTrucks extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
    {
        String model = request.getParameter("model");
        String truckno = request.getParameter("truckno");
        String owner = request.getParameter("owner");
        String mobile = request.getParameter("mobile");
        String src = request.getParameter("src");
        String destination = request.getParameter("destination");
        PrintWriter out = response.getWriter();  
        try{
                String driver = "com.mysql.jdbc.Driver";
                Class.forName(driver);
                String url = "jdbc:mysql://localhost:3306/transportdb";
                Connection conn = DriverManager.getConnection(url,"root","");                
                PreparedStatement ps = conn.prepareStatement("insert into trucks(model ,truckno,owner , mobile , src , destination ) values(?,?,?,?,?,?)");             
           
                ps.setString(1,model);
                ps.setString(2,truckno);
                ps.setString(3,owner);
                ps.setString(4,mobile);
                ps.setString(5,src);
                ps.setString(6,destination);                      
                ps.executeUpdate();              
        }        
        catch(ClassNotFoundException | SQLException e)
        {
            
        }
        response.sendRedirect("admin.jsp");
        
    }

}
