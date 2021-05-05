package com.proyect.unab.votrecinema.Controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.google.gson.Gson;
import com.proyect.unab.votrecinema.DAO.ClsProductos;
import com.proyect.unab.votrecinema.Entidades.*;

/**
 * Servlet implementation class controllerProductos
 */
public class controllerProductos extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public controllerProductos() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
		String eliminar = "";
		int idProducto;
		try {
			idProducto = Integer.parseInt(request.getParameter("id"));

		} catch (Exception e) {
			idProducto = 0;
		}
		try {

			eliminar = request.getParameter("Eliminar");

		} catch (Exception e) {
			
		}
if (eliminar.equals("btne")) {
			
			Producto pro = new Producto();
			pro.setIdProducto(idProducto);
			ClsProductos cls = new ClsProductos();
			cls.EliminarProducto(pro);
			response.sendRedirect("Productos.jsp");

		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//doGet(request, response);
		ClsProductos productos = new ClsProductos();
		Gson json = new Gson();
		response.getWriter().append(json.toJson(productos.MostrarProductos()));
	}

}
