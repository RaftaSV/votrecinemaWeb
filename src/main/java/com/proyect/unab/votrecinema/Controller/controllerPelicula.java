package com.proyect.unab.votrecinema.Controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.google.gson.Gson;
import com.proyect.unab.votrecinema.DAO.ClsPeliculas;
import com.proyect.unab.votrecinema.DAO.ClsProveedores;
import com.proyect.unab.votrecinema.Entidades.Peliculas;
import com.proyect.unab.votrecinema.Entidades.Proveedor;

/**
 * Servlet implementation class controllerPelicula
 */
public class controllerPelicula extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public controllerPelicula() {
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
		
		int id =0;
		
		try {
			id = Integer.parseInt(request.getParameter("id").replace(" " , ""));

		} catch (Exception e) {
			id = 0;
		}
		try {

			eliminar = request.getParameter("Eliminar");

		} catch (Exception e) {
			
		}
		System.out.println(id);
  if (eliminar.equals("btne")) {
			
			Peliculas pelicula = new Peliculas();
			pelicula.setIdPelicula(id);
			ClsPeliculas cls = new ClsPeliculas();
			cls.eliminar(pelicula);
			response.sendRedirect("Peliculas.jsp");

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
		ClsPeliculas pelicula = new ClsPeliculas();
		Gson json = new Gson();
		response.setCharacterEncoding("UTF8");
		
		response.getWriter().append(json.toJson(pelicula.ListaPeliculas()));

	}

}
