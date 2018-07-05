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

/**
 *
 * @author BHUMESH
 */
public class adminLoginProcess extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String uname = request.getParameter("username");        
        String upass = request.getParameter("userpass");
        
        LoginDaoAdmin dao = new LoginDaoAdmin();
        if(dao.check(uname,upass))
        {
            HttpSession session = request.getSession();
            session.setAttribute("AdminName",uname);
            session.setAttribute("AdminPass",upass);            
            response.sendRedirect("admin.jsp");
        }
        else
        {
            response.sendRedirect("index.html");
        }
    }
}
