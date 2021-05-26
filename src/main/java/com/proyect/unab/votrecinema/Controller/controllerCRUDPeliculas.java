package com.proyect.unab.votrecinema.Controller;

import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.sql.Date;
import java.sql.Time;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

import com.proyect.unab.votrecinema.DAO.ClsPeliculas;
import com.proyect.unab.votrecinema.Entidades.Peliculas;

@MultipartConfig
/**
 * Servlet implementation class controllerPruebapelicula
 */
public class controllerCRUDPeliculas extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public controllerCRUDPeliculas() {
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
		// response.getWriter().append("Served at: ").append(request.getContextPath());

		int id = Integer.parseInt(request.getParameter("id").replace(" ", ""));
		Peliculas pelicula = new Peliculas();
		pelicula.setIdPelicula(id);
		ClsPeliculas cls = new ClsPeliculas();
		cls.eliminar(pelicula);
		response.sendRedirect("Peliculas.jsp");

	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		// doGet(request, response);

		String nombre = "";
		String sinopsis = "";
		Date fecha = null;
		Part portada = null;
		String imagen ;
		int tipo;
		int clasificacion;
		double precio;
		String hora = "";

		int id = 0;
try {
	imagen = request.getParameter("portadaa"); 
} catch (Exception e) {
	// TODO: handle exception
	imagen = "null";
}
		try {
			id = Integer.parseInt(request.getParameter("id").replace(" ", ""));

		} catch (Exception e) {
			id = 0;
		}

		try {

			nombre = request.getParameter("nombre");
			sinopsis = request.getParameter("sinopsis");
			fecha = Date.valueOf(request.getParameter("fecha"));
			tipo = Integer.parseInt(request.getParameter("tipo"));
			clasificacion = Integer.parseInt(request.getParameter("clasificacion"));
			precio = Double.parseDouble(request.getParameter("precio"));
			hora = (request.getParameter("hora") + ":" + request.getParameter("minutos") + ":00");
			

		} catch (Exception e) {
			tipo = 0;
			clasificacion = 0;
			precio = 0;

		}
		if (id == 0) {

			Peliculas peliculas = new Peliculas();
			portada = request.getPart("imagenp");
			String nombreimagen = portada.getSubmittedFileName();
			String ruta = "C:\\Users\\rafap\\Documents\\GitHub\\votrecinemaWeb\\src\\main\\webapp\\Imagenes\\"
					+ nombreimagen;
			try {
				FileOutputStream fileoutput = new FileOutputStream(ruta);
				InputStream stream = portada.getInputStream();

				byte[] datos = new byte[stream.available()];
				stream.read(datos);
				fileoutput.write(datos);
				fileoutput.close();
			} catch (Exception e) {
				// TODO: handle exception
			}

			peliculas.setNombre(nombre);
			peliculas.setPortada(nombreimagen);
			peliculas.setClasificacion(clasificacion);
			peliculas.setPrecio(precio);
			peliculas.setDuracion(Time.valueOf(hora));
			peliculas.setSipnosis(sinopsis);
			peliculas.setYear(fecha);
			peliculas.setTipo(tipo);
			ClsPeliculas cls = new ClsPeliculas();
			if (clasificacion == 0) {
				cls.InsertarPelicula(peliculas);
			} else {
				cls.InsertarPeliculamayores(peliculas);
			}
			
		}else {
			Peliculas peliculas = new Peliculas();
			String nombreimagen;
			try {
				portada = request.getPart("imagenp");
				 nombreimagen = portada.getSubmittedFileName();
				if(imagen!=nombreimagen) {
				String ruta = "C:\\Users\\rafap\\Documents\\GitHub\\votrecinemaWeb\\src\\main\\webapp\\Imagenes\\"
						+ nombreimagen;
				FileOutputStream fileoutput = new FileOutputStream(ruta);
				InputStream stream = portada.getInputStream();

				byte[] datos = new byte[stream.available()];
				stream.read(datos);
				fileoutput.write(datos);
				fileoutput.close();
				}
			} catch (Exception e) {
				nombreimagen = imagen;
			}
			
			peliculas.setIdPelicula(id);
			peliculas.setNombre(nombre);
			peliculas.setPortada(nombreimagen);
			peliculas.setClasificacion(clasificacion);
			peliculas.setPrecio(precio);
			peliculas.setDuracion(Time.valueOf(hora));
			peliculas.setSipnosis(sinopsis);
			peliculas.setYear(fecha);
			peliculas.setTipo(tipo);
			ClsPeliculas cls = new ClsPeliculas();
			if(clasificacion == 0) {
				cls.ActualizarPelicula(peliculas);
			}else {
				
				cls.ActualizarPeliculaMayores(peliculas);
			}
			
			
			
		}
		response.sendRedirect("Peliculas.jsp");
		
	}

}
