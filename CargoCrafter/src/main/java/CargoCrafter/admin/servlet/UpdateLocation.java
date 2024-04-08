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

@WebServlet("/update_location")
public class UpdateLocation extends HttpServlet{

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO Auto-generated method stub
//		super.doPost(req, resp);
		
		
		int id = Integer.parseInt(req.getParameter("id"));
		String source = req.getParameter("source");
		String destination = req.getParameter("destination");
		int totalkm = Integer.parseInt(req.getParameter("total_km"));
		int price = Integer.parseInt(req.getParameter("price_per_km"));
		
		Location l = new Location();
		
		l.setId(id);
		l.setSource(source);
		l.setDestination(destination);
		l.setTotal_km(totalkm);
		l.setPrice_per_km(price);
		
		HttpSession session = req.getSession();
		LocationDAOImpl ld = new LocationDAOImpl(DBConnect.getConn());
		
		try {
			int updateLocation = ld.updateLocation(l);
			
			if(updateLocation != 0) {
				session.setAttribute("succmsg", "Location Updated..!!");
				resp.sendRedirect("/CargoCrafter/admin/location_dtls.jsp");
			}
			else {
				session.setAttribute("error", "Something wrong on server");
				resp.sendRedirect("/CargoCrafter/admin/location_dtls.jsp");
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		
	}
}
