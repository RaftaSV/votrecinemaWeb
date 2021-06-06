package com.proyect.unab.votrecinema.Controller;

import java.io.IOException;
import java.sql.Date;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.google.gson.Gson;
import com.proyect.unab.votrecinema.DAO.ClsCarteleras;
import com.proyect.unab.votrecinema.Entidades.Carteleras;

/**
 * Servlet implementation class ControllerCarteleras
 */
public class ControllerCarteleras extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public ControllerCarteleras() {
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
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		// doGet(request, response);

	
		Date fecha = null;
		
		try {
			fecha = Date.valueOf(request.getParameter("fecha"));
		} catch (Exception e) {
			// TODO: handle exception
		}

		if (fecha!=null) {
			ClsCarteleras cartelera = new ClsCarteleras();
			Gson json = new Gson();
			Carteleras cart = new Carteleras();
			cart.setFecha(fecha);
			response.setCharacterEncoding("UTF8");
			response.getWriter().append(json.toJson(cartelera.BuscarDatos(cart)));

		} else {
			ClsCarteleras cartelera = new ClsCarteleras();
			Gson json = new Gson();
			response.setCharacterEncoding("UTF8");
			response.getWriter().append(json.toJson(cartelera.CargarDatos()));
		}

	}

}
