package servlets;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import daos.UsersDao;
import pojos.Users;

@WebServlet("/EventRegister")
public class EventRegister extends HttpServlet {
	private static final long serialVersionUID = 1L;
     
    public EventRegister() {
        super();
     
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    	doPost(request, response);
    }

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String name = new String();
		String email = new String();
		String mobile = new String();
		String branch = new String();
		String year = new String();
		String college = new String();
		
		if(request.getParameter("name") != null && request.getParameter("name").trim().length() != 0 ) {
			name = request.getParameter("name");
		}
		if(request.getParameter("email") != null && request.getParameter("email").trim().length() != 0 ) {
			email = request.getParameter("email");
		}
		if(request.getParameter("mobile") != null && request.getParameter("mobile").trim().length() != 0 ) {
			mobile = request.getParameter("mobile");
		}
		if(request.getParameter("branch") != null && request.getParameter("branch").trim().length() != 0 ) {
			branch = request.getParameter("branch");
		}
		if(request.getParameter("year") != null && request.getParameter("year").trim().length() != 0 ) {
			year = request.getParameter("year");
		}
		if(request.getParameter("college") != null && request.getParameter("college").trim().length() !=0) {
			college = request.getParameter("college");
		}
		Users u = new Users();
		u.setName(name);
		u.setEmail(email);
		u.setMobile(mobile);
		u.setBranch(branch);
		u.setYear(year);
		u.setCollege(college);
		System.out.println(u);
		UsersDao ud = new UsersDao();
		
		ud.register(u);
		response.sendRedirect("index.jsp");
		
		
	}

}
