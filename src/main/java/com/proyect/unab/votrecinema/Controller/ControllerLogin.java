package com.proyect.unab.votrecinema.Controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import com.proyect.unab.votrecinema.Entidades.Roles;
import com.proyect.unab.votrecinema.DAO.*;

/**
 * Servlet implementation class ControllerLogin
 */
public class ControllerLogin extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public ControllerLogin() {
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
		

	

			String user = request.getParameter("user");
			String pass = request.getParameter("pass");

			Roles rol = new Roles();

			rol.setUsuario(user);
			rol.setPasword(pass);

			clsLoguin cls = new clsLoguin();

			boolean resultado = cls.Loguin(user, pass);
			
			

			if (resultado == true) {
				HttpSession session = request.getSession(true);
				session.setAttribute("usuario", resultado);
				int tipo = cls.rol;
				int id = cls.id;
				
					String usuario = cls.usuario;

					request.getSession().setAttribute("usu", usuario.toUpperCase());
					request.getSession().setAttribute("id", id);
					request.getSession().setAttribute("tipo", tipo);
					response.sendRedirect("Principal.jsp");
				
			} else {
		
				response.sendRedirect("Index.jsp");
			}
		
	}
}
