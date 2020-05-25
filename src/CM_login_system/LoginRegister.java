package CM_login_system;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
/**
 * Servlet implementation class LoginRegister
 */
@WebServlet("/loginRegister")
public class LoginRegister extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public LoginRegister() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		System.out.println("Connection to webpage successfull !");
		
		CustomerDAO cd = new CustomerDAOImpl();
		
		String userName = request.getParameter("username");
		String password = request.getParameter("password");
		String submitType = request.getParameter("submit");
		
		Customer c = cd.getCustomer(userName, password);
		
		if(submitType.equals("LOG IN") && c!=null && c.getName()!=null){
			
			request.setAttribute("name", c.getName());
			request.setAttribute("username", c.getUsername());
			
			HttpSession session = request.getSession();
			session.setAttribute("username", c.getUsername());
			session.setAttribute("name", c.getName());
			session.setAttribute("password", c.getPassword());
			session.setAttribute("avatar", c.getAvatar());
			
			request.getRequestDispatcher("./ProfileServlet").forward(request, response);
			
		}else if(submitType.equals("SUBMIT")){
			
			String Name = request.getParameter("name");
			String RePassword = request.getParameter("re_password");
			
			if(password.equals(RePassword))
			{
				c.setUsername(userName);
				c.setPassword(password);
				c.setName(Name);
				c.setAavatar("images/Avatars_red.png");
				cd.insertCustomer(c);
				request.setAttribute("successMessage", Name + " : Registration Successful !!! Please LOG IN to continue.");
				request.getRequestDispatcher("reg_success.jsp").forward(request, response);
				
			}else {
				
				request.setAttribute("errorMessage", Name + " : Please retry, mismatch of passwords !!!");
				request.getRequestDispatcher("profile.jsp").forward(request, response);
				
			}
			
		}else {
			
			request.setAttribute("message", userName + " : Profile doesn't exists, click on REGISTER !!!");
			request.getRequestDispatcher("profile.jsp").forward(request, response);
			
		}
		
	}

}
