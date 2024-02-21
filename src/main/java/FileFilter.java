import java.io.IOException;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.annotation.WebFilter;
import javax.servlet.http.HttpServletRequest;

@WebFilter("/admission")
public class FileFilter implements Filter {

    @Override
    public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain)
        throws IOException, ServletException {
        HttpServletRequest req = (HttpServletRequest) request;
        String diplomaFilename = req.getParameter("certs");
        String pictureFilename = req.getParameter("picture");
        String diplomaMessage = "", pictureMessage = "";
        if (diplomaFilename == ""){
            diplomaMessage = "Please upload a certifcate or diploma";
        }
        else if (!diplomaFilename.endsWith(".pdf")){
            diplomaMessage = "Only provide PDF files";
        }

        if (pictureFilename == ""){
            pictureMessage = "Please upload a passport picture";
        }
        else if (!pictureFilename.endsWith(".jpg") && !pictureFilename.endsWith(".png")){
            pictureMessage = "Only provide pictures with jpg or png extensions";
        }

        boolean hasErrors = !diplomaMessage.isEmpty() || !pictureMessage.isEmpty();
        request.setAttribute("hasErrors", hasErrors);

        if (hasErrors) {
            // Forward to JSP
            RequestDispatcher dp = request.getRequestDispatcher("registration.jsp");
            dp.forward(request, response);
        } else {
            chain.doFilter(request, response);
        }
    }
    
}