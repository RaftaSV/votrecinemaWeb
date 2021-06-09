package com.proyect.unab.votrecinema.Controller;

import java.io.IOException;
import java.sql.Date;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.google.gson.Gson;
import com.proyect.unab.votrecinema.DAO.ClsAsientos;
import com.proyect.unab.votrecinema.DAO.ClsCarteleras;
import com.proyect.unab.votrecinema.DAO.ClsRoles;
import com.proyect.unab.votrecinema.Entidades.Asientos;
import com.proyect.unab.votrecinema.Entidades.Carteleras;

/**
 * Servlet implementation class ControllerAsientos
 */
public class ControllerAsientos extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ControllerAsientos() {
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
		int idcartelera ;
		try {
			
			idcartelera = Integer.parseInt(request.getParameter("Idcartelera").replace(" ", ""));
			
		} catch (Exception e) {
			idcartelera=0;
			
		}		
		ClsAsientos asientos = new ClsAsientos();
		Asientos asiento = new Asientos();
		asiento.setIdcartelera(idcartelera);
		Gson json = new Gson();
		response.setContentType("application/json");
		response.setCharacterEncoding("UTF-8");
		response.getWriter().append(json.toJson(asientos.CargarAsientos(asiento)));
		
		
		
	
	}

}
