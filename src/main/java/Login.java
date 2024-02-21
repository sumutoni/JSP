import java.io.IOException;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/login")
public class Login extends HttpServlet{
    @Override
     protected void doPost(HttpServletRequest request, HttpServletResponse response)
        throws ServletException, IOException{
        HttpSession session = request.getSession();
        session.setAttribute("email", request.getParameter("email").toString());
        session.setAttribute("password", request.getParameter("password").toString());
        RequestDispatcher dp = request.getRequestDispatcher("registration.jsp");
        dp.forward(request, response);
    }
    
}
