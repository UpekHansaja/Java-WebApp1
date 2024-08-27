package model;

import java.util.ArrayList;
import java.util.HashMap;
import javax.servlet.ServletContextEvent;
import javax.servlet.ServletContextListener;
import javax.servlet.annotation.WebListener;

/**
 *
 * @author upekhansaja
 */

@WebListener
public class Listener1 implements ServletContextListener {

    @Override
    public void contextInitialized(ServletContextEvent sce) {
        
        HashMap<String, User> userMap = new HashMap<String, User>();
        sce.getServletContext().setAttribute("userMap", userMap);
        
    }

    @Override
    public void contextDestroyed(ServletContextEvent sce) {
        
    }
    
}
