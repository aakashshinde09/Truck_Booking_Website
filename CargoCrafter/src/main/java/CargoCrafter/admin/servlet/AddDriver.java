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
import CargoCrafter.entity.Driver;

@WebServlet("/add_driver")
public class AddDriver extends HttpServlet {

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO Auto-generated method stub
//		super.doPost(req, resp);
		
		Driver d = new Driver();
		DriverDAOImpl dc = new DriverDAOImpl(DBConnect.getConn());
		
		String driverName = req.getParameter("driverName");
		long phNumber = Long.parseLong(req.getParameter("phNumber"));
		String driverEmail = req.getParameter("demail");
		int age = Integer.parseInt(req.getParameter("age"));
		String address = req.getParameter("daddress");
		String DLNumber = req.getParameter("dlNumber");
		String password = req.getParameter("password");
		
//		d.setDriverId(driverId);
		d.setDriverName(driverName);
		d.setPhNumber(phNumber);
		d.setDemail(driverEmail);
		d.setAge(age);
		d.setDaddress(address);
		d.setDlNumber(DLNumber);
		d.setPassword(password);
		
		HttpSession session = req.getSession();
		
		try {
			int saveDriver = dc.addDriver(d);
			
			if(saveDriver != 0) {
				session.setAttribute("succmsg", "Driver Addedd Successfully");
//				req.getRequestDispatcher("admin/add_driver.jsp").forward(req, resp);
				resp.sendRedirect("admin/driver_table.jsp");
			}
			else {
				session.setAttribute("error", "Something wrong on Server");
//				req.getRequestDispatcher("admin/add_driver.jsp").forward(req, resp);
				resp.sendRedirect("admin/add_driver.jsp");
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
	}
}
