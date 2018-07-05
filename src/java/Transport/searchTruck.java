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
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class searchTruck extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
    {
        String truckno = request.getParameter("truckno");
        PrintWriter out = response.getWriter();  
           
        try
            {
                Class.forName("com.mysql.jdbc.Driver").newInstance();
                String url = "jdbc:mysql://localhost:3306/transportdb";
                String username = "root";
                String password = "";

                Class.forName("com.mysql.jdbc.Driver");
               
                try (Connection con = DriverManager.getConnection(url,username,password)) 
               {
                   Statement smt=con.createStatement();
                   //query to display all records from table employee
                   String q="Select * from trucks";
                   
                   ResultSet rs=smt.executeQuery(q);
                   int found = 0;
                   if(rs.next())
                   {        
                            do
                            {
                                if(truckno.equals(rs.getString(2)))
                                {
                                    out.println( "<!DOCTYPE html>\n" +
                                                    "<html>\n" +
                                                    "<body>\n" +
                                                    "<h2>"+ rs.getString(1)+"   "+rs.getString(2)+"   " + rs.getString(3) + "   "+ rs.getString(4) + "   " + rs.getString(5) + "   " + rs.getString(6) + "	\n" +
                                                    "</h2>\n" +
                                                    "</body>\n" +
                                                    "</html>" );
                                    found = 1;
                                }
                            }
                            while(rs.next() && found == 0);
                   }
                   if(found == 0)
                   {
                       out.println("NO TRUCK WITH THIS NUMBER INSTALLED...");
                   }
               }
		}
		catch(ClassNotFoundException | IllegalAccessException | InstantiationException | SQLException e){
			System.out.println(e);
		} 
    }
}
