package servlets;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import daos.UsersDao;

@WebServlet("/LogInServlet")
public class LogInServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public LogInServlet() {
        super();
    }
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doPost(request, response);
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String email= new String();
		if(request.getParameter("logInEmail")!= null && request.getParameter("logInEmail").trim().length() != 0) {
			email = request.getParameter("logInEmail");
		}
		
		String password= new String();
		if(request.getParameter("logInPassword")!= null && request.getParameter("logInPassword").trim().length() != 0) {
			password = request.getParameter("logInPassword");
		}
		
		String gName= new String();
		if(request.getParameter("gName")!= null && request.getParameter("gName").trim().length() != 0) {
			gName = request.getParameter("gName");
		}
		
		String gEmail= new String();
		if(request.getParameter("gEmail")!= null && request.getParameter("gEmail").trim().length() != 0) {
			gEmail = request.getParameter("gEmail");
		}
		UsersDao usersDao = new UsersDao();
		HttpSession sess = request.getSession();	
		int id = 0;
		if((id = usersDao.userGName(gEmail, gName)) != 0) {
			sess.setAttribute("email", gEmail);
			sess.setAttribute("userid", id);
			sess.setAttribute("name", gName);
			response.sendRedirect("UserMenu.jsp");
		}
		else if((id = usersDao.checkUser(email, password)) != 0) {
			sess.setAttribute("email", email);
			sess.setAttribute("userid", id);
			sess.setAttribute("name", usersDao.findFromEmail(email).getName());
			response.sendRedirect("UserMenu.jsp");
		}
		else {
			response.sendRedirect("index.jsp");
		}
		
		
	}
}
