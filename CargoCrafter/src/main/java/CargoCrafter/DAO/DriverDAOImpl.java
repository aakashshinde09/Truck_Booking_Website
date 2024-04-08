package CargoCrafter.DAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import CargoCrafter.entity.Driver;

public class DriverDAOImpl {
	
	private Connection conn;

	public DriverDAOImpl(Connection conn) {
		super();
		this.conn = conn;
	}


	public int addDriver(Driver driver) throws SQLException {
		String sql = "insert into drivers (driverName,phNumber,demail,age,daddress,dlNumber,password) values(?,?,?,?,?,?,?)";
		PreparedStatement ps = conn.prepareStatement(sql);
		
		ps.setString(1, driver.getDriverName());
		ps.setLong(2, driver.getPhNumber());
		ps.setString(3, driver.getDemail());
		ps.setInt(4, driver.getAge());
		ps.setString(5, driver.getDaddress());
		ps.setString(6, driver.getDlNumber());
		ps.setString(7, driver.getPassword());
		
		int executeUpdate = ps.executeUpdate();
		
		return executeUpdate;
		
	}
	
	public List<Driver> viewAllDrivers() throws SQLException {
		String sql = "select * from drivers";
		PreparedStatement ps = conn.prepareStatement(sql);
		ResultSet res = ps.executeQuery();
		List<Driver> list = new ArrayList<Driver>();
		while(res.next()) {
			Driver d = new Driver();
			d.setDriverId(res.getInt("driverId"));
			d.setDriverName(res.getString("driverName"));
			d.setPhNumber(res.getLong("phNumber"));
			d.setDemail(res.getString("demail"));
			d.setAge(res.getInt("age"));
			d.setDaddress(res.getString("daddress"));
			d.setDlNumber(res.getString("dlNumber"));
			d.setPassword(res.getString("password"));
			list.add(d);
		}
		
		return list;
	}

	
	public Driver viewDriverbyId(int driverId) throws SQLException {
		String sql = "select * from drivers where driverId=?";
		PreparedStatement ps = conn.prepareStatement(sql);
		ps.setInt(1, driverId);
		ResultSet res = ps.executeQuery();
			Driver d = new Driver();
			while(res.next()) {
				d.setDriverId(res.getInt("driverId"));
				d.setDriverName(res.getString("driverName"));
				d.setPhNumber(res.getLong("phNumber"));
				d.setDemail(res.getString("demail"));
				d.setAge(res.getInt("age"));
				d.setDaddress(res.getString("daddress"));
				d.setDlNumber(res.getString("dlNumber"));
				d.setPassword(res.getString("password"));
			}
			return d;
	}


	public int updateDriver(Driver driver) throws SQLException {
		String sql = "update drivers set driverName=?,phNumber=?,demail=?,age=?,daddress=?,dlNumber=?,password=? where driverId=?";
		PreparedStatement ps = conn.prepareStatement(sql);
//		ps.setInt(1, driver.getDriverId());
		ps.setString(1, driver.getDriverName());
		ps.setLong(2,driver.getPhNumber());
		ps.setString(3, driver.getDemail());
		ps.setInt(4, driver.getAge());
		ps.setString(5, driver.getDaddress());
		ps.setString(6, driver.getDlNumber());
		ps.setString(7, driver.getPassword());
		ps.setInt(8, driver.getDriverId());
		int res = ps.executeUpdate();
		return res;
	}

	
	public int deleteDriver(int driverId) throws SQLException {
		String sql = "delete from drivers where driverId=?";
		PreparedStatement ps = conn.prepareStatement(sql);
		ps.setInt(1, driverId);
		int res = ps.executeUpdate();
		return res;
	}
	
	//when we know which exception is going to come then use throws keyword.
	// when we don't know which exception is going to come then use try catch.
	
	public Driver loginDriver(String demail, String password) throws SQLException {
		Driver d = null;
		
		String sql = "select * from drivers where demail=? and password=?";
		PreparedStatement ps = conn.prepareStatement(sql);
		ps.setString(1, demail);
		ps.setString(2, password);
		ResultSet rs = ps.executeQuery();
		
		while(rs.next()) {
			d = new Driver();
			d.setDriverId(rs.getInt("driverId"));
			d.setDriverName(rs.getString("driverName"));
			d.setPhNumber(rs.getLong("phNumber"));
			d.setDemail(rs.getString("demail"));
			d.setAge(rs.getInt("age"));
			d.setDaddress(rs.getString("daddress"));
			d.setDlNumber(rs.getString("dlNumber"));
			d.setPassword(rs.getString("password"));
			
		}
		return d;
	}
}
