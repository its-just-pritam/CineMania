package CM_login_system;

public interface CustomerDAO {
	
	public int insertCustomer(Customer c);
	public int modifyCustomer(Customer c);
	public Customer getCustomer(String username, String pass);
	public int deleteCustomer(Customer c);

}
