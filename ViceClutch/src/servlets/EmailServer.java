package servlets;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import daos.UsersDao;

@WebServlet("/EmailServer")
public class EmailServer extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public EmailServer() {
        super();
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    	doPost(request, response);
	}

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    	String email = new String();
    
    	if(request.getParameter("em") != null || request.getParameter("em").trim().length() != 0) {
    		email = request.getParameter("em");
    	}
    	
    	PrintWriter out = response.getWriter();
    	
    	if(new UsersDao().findFromEmail(email).getUserId() != 0) {
    		out.println("<p id='errorEmail' class = 'text-danger'>Email id is not available</p>");
    	}
    	else {
    		out.println("<p id='errorEmail' class = 'text-success'>Email id is Available</p>");
    	}
    }

}
