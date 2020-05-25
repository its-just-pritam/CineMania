package CM_login_system;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class ProfileSettings
 */
@WebServlet("/ProfileSettings")
public class ProfileSettings extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ProfileSettings() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		
		CustomerDAO CD = new CustomerDAOImpl();
		
		HttpSession session = request.getSession(false);
		
		String avatarType = request.getParameter("my_avatar");
		String submitType = request.getParameter("submit");
		String username = (String)session.getAttribute("username");
		String password = (String)session.getAttribute("password");
		
		Customer c = CD.getCustomer(username, password);
		
		
		
		if(submitType.equals("SAVE")) {
			
			c.setAavatar(avatarType);
			CD.modifyCustomer(c);
			System.out.println(" Avatar changed !");
			request.setAttribute("avatar", avatarType);
			request.getRequestDispatcher("./LogoutServlet").forward(request, response);
			
		}else {
			
			System.out.println("Error in Avatar update !");
			
		}
		
		
	}

}
