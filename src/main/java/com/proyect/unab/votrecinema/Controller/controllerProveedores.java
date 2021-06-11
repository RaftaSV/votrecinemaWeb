package com.proyect.unab.votrecinema.Controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.google.gson.Gson;
import com.proyect.unab.votrecinema.DAO.ClsProveedores;
import com.proyect.unab.votrecinema.Entidades.Proveedor;

/**
 * Servlet implementation class controllerProveedores
 */
public class controllerProveedores extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public controllerProveedores() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
		String eliminar = "";
		String nombre = null;
		String telefono = null;
		String direccion = null;
		int id;
		
		try {
			id = Integer.parseInt(request.getParameter("id").replace(" " , ""));

		} catch (Exception e) {
			id = 0;
		}
		
		try {

			nombre = request.getParameter("nombre");
			telefono = request.getParameter("telefono").replace(" ", "");
			direccion = request.getParameter("direccion");
			
		} catch (Exception e) {
		
		}
		try {

			eliminar = request.getParameter("Eliminar");

		} catch (Exception e) {
			
		}

		if (eliminar.equals("btne")) {
			
			Proveedor pro = new Proveedor();
			pro.setIdProveedor(id);
			ClsProveedores cls = new ClsProveedores();
			cls.EliminarProveedor(pro);
			response.sendRedirect("Proveedores.jsp");

		} else{
			if ( nombre=="null" ||direccion=="null" || telefono=="null") {
				System.out.println("No se puede registrar con campos vacios");		
		}else {
			if (id > 0) {
				System.out.println(id);
				Proveedor pro = new Proveedor();
				pro.setIdProveedor(id);
				pro.setNombre(nombre);
				pro.setDireccion(direccion);
				pro.setTelefono(telefono);
				ClsProveedores cls = new ClsProveedores();
				cls.ActualizarProveedor(pro);

			} else {
				Proveedor pro = new Proveedor();
				pro.setNombre(nombre);
				pro.setDireccion(direccion);
				pro.setTelefono(telefono);
				ClsProveedores cls = new ClsProveedores();
				cls.GuardarProveedor(pro);

			}	
		}
	}
}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		// doGet(request, response);
		ClsProveedores proveedores = new ClsProveedores();
		Gson json = new Gson();
		response.setContentType("application/json");
		response.setCharacterEncoding("UTF-8");
		response.getWriter().append(json.toJson(proveedores.ListaProveedores()));

	}

}
