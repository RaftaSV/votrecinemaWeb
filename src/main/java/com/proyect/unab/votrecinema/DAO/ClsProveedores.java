/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.proyect.unab.votrecinema.DAO;

import com.proyect.unab.votrecinema.Conexion.Conexion;
import com.proyect.unab.votrecinema.Entidades.*;

import java.sql.CallableStatement;
import java.sql.Connection;
import java.sql.ResultSet;
import java.util.ArrayList;
import javax.swing.JOptionPane;

/**
 *
 * @author Rafael
 */
public class ClsProveedores {

	Conexion con = new Conexion();
	Connection conectar = con.retornarConexion();

	public ArrayList<Proveedor> ListaProveedores() {
		ArrayList<Proveedor> provee = new ArrayList<>();
		try {
			CallableStatement call = conectar.prepareCall("call SP_S_PROVEEDORES()");
			ResultSet resultado = call.executeQuery();
			while (resultado.next()) {
				Proveedor pro = new Proveedor();
				pro.setIdProveedor(resultado.getInt("idProveedor"));
				pro.setNombre(resultado.getString("Nombre"));
				pro.setTelefono(resultado.getString("Telefono"));
				pro.setDireccion(resultado.getString("Direccion"));
				provee.add(pro);

			}
			conectar.close();
		} catch (Exception e) {
			System.out.println("Error" + e);
		}
		return provee;
	}

	public void GuardarProveedor(Proveedor pro) {
		try {
			CallableStatement call = conectar.prepareCall("call SP_I_PROVEEDORES(?,?,?)");
			call.setString("pNombre", pro.getNombre());
			call.setString("pTelefono", pro.getTelefono());
			call.setString("pDireccion", pro.getDireccion());
			call.execute();
			conectar.close();
			JOptionPane.showMessageDialog(null, "Guardado exitosamente");
		} catch (Exception e) {
			System.out.println("Error" + e);
		}

	}

	public void ActualizarProveedor(Proveedor pro) {
		try {
			CallableStatement call = conectar.prepareCall("call SP_U_PROVEEDORES(?,?,?,?)");
			call.setInt("pId", (int) pro.getIdProveedor());
			call.setString("pNombre", pro.getNombre());
			call.setString("pTelefono", pro.getTelefono());
			call.setString("pDireccion", pro.getDireccion());

			call.execute();
			System.out.println("Actualizacion exitosa");

		} catch (Exception e) {
			System.out.println("Error" + e);
		}
	}

	public void EliminarProveedor(Proveedor pro) {
		try {
			CallableStatement call = conectar.prepareCall("call SP_D_PROVEEDORES(?)");

			call.setInt("pId", (int) pro.getIdProveedor());
			call.execute();
			System.out.println("Eliminado exitosamente");

			conectar.close();

		} catch (Exception e) {
			System.out.println("Error" + e);
		}
	}

	public ArrayList<Proveedor> ListaProveedoresCompleta() {
		ArrayList<Proveedor> provee = new ArrayList<>();
		try {
			CallableStatement call = conectar.prepareCall("select *from proveedores");
			ResultSet resultado = call.executeQuery();
			while (resultado.next()) {
				Proveedor pro = new Proveedor();
				pro.setIdProveedor(resultado.getInt("idProveedor"));
				pro.setNombre(resultado.getString("Nombre"));
				pro.setTelefono(resultado.getString("Telefono"));
				pro.setDireccion(resultado.getString("Direccion"));
				provee.add(pro);

			}
			conectar.close();
		} catch (Exception e) {
			System.out.println("Error" + e);
		}
		return provee;

	}
}