package servlets;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import daos.UsersDao;
import pojos.Users;

@WebServlet("/SignUpServlet")
public class SignUpServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
    public SignUpServlet() {
        super();
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    	String name = new String();
    	String email = new String();
    	String password = new String();
    	
    	if(request.getParameter("name") != null && request.getParameter("name").trim().length() != 0) {
    		name = request.getParameter("name");
    	}
    	if(request.getParameter("email") != null && request.getParameter("email").trim().length() != 0) {
    		email = request.getParameter("email");
    	}
    	if(request.getParameter("password") != null && request.getParameter("password").trim().length() != 0) {
    		password = request.getParameter("password");
    	}
    	int i = 0;
    	if(name.equals("") || email.equals("") || password.equals("")) {
    		response.sendRedirect("index.jsp");
    		i++;
    	}
    	
    	if(i == 0) {
    	Users u = new Users();
    	u.setName(name);
    	u.setEmail(email);
    	u.setPassword(password);
    	int id = new UsersDao().create(u);
    	id = 0;
    	if(id != 0) {
    		HttpSession sess = request.getSession();
    		sess.setAttribute("email", email);
			sess.setAttribute("userid", id);
			sess.setAttribute("name", name);
    		response.sendRedirect("UserMenu.jsp");
    	}
    	else {
    		response.sendRedirect("index.jsp");
    	}
    	}
    	
    }
    
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
