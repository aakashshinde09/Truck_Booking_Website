package CargoCrafter.admin.servlet;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import CargoCrafter.DAO.DriverDAOImpl;
import CargoCrafter.DB.DBConnect;

@WebServlet("/deleteDriver")
public class DeleteDriver extends HttpServlet{

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO Auto-generated method stub
//		super.doGet(req, resp);
		
		DriverDAOImpl dc = new DriverDAOImpl(DBConnect.getConn());
		
		int driverId = Integer.parseInt(req.getParameter("driverId"));
		
		HttpSession session = req.getSession();
		
		try {
			int deleteDriver = dc.deleteDriver(driverId);
			
			if(deleteDriver != 0) {
				session.setAttribute("succmsg", "Driver Deleted Successfully");
//				req.getRequestDispatcher("admin/add_driver.jsp").forward(req, resp);
				resp.sendRedirect("admin/driver_table.jsp");
				
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		
	}
}

