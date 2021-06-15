package com.proyect.unab.votrecinema.Controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.proyect.unab.votrecinema.DAO.ClsDetallesFactura;
import com.proyect.unab.votrecinema.DAO.ClsFacturas;
import com.proyect.unab.votrecinema.DAO.ClsTaquilla;
import com.proyect.unab.votrecinema.Entidades.DetallesFacturas;
import com.proyect.unab.votrecinema.Entidades.Facturas;
import com.proyect.unab.votrecinema.Entidades.Taquillas;

/**
 * Servlet implementation class controllerfacturas
 */
public class controllerfacturas extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public controllerfacturas() {
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
		int cliente = 0;
		double total = 0;
		int cajero = 0;
		try {
			cajero = Integer.parseInt(request.getParameter("cajero").replace(" ", ""));
			cliente = Integer.parseInt(request.getParameter("cliente").replace(" ", ""));
			total = Double.parseDouble(request.getParameter("total").replace(" ", ""));

		} catch (Exception e) {
			// TODO: handle exception
		}

		if (total != 0 || cliente != 0 ) {

			Facturas factura = new Facturas();
			factura.setTotal(total);
			factura.setCliente(cliente);
			factura.setCajero(cajero);
			ClsFacturas facturar = new ClsFacturas();
			facturar.AgregarFactura(factura);

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
		int identificador = 0;
		int asiento = 0;
		int idprecio = 0;
		int idproducto = 0;
		int Idcartelera = 0;
		double costo = 0;
		try {
			costo = Double.parseDouble(request.getParameter("costo").replace(" ", ""));
			identificador = Integer.parseInt(request.getParameter("identificador").replace(" ", ""));
			asiento = Integer.parseInt(request.getParameter("asiento").replace(" ", ""));
			idprecio = Integer.parseInt(request.getParameter("idprecio").replace(" ", ""));
			idproducto = Integer.parseInt(request.getParameter("idproducto").replace(" ", ""));
			Idcartelera = Integer.parseInt(request.getParameter("Idcartelera").replace(" ", ""));

		} catch (Exception e) {

		}
	
		if (identificador == 0) {

			Taquillas taquilla = new Taquillas();
			taquilla.setDiferenciador(identificador);
			taquilla.setId_cartelera(Idcartelera);
			taquilla.setId_Producto(idprecio);
			taquilla.setId_Asiento(asiento);
			ClsTaquilla cls = new ClsTaquilla();
			cls.InsertarTaquilla(taquilla);

		} {
			DetallesFacturas det = new DetallesFacturas();
			det.setCosto(costo);
			det.setDiferenciador(identificador);
			det.setId_Producto(idproducto);
			ClsDetallesFactura detalle = new ClsDetallesFactura();
			detalle.insertarDetalle(det);
			
		}

	}

}
