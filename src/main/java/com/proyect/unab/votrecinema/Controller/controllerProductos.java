package com.proyect.unab.votrecinema.Controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.google.gson.Gson;
import com.proyect.unab.votrecinema.DAO.ClsProductos;
import com.proyect.unab.votrecinema.Entidades.*;

/**
 * Servlet implementation class controllerProductos
 */
public class controllerProductos extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public controllerProductos() {
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
		int idProducto;
		int idProveedor;
		String producto="";
		double precio;
		int cantidad;
		
		try {
			idProducto = Integer.parseInt(request.getParameter("id").replace(" ",""));

		} catch (Exception e) {
			idProducto = 0;
		}
		try {

			eliminar = request.getParameter("Eliminar");

		} catch (Exception e) {
			
		}
		try {
	
			idProveedor = Integer.parseInt(request.getParameter("idpro"));
			producto  = request.getParameter("producto");
			precio = Double.parseDouble(request.getParameter("precio"));
			cantidad = Integer.parseInt(request.getParameter("cantidad"));
			
		} catch (Exception e) {
			idProveedor=0;
			cantidad=0;
			precio=0;
		}
		
		
if (eliminar.equals("btne")) {
			
			Producto pro = new Producto();
			pro.setIdProducto(idProducto);
			ClsProductos cls = new ClsProductos();
			cls.EliminarProducto(pro);
			response.sendRedirect("Productos.jsp");

		}else {
			if(idProducto>0) {
				Producto Producto = new Producto();
				Producto.setIdProducto(idProducto);
				Producto.setProducto(producto);
				Producto.setIdProveedor(idProveedor);
				Producto.setCantidad(cantidad);
				Producto.setPrecio(precio);
				
				ClsProductos cls = new ClsProductos();
				cls.ActualiarProducto(Producto);
				
			}else {
				
				Producto Producto = new Producto();
				Producto.setProducto(producto);
				Producto.setIdProveedor(idProveedor);
				Producto.setCantidad(cantidad);
				Producto.setPrecio(precio);
			
			ClsProductos cls = new ClsProductos();
				cls.GuardarProducto(Producto);
						
				
				
				
				
			}
			
		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//doGet(request, response);
		ClsProductos productos = new ClsProductos();
		Gson json = new Gson();
		response.getWriter().append(json.toJson(productos.MostrarProductos()));
	}

}
