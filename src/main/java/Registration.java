import java.io.IOException;

import javax.servlet.RequestDispatcher;
//import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/registration")
public class Registration extends HttpServlet{
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException{
        //get all parameters
        String names = request.getParameter("name");
        String email =  request.getParameter("email");
        String password = request.getParameter("password");

        request.setAttribute("password", password);
        request.setAttribute("email", email);
        request.setAttribute("names", names);
        request.setAttribute("requestedUrl", request.getRequestURI());

        RequestDispatcher dp = request.getRequestDispatcher("login.jsp");
        dp.forward(request, response);
    }
    
}
