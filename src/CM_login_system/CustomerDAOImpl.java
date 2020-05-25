package CM_login_system;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class CustomerDAOImpl implements CustomerDAO {

	static Connection con;
	static PreparedStatement ps;
	
	@Override
	public int insertCustomer(Customer c) {
		// TODO Auto-generated method stub
	
	int status = 0;
	try {
		
		con = MyConnectionProvider.getCon();
		ps = con.prepareStatement("insert into customer values(?,?,?,?)");
		ps.setString(1, c.getUsername());
		ps.setString(2, c.getPassword());
		ps.setString(3, c.getName());
		ps.setString(4, c.getAvatar());
		status = ps.executeUpdate();
		/*Statement s = con.createStatement();
		String un = c.getUsername();
		String pas = c.getPassword();
		String n = c.getName();
		String SQL = "insert into customer values('" + un + "','" + pas + "','" + n + "')";
		status = s.executeUpdate(SQL);*/
		
		con.close();
		
	}
	catch(Exception e) {
		
		System.out.println(e);
		
	}
		
		return status;
	}
	
	
	@Override
	public int modifyCustomer(Customer c) {
		// TODO Auto-generated method stub
	
	int status = 0;
	try {
		
		con = MyConnectionProvider.getCon();
		ps = con.prepareStatement("update customer set avatar=? where username=?");
		ps.setString(1, c.getAvatar());
		ps.setString(2, c.getUsername());

		status = ps.executeUpdate();
		
		con.close();
		
	}
	catch(Exception e) {
		
		System.out.println(e);
		
	}
		
		return status;
	}
	

	@Override
	public Customer getCustomer(String username, String pass) {
		// TODO Auto-generated method stub
		
		Customer c = new Customer();
		
		try {
			
			con = MyConnectionProvider.getCon();
			ps = con.prepareStatement("select * from customer where username=? and password=?");
			ps.setString(1, username);
			ps.setString(2, pass);
			ResultSet rs = ps.executeQuery();
			while(rs.next()) {
				c.setUsername(rs.getString(1));
				c.setPassword(rs.getString(2));
				c.setName(rs.getString(3));
				c.setAavatar(rs.getString(4));
			}
			
		}
		catch(Exception e) {
			
			System.out.println(e);
			
		}
		
		return c;
	}
	
	
	@Override
	public int deleteCustomer(Customer c) {
		// TODO Auto-generated method stub
	
	int status = 0;
	try {
		
		con = MyConnectionProvider.getCon();
		ps = con.prepareStatement("delete from customer where username=?");
		System.out.println("Deleted from database");
		ps.setString(1, c.getUsername());

		status = ps.executeUpdate();
		
		con.close();
		
	}
	catch(Exception e) {
		
		System.out.println(e);
		
	}
		
		return status;
	}

}
