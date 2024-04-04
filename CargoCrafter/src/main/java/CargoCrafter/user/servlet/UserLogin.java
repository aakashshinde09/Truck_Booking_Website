package CargoCrafter.user.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import CargoCrafter.DAO.UserDAOImpl;
import CargoCrafter.DB.DBConnect;
import CargoCrafter.entity.User;

@WebServlet("/userLogin")
public class UserLogin extends HttpServlet{

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO Auto-generated method stub
//		super.doPost(req, resp);
		
		try {
			UserDAOImpl dao = new UserDAOImpl(DBConnect.getConn());
			String email = req.getParameter("email");
			String password = req.getParameter("password");
			
			HttpSession session = req.getSession();
			
			if("admin@gmail.com".equals(email) && "admin".equals(password)) {
				User us = new User();
				us.setName("Admin");
				session.setAttribute("adminobj", us);
				resp.sendRedirect("admin/home.jsp");
				
			}
			else {
				User us = dao.userLogin(email, password);
				if(us != null) {
					session.setAttribute("userobj", us);
					resp.sendRedirect("index.jsp");
				}
				else {
					session.setAttribute("error", "Invalid Email or password");
					resp.sendRedirect("login.jsp");
				}
			}
			
		} catch (Exception e) {
			// TODO: handle exception
		}
		
	}
}
