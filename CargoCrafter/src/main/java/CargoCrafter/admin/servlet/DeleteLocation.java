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

@WebServlet("/delete_location")
public class DeleteLocation extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO Auto-generated method stub
//		super.doGet(req, resp);
		
		int id = Integer.parseInt(req.getParameter("id"));
		
		LocationDAOImpl ld = new LocationDAOImpl(DBConnect.getConn());
		
		HttpSession session = req.getSession();
		
		try {
			int deleteLocation = ld.deleteLocation(id);
			
			if(deleteLocation != 0) {
				session.setAttribute("succmsg", "Location Deleted..!!");
				resp.sendRedirect("/CargoCrafter/admin/location_dtls.jsp");
			}
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
	}
}
