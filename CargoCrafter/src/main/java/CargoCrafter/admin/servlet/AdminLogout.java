package CargoCrafter.admin.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/admin_logout")
public class AdminLogout extends HttpServlet{

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO Auto-generated method stub
//		super.doGet(req, resp);
		
		HttpSession session = req.getSession();
		
		session.removeAttribute("adminobj");
		session.removeAttribute("userobj");
		
		
		session.setAttribute("succmsg", "logout successfully");
		
		resp.sendRedirect("login.jsp");
	}
}
