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
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author BHUMESH
 */
public class changeStatusOfTruck extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException
    {
        String model = request.getParameter("model");
        String truckno = request.getParameter("truckno");
        String owner = request.getParameter("owner");
        String mobile = request.getParameter("mobile");
        String src = request.getParameter("src");
        String destination = request.getParameter("destination");
        String person = request.getParameter("person");
        int found = 0;
        
        try
          {
                 String sql = "select * from trucks where truckno=?";   
              Class.forName("com.mysql.jdbc.Driver").newInstance();
              String url = "jdbc:mysql://localhost:3306/transportdb";
              Class.forName("com.mysql.jdbc.Driver");               
             try (Connection con = DriverManager.getConnection(url,"root","")) 
              {
                PreparedStatement st = con.prepareStatement(sql);
                st.setString(1,truckno);
                ResultSet rs = st.executeQuery();
             
                 if(rs.next())
                 {
                     found = 1;
                     if(model.equals(""))
                     {
                         model = rs.getString("model");                         
                     }         
                     if(owner.equals(""))
                     {
                         owner = rs.getString("owner");                         
                     }
                     if(mobile.equals(""))
                     {
                         mobile = rs.getString("mobile");                         
                     }
                     if(src.equals(""))
                     {
                         src = rs.getString("src");                         
                     }
                     if(destination.equals("destination"))
                     {
                         destination = rs.getString("destination");
                     }
                 }
             }
             catch(Exception e)
             {
             
             }
          }
          catch(Exception e)
          {
          } 

        if(found == 1)
        {
            try
            {   

                    String url = "jdbc:mysql://localhost:3306/transportdb";              
                    String sql = "UPDATE trucks SET model=?, owner=?, mobile=?, src=? , destination=? WHERE truckno=? ";
                    Connection con = DriverManager.getConnection(url,"root","");
                    PreparedStatement st = con.prepareStatement(sql);

                    st.setString(1,model);
                    st.setString(2,owner);
                    st.setString(3,mobile);
                    st.setString(4,src);
                    st.setString(5,destination);
                    st.setString(6,truckno);

                    st.executeUpdate();
                    if(person.equalsIgnoreCase("ADMIN"))
                    {
                       response.sendRedirect("admin.jsp");
                    }
                    else if(person.equalsIgnoreCase("MANAGER"))
                    {
                        response.sendRedirect("welcome.jsp");       
                    }
            }   
            catch (IOException | SQLException ex ) 
            {
                 Logger.getLogger(updateManager.class.getName()).log(Level.SEVERE, null, ex);
             }

        }
        
        
    }
}
