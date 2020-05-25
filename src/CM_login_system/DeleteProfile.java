package CM_login_system;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class DeleteProfile
 */
@WebServlet("/DeleteProfile")
public class DeleteProfile extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public DeleteProfile() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
		
		
CustomerDAO CD = new CustomerDAOImpl();
		
		HttpSession session = request.getSession(false);
		
		String submitType = request.getParameter("submit");
		String username = (String)session.getAttribute("username");
		String password = (String)session.getAttribute("password");
		
		Customer c = CD.getCustomer(username, password);
		
		if(submitType.equals("CONFIRM")) {
			
			CD.deleteCustomer(c);
			System.out.println("Profile Deleted !");
			session.invalidate();
			request.getRequestDispatcher("deleted.jsp").forward(request, response);
			
		}else {
			
			System.out.println("Error in Profile Deletion !");
			
		}
		
		
	}

}
