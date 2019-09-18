package Servlets;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Entities.Supplier;
import Service.EditSupplierService;

/**
 * Servlet implementation class EditSupplierHandler
 */
@WebServlet("/EditSupplierHandler")
public class EditSupplierHandler extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public EditSupplierHandler() {
        super();
        // TODO Auto-generated constructor stub
    }


	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		String supplier=request.getParameter("supplier");
		String email=request.getParameter("email");
		String mobile=request.getParameter("mobile");
		String materialtype=request.getParameter("materialtype");
		
		Supplier suppliers=new Supplier();
		suppliers.setSupplier(supplier);
		suppliers.setEmail(email);
		suppliers.setMobile(mobile);
		suppliers.setMaterialtype(materialtype);
				
		EditSupplierService regsv=new EditSupplierService();
		if(regsv.updateSupplier(suppliers))
			response.sendRedirect("SupplierView.jsp");
	}

}
