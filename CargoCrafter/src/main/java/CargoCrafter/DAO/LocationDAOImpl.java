package CargoCrafter.DAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import CargoCrafter.entity.Location;

public class LocationDAOImpl {

	private Connection conn;

	public LocationDAOImpl(Connection conn) {
		super();
		this.conn = conn;
	}
	
	public boolean saveLocation(Location location) {
		boolean f = false;
		try {
			String sql = "insert into locations (source, destination,total_km,price_per_km) values(?,?,?,?)";
			PreparedStatement ps = conn.prepareStatement(sql);
			
			ps.setString(1, location.getSource());
			ps.setString(2, location.getDestination());
			ps.setInt(3, location.getTotal_km());
			ps.setInt(4, location.getPrice_per_km());
			
			int i = ps.executeUpdate();
			
			if(i == 1) {
				f = true;
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return f;
	}
	
	public List<Location> getallLocations(){
		Location l = null;
		List<Location> list = new ArrayList<Location>();
		
		try {
			String sql = "select * from locations";
			PreparedStatement ps = conn.prepareStatement(sql);
			
			ResultSet rs = ps.executeQuery();
			
			while(rs.next()) {
				l = new Location();	
				l.setId(rs.getInt(1));
				l.setSource(rs.getString(2));
				l.setDestination(rs.getString(3));
				l.setTotal_km(rs.getInt(4));
				l.setPrice_per_km(rs.getInt(5));
				list.add(l);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return list;
	}
	
	public Location getLocationsById(int id){
		Location l = null;
		
		try {
			String sql = "select * from locations where id=?";
			PreparedStatement ps = conn.prepareStatement(sql);
			ps.setInt(1, id);
			
			ResultSet rs = ps.executeQuery();
			
			while(rs.next()) {
				l = new Location();	
				l.setId(rs.getInt(1));
				l.setSource(rs.getString(2));
				l.setDestination(rs.getString(3));
				l.setTotal_km(rs.getInt(4));
				l.setPrice_per_km(rs.getInt(5));
				
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return l;
	}
}
