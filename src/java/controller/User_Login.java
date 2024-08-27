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
@WebServlet(name = "User_Login", urlPatterns = {"/User_Login"})
public class User_Login extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String mobile = req.getParameter("mobile");
        String password = req.getParameter("password");
        
        HashMap<String, User> userMap = (HashMap<String, User>) req.getServletContext().getAttribute("userMap");
        
        if(userMap.containsKey(mobile)){
            
            User user = userMap.get(mobile);
            
            if(userMap.get(mobile).getPassword().equals(password)){
                
                req.getSession().setAttribute("user", user);
                resp.sendRedirect("index.jsp");
                
            }else{
                resp.sendRedirect("user_login.jsp?msg=error3");
            }
            
        }else{
            resp.sendRedirect("user_login.jsp?msg=error2");
        }
        
    }
    
}
