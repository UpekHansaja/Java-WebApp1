package controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.HashMap;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import model.User;

/**
 *
 * @author upekhansaja
 */
@WebServlet(name = "User_Registration", urlPatterns = {"/User_Registration"})
public class User_Registration extends HttpServlet {
    
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String mobile = req.getParameter("mobile");
        String name = req.getParameter("uname");
        String gender = req.getParameter("gender");
        String country = req.getParameter("country");
        String password = req.getParameter("password");
        
        HashMap<String, User> userMap = (HashMap<String, User>) req.getServletContext().getAttribute("userMap");
        
        if (userMap.containsKey(mobile)) {
            resp.sendRedirect("user_registration.jsp?msg=error1");
        } else {
            
            User user = new User(mobile, name, gender, country, password);
            userMap.put(mobile, user);
            
            resp.sendRedirect("user_login.jsp");
            
        }
    }
    
}
