package com.proyect.unab.votrecinema.Controller;

import java.io.IOException;
import java.sql.Time;

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
			Id = Integer.parseInt(request.getParameter("id").replace(" ", ""));

		} catch (Exception e) {
			Id = 0;
		}
	
		try {
			horaInicio = request.getParameter("hora");
			
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

		} else {
			System.out.println(Id);
			if (Id>0) {
				Horarios hora = new Horarios();
				hora.setIdHorario(Id);
				hora.setHoraInicio(Time.valueOf(horaInicio + ":00"));
				ClsHorarios cls = new ClsHorarios();
				cls.ActualizarHorario(hora);
				
			}else {
				Horarios hora = new Horarios();
				hora.setHoraInicio(Time.valueOf(horaInicio + ":00"));
				ClsHorarios cls = new ClsHorarios();
			cls.GuardarHorarios(hora);				
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
		ClsHorarios hora = new ClsHorarios();
		Gson json = new Gson();
		response.setContentType("application/json");
		response.setCharacterEncoding("UTF-8");
		response.getWriter().append(json.toJson(hora.cargarHorarios()));
		

	}

}
