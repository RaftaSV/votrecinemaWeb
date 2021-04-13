package com.proyect.unab.votrecinema.Entidades;

import lombok.Data;

@Data
public class Producto extends Proveedor {
	
	private long idProducto;
	private String Producto;
	private double precio;
	private int Cantidad;
	
	
	public long getIdProducto() {
		return idProducto;
	}
	public void setIdProducto(long idProducto) {
		this.idProducto = idProducto;
	}
	public String getProducto() {
		return Producto;
	}
	public void setProducto(String producto) {
		Producto = producto;
	}
	public double getPrecio() {
		return precio;
	}
	public void setPrecio(double precio) {
		this.precio = precio;
	}
	public int getCantidad() {
		return Cantidad;
	}
	public void setCantidad(int cantidad) {
		Cantidad = cantidad;
	}

}
