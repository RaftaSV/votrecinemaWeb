package com.proyect.unab.votrecinema.Controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.google.gson.Gson;
import com.proyect.unab.votrecinema.DAO.ClsSalas;
import com.proyect.unab.votrecinema.Entidades.Salas;
/**
 * Servlet implementation class controllerSalas
 */
public class controllerSalas extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	/**
     * @see HttpServlet#HttpServlet()
     */
    public controllerSalas() {
        super();
     // TODO Auto-generated method stub
    }
	
    /**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
		String eliminar = "";
		int capacidad = 0;
		int NumeroSala=0;
		int id;
		try {
			id = Integer.parseInt(request.getParameter("id"));

		} catch (Exception e) {
			id = 0;
		}
		try {
			
			capacidad = Integer.parseInt(request.getParameter("capacidad"));
			NumeroSala = Integer.parseInt(request.getParameter("NumeroSala"));

		} catch (Exception e) {
		
		}
		try {

			eliminar = request.getParameter("Eliminar");

		} catch (Exception e) {
			
		}


		if (eliminar.equals("btne")) {
			
			Salas sala = new Salas();
			sala.setIdSala(id);
			ClsSalas cls = new ClsSalas();
			cls.EliminarSala(sala);
			response.sendRedirect("Salas.jsp");
			System.out.println(id);
			

		} else {
			if ( capacidad==0 ||NumeroSala==0 ) {
				System.out.println("No se puede registrar con campos vacios");		
			}else if (id > 0) {
				System.out.println(id);
				Salas sala = new Salas();
				ClsSalas cls = new ClsSalas();
				sala.setIdSala(id);
				sala.setCapacidad(capacidad);
				sala.setNumero_Sala(NumeroSala);
				cls.ActualizarSala(sala);
				response.sendRedirect("Salas.jsp");

			} else {
				Salas sala = new Salas();
				ClsSalas cls = new ClsSalas();
				sala.setCapacidad(capacidad);
				sala.setNumero_Sala(NumeroSala);
				cls.GuardarSala(sala);
				response.sendRedirect("Salas.jsp");

			}
		}

	}
	

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		ClsSalas sala = new ClsSalas();
		Gson json = new Gson();
		response.setContentType("application/json");
		response.setCharacterEncoding("UTF-8");
		response.getWriter().append(json.toJson(sala.MostrarSalas()));
		

	}

	
}
