package com.proyect.unab.votrecinema.Controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.google.gson.Gson;
import com.proyect.unab.votrecinema.DAO.ClsPrecios;
import com.proyect.unab.votrecinema.Entidades.Peliculas;
import com.proyect.unab.votrecinema.Entidades.Precios;

/**
 * Servlet implementation class ControllerPrecios
 */
public class ControllerPrecios extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ControllerPrecios() {
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
		//doGet(request, response);
		try {
			int idpelicula = Integer.valueOf(request.getParameter("idPelicula").replace(" ", ""));
			Precios precio = new Precios();
			precio.setIdPelicula(idpelicula);
			ClsPrecios precios = new ClsPrecios();
			Gson json = new Gson();
			response.getWriter().append(json.toJson(precios.CargarLista(precio)));
			
		} catch (Exception e) {
			// TODO: handle exception
		} 
	}

}
