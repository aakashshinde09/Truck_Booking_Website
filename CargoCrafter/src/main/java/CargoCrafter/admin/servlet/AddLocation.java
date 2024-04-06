package CargoCrafter.admin.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import CargoCrafter.DAO.LocationDAOImpl;
import CargoCrafter.DB.DBConnect;
import CargoCrafter.entity.Location;


@WebServlet("/addlocation")
public class AddLocation extends HttpServlet{

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO Auto-generated method stub
//		super.doPost(req, resp);
		
		String source = req.getParameter("source");
		String destination = req.getParameter("destination");
		int total_km = Integer.parseInt(req.getParameter("total_km"));
		int price_per_km = Integer.parseInt(req.getParameter("price_per_km"));
		
		Location l = new Location();
		l.setSource(source);
		l.setDestination(destination);
		l.setTotal_km(total_km);
		l.setPrice_per_km(price_per_km);
		
		LocationDAOImpl ld = new LocationDAOImpl(DBConnect.getConn());
		
		boolean saveLocation = ld.saveLocation(l);
		
		HttpSession session = req.getSession();
		
		if(saveLocation) {
			session.setAttribute("succmsg", "Location Added");
			resp.sendRedirect("admin/add_location.jsp");
		}
		else {
			session.setAttribute("error", "Something wrong on Server");
			resp.sendRedirect("admin/add_location.jsp");
		}
	}
}
