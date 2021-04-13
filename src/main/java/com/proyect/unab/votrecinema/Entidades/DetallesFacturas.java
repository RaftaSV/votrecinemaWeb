/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.proyect.unab.votrecinema.Entidades;
import lombok.Data;

/**
 *
 * @author Rafael
 */
@Data
public class DetallesFacturas {
    private int idDetalles;
    private int Id_Factura;
    private int Id_Producto;
    private int Id_Taquilla;
    private double  Costo;
    private int  Estado;
    private int diferenciador;
    
    
	public int getIdDetalles() {
		return idDetalles;
	}
	public void setIdDetalles(int idDetalles) {
		this.idDetalles = idDetalles;
	}
	public int getId_Factura() {
		return Id_Factura;
	}
	public void setId_Factura(int id_Factura) {
		Id_Factura = id_Factura;
	}
	public int getId_Producto() {
		return Id_Producto;
	}
	public void setId_Producto(int id_Producto) {
		Id_Producto = id_Producto;
	}
	public int getId_Taquilla() {
		return Id_Taquilla;
	}
	public void setId_Taquilla(int id_Taquilla) {
		Id_Taquilla = id_Taquilla;
	}
	public double getCosto() {
		return Costo;
	}
	public void setCosto(double costo) {
		Costo = costo;
	}
	public int getEstado() {
		return Estado;
	}
	public void setEstado(int estado) {
		Estado = estado;
	}
	public int getDiferenciador() {
		return diferenciador;
	}
	public void setDiferenciador(int diferenciador) {
		this.diferenciador = diferenciador;
	}
    
    
    
}
