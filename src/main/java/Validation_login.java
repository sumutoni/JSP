import java.io.IOException;
import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.annotation.WebFilter;
import javax.servlet.http.HttpServletRequest;

@WebFilter("/login")
public class Validation_login implements Filter {
    @Override
    public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain)
        throws IOException, ServletException {
        //get all parameters
        HttpServletRequest req = (HttpServletRequest) request;
        String email =  request.getParameter("email");
        String password = request.getParameter("password");
        String email_message="", pass_message="";
        String emailpattern = "[A-Za-z0-9\\._\\-]+@[A-Za-z]{2,}\\.[A-Za-z\\.]{2,}";
        if (req.getSession(false) != null){
            if (req.getSession(false).getAttribute("email") == null || req.getSession(false).getAttribute("password") != null){
                req.getSession(false).invalidate();
                if (email.equals("")){
                    email_message = "Please provide your email!";
                }
                else if(!email.matches(emailpattern)){
                    email_message = "your email is incorrect!";
                }
                if(password.equals("")){
                    pass_message = "Please type your password!";
                }
            }
            else{
                if (!email.equals(req.getSession(false).getAttribute("email").toString())){
                    email_message = "email doesn't match any of our records";
                }
                if (!password.equals(req.getSession(false).getAttribute("password").toString())){
                    pass_message = "Password is incorrect!";
                }
            }
            
        }
        
        if (pass_message.isEmpty() && email_message.isEmpty()){
            chain.doFilter(request, response);
        }
        else{
            request.setAttribute("pass_message", pass_message);
            request.setAttribute("email_message", email_message);
            RequestDispatcher dp = request.getRequestDispatcher("login.jsp");
            dp.forward(request, response);
        }
    }
    
}

