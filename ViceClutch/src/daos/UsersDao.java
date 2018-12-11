package daos;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import com.mysql.jdbc.Statement;

import pojos.Users;
import utilities.ConnectionPool;

public class UsersDao {
	
	public static void main(String args[]) {
		Users u = new Users();
		u.setEmail("loveshdongre@outlook.com");
		u.setBranch("CSE");
		u.setYear("2");
		u.setMobile("7869423256");
		u.setCollege("UIT RGPV");
		new UsersDao().register(u);
	}

	public int create(Users u) {
		int id = 0;
		ConnectionPool pool = ConnectionPool.getInstance();
		pool.initialize();
		Connection conn = pool.getConnection();
		
		try {
			String sql = "insert into users" + " (" + " name, email, password, mobile, branch, year) "
					+ "values(?,?,?,?,?,?)";
			PreparedStatement ps = conn.prepareStatement(sql, Statement.RETURN_GENERATED_KEYS);
			ps.setString(1, u.getName().toLowerCase());
			ps.setString(2, u.getEmail().toLowerCase());
			ps.setString(3, u.getPassword());
			ps.setString(4, u.getMobile());
			ps.setString(5, u.getBranch());
			ps.setString(6, u.getYear());
			
			int x = ps.executeUpdate();
			if(x == 0) {
				return 0;
			}
			ResultSet generatedKeys = ps.getGeneratedKeys();
			if(generatedKeys.next()) {
				id = generatedKeys.getInt(1);
			}
			
		}
		catch(SQLException sq) {
			sq.printStackTrace();
		}
		finally {
			pool.putConnection(conn);
		}
		
		return id;
	}
	
	public int checkUser(String email, String password) {
		int id = 0;
		ConnectionPool pool = ConnectionPool.getInstance();
		pool.initialize();
		Connection conn = pool.getConnection();
		
		try {
			String sql = "Select * from users where email = ? && password = ?;";
			PreparedStatement ps = conn.prepareStatement(sql);
			ps.setString(1, email.toLowerCase());
			ps.setString(2, password);
			ResultSet rs = ps.executeQuery();
			if(rs.next()) {
				id = Integer.parseInt(rs.getString("userid")); 
			}
		}
		catch(SQLException sq) {
			sq.printStackTrace();
		}
		finally {
			pool.putConnection(conn);
		}
		return id;
	}
	public int userGName(String gEmail, String gName) {
		int id = 0;
		ConnectionPool pool = ConnectionPool.getInstance();
		pool.initialize();
		Connection conn = pool.getConnection();
		
		try {
			String sql = "Select * from users where email = ?;";
			PreparedStatement ps = conn.prepareStatement(sql);
			ps.setString(1, gEmail.toLowerCase());
			ResultSet rs = ps.executeQuery();
			if(rs.next()) {
				id = Integer.parseInt(rs.getString("userid")); 
			}
			else {
				if(!gEmail.equals("") && !gName.equals("")) {
					Users u = new Users();
					u.setEmail(gEmail);
					u.setName(gName);
					UsersDao ud = new UsersDao();
					id = ud.create(u);					
				}
			}
		}
		catch(SQLException sq) {
			sq.printStackTrace();
		}
		finally {
			pool.putConnection(conn);
		}
		return id;
	}
	
	public Users findFromEmail(String email) {
		Users u = new Users();
		ConnectionPool pool = ConnectionPool.getInstance();
		pool.initialize();
		Connection conn = pool.getConnection();
		
		try {
			String sql = "Select * from users where email = ?;";
			PreparedStatement ps = conn.prepareStatement(sql);
			ps.setString(1, email.toLowerCase());
			ResultSet rs = ps.executeQuery();
			if(rs.next()) {
				u.setName(rs.getString("name"));
				u.setEmail(email);
				u.setUserId(rs.getInt("userid"));
				u.setPassword(rs.getString("password"));
				u.setBranch(rs.getString("branch"));
				u.setYear(rs.getString("year"));
			}
		}
		catch(SQLException sq) {
			sq.printStackTrace();
		}
		finally {
			pool.putConnection(conn);
		}
		return u;
	}
	
	public void register(Users u) {
		ConnectionPool pool = ConnectionPool.getInstance();
		pool.initialize();
		Connection conn = pool.getConnection();
		try {
			String sql = "update users set mobile=?, year=?, college=?, branch=? where email=?;";
			PreparedStatement ps = conn.prepareStatement(sql);

			ps.setString(1, u.getMobile());
			ps.setString(2, u.getYear());
			ps.setString(3, u.getCollege());
			ps.setString(4, u.getBranch());
			ps.setString(5, u.getEmail());
			
			ps.executeUpdate();
			
		} catch (SQLException sq) {
			sq.printStackTrace();
			
		} finally {
			pool.putConnection(conn);
		}
		System.out.println("Record SuccessFully Updated");
	}
}
