/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Transport;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class login extends HttpServlet 
{
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
    {
        String uname = request.getParameter("username");        
        String upass = request.getParameter("userpass");
        LoginDao dao = new LoginDao();
        if(dao.check(uname,upass))
        {
            HttpSession session = request.getSession();
            session.setAttribute("username",uname);
            session.setAttribute("password",upass);           
            response.sendRedirect("welcome.jsp");
        }
        else
        {               
            response.sendRedirect("index.html");
        }
    }
}
