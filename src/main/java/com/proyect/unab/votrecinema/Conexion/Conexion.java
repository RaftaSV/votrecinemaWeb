package com.proyect.unab.votrecinema.Conexion;
import java.sql.Connection;
import java.sql.DriverManager;

public class Conexion {
	private Connection con;
	
	public Conexion() {
		try {
			Class.forName("com.mysql.jdbc.Driver");
			con = DriverManager.getConnection("jdbc:mysql://localhost/votrecinema", "root", "root");
			System.out.println("CONECTADO A LA BD");

		} catch (Exception e) {
			System.out.println("ERROR DE CONEXION A LA BD " + e);
		}
	}

	public Connection retornarConexion() {
		return con;
	}	

}
