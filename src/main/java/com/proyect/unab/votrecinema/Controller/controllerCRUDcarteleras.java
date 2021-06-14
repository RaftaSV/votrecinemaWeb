package com.proyect.unab.votrecinema.Controller;

import java.io.IOException;
import java.sql.Date;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.proyect.unab.votrecinema.DAO.ClsCarteleras;
import com.proyect.unab.votrecinema.Entidades.Carteleras;


/**
 * Servlet implementation class controllerCRUDcarteleras
 */
public class controllerCRUDcarteleras extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public controllerCRUDcarteleras() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//response.getWriter().append("Served at: ").append(request.getContextPath());
		int id =0;
		
		
		try {
			 id = Integer.parseInt(request.getParameter("id").replace(" ", ""));
			
		} catch (Exception e) {
			
		}
		
		
			Carteleras carteleras = new Carteleras();
			carteleras.setIdcartelera(id);
			ClsCarteleras cls = new ClsCarteleras();
			cls.EliminarCartelera(carteleras);
			response.sendRedirect("Carteleras.jsp");	
		
		
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//doGet(request, response);
		int id =0;
		int idpelicula =0;
		int idhorario=0;
		int idsala=0;
		Date fecha= null;
		
		try {
			 id = Integer.parseInt(request.getParameter("id").replace(" ", ""));
			
		} catch (Exception e) {
			
			
		}
		
		try {
			 idpelicula = Integer.parseInt(request.getParameter("idpelicula").replace(" ", ""));
			 idhorario = Integer.parseInt(request.getParameter("idHorario").replace(" ", ""));
             idsala = Integer.parseInt(request.getParameter("sala").replace(" ", ""));
             fecha = Date.valueOf(request.getParameter("fecha"));

		} catch (Exception e) {
			// TODO: handle exception
		}
		if(idpelicula== 0 || idhorario==0 || idsala==0 || fecha==null) {
			System.out.println("No se pueda guardar la cartelera");
		}else if(id==0) {
			
			Carteleras carteleras = new Carteleras();
			carteleras.setIdPelicula(idpelicula);
			carteleras.setId_Horario(idhorario);
			carteleras.setId_Sala(idsala);
			carteleras.setFecha(fecha);
			ClsCarteleras cls = new ClsCarteleras();
			cls.InsertarCartelera(carteleras);
		}else {
		
			Carteleras carteleras = new Carteleras();
			carteleras.setIdcartelera(id);
			carteleras.setIdPelicula(idpelicula);
			carteleras.setId_Horario(idhorario);
			carteleras.setId_Sala(idsala);
			carteleras.setFecha(fecha);
			ClsCarteleras cls = new ClsCarteleras();
			cls.ActualizarCartelera(carteleras);
		}
	}

}
