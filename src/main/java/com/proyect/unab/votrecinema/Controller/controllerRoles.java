package com.proyect.unab.votrecinema.Controller;

import java.io.IOException;


import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import com.google.gson.Gson;
import com.proyect.unab.votrecinema.DAO.ClsRoles;
import com.proyect.unab.votrecinema.Entidades.Roles;

/**
 * Servlet implementation class controllerRoles
 */
public class controllerRoles extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public controllerRoles() {
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
		int idRol;
		int idPersona;
		String usuario="";
		String password="";
		int tiporol;
		
		try {
			idRol = Integer.parseInt(request.getParameter("id").replace(" ",""));

		} catch (Exception e) {
			idRol = 0;
		}
		try {

			eliminar = request.getParameter("Eliminar");

		} catch (Exception e) {
			
		}
		try {
	
			idPersona = Integer.parseInt(request.getParameter("idpersona"));
			usuario  = request.getParameter("usuario");
			password  = request.getParameter("password");
			tiporol = Integer.parseInt(request.getParameter("tiporol"));
			
		} catch (Exception e) {
			usuario="";
			password="";
			idPersona=0;
			tiporol=0;
			
		}
		
		
if (eliminar.equals("btne")) {
			
			Roles rol = new Roles();
			rol.setIdRol(idRol);
			ClsRoles cls = new ClsRoles();
			cls.EliminarRol(rol);
			response.sendRedirect("rol.jsp");

		}else {
			if (idRol==0 || usuario=="null" || usuario=="" || usuario.isEmpty() ||  usuario.isEmpty() || password=="null" || password=="" || password.isEmpty() || password.length()==0 || idPersona==0 || tiporol==0) {
				System.out.println("no se puede registrar con campos vacios");		
						}else {
							if(idRol>0) {
								Roles rol = new Roles();
								rol.setIdRol(idRol);
								rol.setUsuario(usuario);
								rol.setPasword(password);
								rol.setId_Persona(idPersona);
								rol.setTipoRol(tiporol);
								ClsRoles cls = new ClsRoles();
						    	cls.ActualizarRol(rol);
								
							}else {
								
								Roles rol = new Roles();
								rol.setUsuario(usuario);
								rol.setPasword(password);
								rol.setId_Persona(idPersona);
								rol.setTipoRol(tiporol);
								ClsRoles cls = new ClsRoles();
								cls.AgregarRol(rol);
					
					}				
				}
		}
	
		
}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//doGet(request, response);
		ClsRoles rol = new ClsRoles();
		Gson json = new Gson(); 
		
		response.getWriter().append(json.toJson(rol.MostrarRoles()));
		
	}

}
