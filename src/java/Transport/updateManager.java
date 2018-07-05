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
public class updateManager extends HttpServlet {

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
        
        int found = 0;
        int salary2=0;
       
        try
          {
               String sql = "select * from managers where username=?";
   
              Class.forName("com.mysql.jdbc.Driver").newInstance();
              String url = "jdbc:mysql://localhost:3306/transportdb";
              Class.forName("com.mysql.jdbc.Driver");               
             try (Connection con = DriverManager.getConnection(url,"root","")) 
              {
                Class.forName("com.mysql.jdbc.Driver");
                PreparedStatement st = con.prepareStatement(sql);
                st.setString(1,username);
                ResultSet rs = st.executeQuery();
                 if(rs.next())
                 {
                     found = 1;
                     if(name.equals(""))
                     {
                         name = rs.getString("name");                         
                     }                     
                     if(password.equals(""))
                     {
                         password = rs.getString("password");                         
                     }
                     if(doj.equals(""))
                     {
                         doj = rs.getString("doj");                         
                     }
                     if(dob.equals(""))
                     {
                         dob = rs.getString("dob");                         
                     }
                     
                     if(salary.equals(""))
                     {
                        salary2 = rs.getInt("salary");
                     }
                      else
                     {
                         salary2 = Integer.parseInt(salary);
                     }
                     
                     if(branch.equals(""))
                     {
                         branch = rs.getString("branch");                         
                     }
                     if(gender.equals(""))
                     {
                         gender = rs.getString("gender");                         
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
                    
                    String sql = "UPDATE managers SET name=?, password=?, doj=?, dob=? , salary=? , branch=? , gender=? WHERE username=? ";
                    Connection con = DriverManager.getConnection(url,"root","");
                    
                    PreparedStatement st = con.prepareStatement(sql);

                    st.setString(1,name);
                    st.setString(2,password);
                    st.setString(3,doj);
                    st.setString(4,dob);
                    st.setInt(5,salary2);
                    st.setString(6,branch);
                    st.setString(7,gender);
                    st.setString(8,username);

                    st.executeUpdate();
                    response.sendRedirect("admin.jsp");
            } 
            catch (IOException | SQLException ex ) 
            {
                 Logger.getLogger(updateManager.class.getName()).log(Level.SEVERE, null, ex);
             }
       }
     }

}
