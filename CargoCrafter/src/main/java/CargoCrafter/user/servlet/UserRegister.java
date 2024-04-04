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

@WebServlet("/userRegister")
public class UserRegister extends HttpServlet {
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO Auto-generated method stub
//		super.doPost(req, resp);
		
		try {
			String name = req.getParameter("name");
			String email = req.getParameter("email");
			long mobile = Long.parseLong(req.getParameter("mobile"));
			String password = req.getParameter("password");
			
			User us = new User();
			us.setName(name);
			us.setEmail(email);
			us.setMobile(mobile);
			us.setPassword(password);
			
			HttpSession session = req.getSession();
			UserDAOImpl dao = new UserDAOImpl(DBConnect.getConn());
			boolean userRegister = dao.userRegister(us);
			
			if(userRegister == true) {
				session.setAttribute("succmsg", "Registered Successfully");
				resp.sendRedirect("register.jsp");
			}
			else {
				session.setAttribute("error", "Something wrong on Server");
				resp.sendRedirect("register.jsp");
			}
			
		} catch (Exception e) {
			// TODO: handle exception
		}
	}

}
