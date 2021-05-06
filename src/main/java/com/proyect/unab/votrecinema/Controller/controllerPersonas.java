package com.proyect.unab.votrecinema.Controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.google.gson.Gson;
import com.proyect.unab.votrecinema.DAO.ClsPersona;
import com.proyect.unab.votrecinema.DAO.ClsProveedores;
import com.proyect.unab.votrecinema.Entidades.Personas;
import com.proyect.unab.votrecinema.Entidades.Proveedor;

/**
 * Servlet implementation class controllerPersonas
 */
public class controllerPersonas extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public controllerPersonas() {
        super();
        
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
		
		String eliminar = "";
		String nombre = null;
		String apellido = null;
		String dui = null;
		String id= "";
		try {
			 id =(request.getParameter("id"));	
		} catch (Exception e) {
			id="0";
		}
		
		
	
		try {
			
			nombre = request.getParameter("nombre");
			apellido = request.getParameter("apellido");
			dui = request.getParameter("dui");
		} catch (Exception e) {
		}
		
		try {

			eliminar = request.getParameter("Eliminar");

		} catch (Exception e) {
			
		}
		int idper = Integer.parseInt(id.replace(" ", ""));
if (eliminar.equals("btne")) {
			
			Personas per = new Personas();
			per.setIdPersona(idper);
			ClsPersona cls = new ClsPersona();
			cls.EliminarPersonas(per);
			response.sendRedirect("personas.jsp");

		} else {
			
			if (idper > 0) {
				Personas per = new Personas();
				per.setIdPersona(idper);
				per.setNombres(nombre);
				per.setApellidos(apellido);
				per.setDUI(dui);
				ClsPersona cls = new ClsPersona();
				cls.ActualizarPersona(per);

			} else {
				Personas per = new Personas();
				per.setNombres(nombre);
				per.setApellidos(apellido);
				per.setDUI(dui);
				ClsPersona cls = new ClsPersona();
				cls.AgregarPersona(per); 
				
			}
		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//doGet(request, response);
		ClsPersona persona = new ClsPersona();
		Gson json = new Gson();
		response.setContentType("application/json");
		response.setCharacterEncoding("UTF-8");
		response.getWriter().append(json.toJson(persona.ListaPersonas()));
	}

}
