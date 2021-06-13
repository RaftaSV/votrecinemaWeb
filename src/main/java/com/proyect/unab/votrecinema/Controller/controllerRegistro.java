package com.proyect.unab.votrecinema.Controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.proyect.unab.votrecinema.DAO.ClsRoles;
import com.proyect.unab.votrecinema.Entidades.Roles;

/**
 * Servlet implementation class controllerRegistro
 */
public class controllerRegistro extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public controllerRegistro() {
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
		
		String nombres ="";
		String apellidos ="";
		String Dui ="";
		String usuario ="";
		String password="";
		
		try {

			 nombres = request.getParameter("Nombres");
			 apellidos = request.getParameter("Apellidos");
			 Dui = request.getParameter("Dui");
			 usuario = request.getParameter("user");
			 password = request.getParameter("pass");
		} catch (Exception e) {
			
		}
		try {
			Roles rol = new Roles();
			rol.setNombres(nombres);
			rol.setApellidos(apellidos);
			rol.setDUI(Dui);
			rol.setUsuario(usuario);
			rol.setPasword(password);
			ClsRoles cls = new ClsRoles();
			cls.InsertarAdmin(rol);
		} catch (Exception e) {
			// TODO: handle exception
			System.out.println(e);
		}

		response.sendRedirect("Index.jsp");
	}

}
