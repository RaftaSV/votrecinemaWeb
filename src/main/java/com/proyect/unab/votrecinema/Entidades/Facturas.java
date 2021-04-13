/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.proyect.unab.votrecinema.Entidades;

import java.util.Date;

import lombok.Data;

/**
 *
 * @author Rafael
 */
@Data
public class Facturas {

    private int idFactura;
    private int Cajero;
    private Date Fecha;
    private int Cliente;
    private double Total;
    private int Estado;
    
    
	public int getIdFactura() {
		return idFactura;
	}
	public void setIdFactura(int idFactura) {
		this.idFactura = idFactura;
	}
	public int getCajero() {
		return Cajero;
	}
	public void setCajero(int cajero) {
		Cajero = cajero;
	}
	public Date getFecha() {
		return Fecha;
	}
	public void setFecha(Date fecha) {
		Fecha = fecha;
	}
	public int getCliente() {
		return Cliente;
	}
	public void setCliente(int cliente) {
		Cliente = cliente;
	}
	public double getTotal() {
		return Total;
	}
	public void setTotal(double total) {
		Total = total;
	}
	public int getEstado() {
		return Estado;
	}
	public void setEstado(int estado) {
		Estado = estado;
	}

    
    
    
    
}
