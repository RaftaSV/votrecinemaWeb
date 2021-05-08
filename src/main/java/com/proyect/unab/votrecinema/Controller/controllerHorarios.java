package com.proyect.unab.votrecinema.Controller;

import java.io.IOException;


import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.google.gson.Gson;
import com.proyect.unab.votrecinema.DAO.ClsHorarios;
import com.proyect.unab.votrecinema.Entidades.Horarios;

/**
 * Servlet implementation class controllerHorarios
 */
public class controllerHorarios extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public controllerHorarios() {
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
		String horaInicio = null;
		int Id;
		
		try {
			Id = Integer.parseInt(request.getParameter("id"));

		} catch (Exception e) {
			Id = 0;
		}
		
		try {
			horaInicio = request.getParameter("horaInicio");
			
		} catch (Exception e) {
			Id = 0;
		}
		try {

			eliminar = request.getParameter("Eliminar");

		} catch (Exception e) {
			
		}
		
		if (eliminar.equals("btne")) {
			
			Horarios hor = new Horarios();
			hor.setIdHorario(Id);
			ClsHorarios cls = new ClsHorarios();
			cls.EliminarHorario(hor);
			response.sendRedirect("Horarios.jsp");

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
		ClsHorarios hora = new ClsHorarios();
		
		//Gson se utiliza para convertir objetos Java
		Gson json = new Gson();
		
		//response es un objeto que contendrá la información que enviaremos como respuesta al navegador
		response.setContentType("application/json");
		
		//UTF-8 cadena de codificación
		response.setCharacterEncoding("UTF-8");
		
		//append cadena especificada a una secuencia de caracteres
		response.getWriter().append(json.toJson(hora.cargarHorarios()));
		

	}

}
