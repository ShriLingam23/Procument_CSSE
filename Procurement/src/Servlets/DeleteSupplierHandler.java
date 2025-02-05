package Servlets;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Service.DeleteSupplierService;

/**
 * Servlet implementation class DeleteSupplierHandler
 */
@WebServlet("/DeleteSupplierHandler")
public class DeleteSupplierHandler extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public DeleteSupplierHandler() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
				String supplier=request.getParameter("id");
				
				DeleteSupplierService fdsv=new DeleteSupplierService();
			
			if(fdsv.deleteSupplier(supplier))
				response.sendRedirect("SupplierView.jsp");
		}

}