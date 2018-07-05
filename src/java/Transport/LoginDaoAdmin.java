/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Transport;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class LoginDaoAdmin {
    String sql = "select * from adminTable where username=? and password=?";
    String url = "jdbc:mysql://localhost:3306/transportdb";
    String username = "root";
    String password = "";
    public boolean check(String uname , String upass )
    {
        try            
        {
            Class.forName("com.mysql.jdbc.Driver");
            Connection con = DriverManager.getConnection(url,username,password);
            PreparedStatement st = con.prepareStatement(sql);
            st.setString(1,uname);
            st.setString(2,upass);
            ResultSet rs = st.executeQuery();
            if(rs.next())
            {
                return true;
            }
        }
        catch(ClassNotFoundException | SQLException e)
        {
        }
        return false;
    }
}