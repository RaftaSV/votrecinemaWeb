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
public class Taquillas extends DetallesFacturas{
  
  private  int idTaquilla;
  private int Id_cartelera;
  private int Id_Asiento;
  private int precio;
  private int estado;
  
  public int getIdTaquilla() {
		return idTaquilla;
	}
	public void setIdTaquilla(int idTaquilla) {
		this.idTaquilla = idTaquilla;
	}
	public int getId_cartelera() {
		return Id_cartelera;
	}
	public void setId_cartelera(int id_cartelera) {
		Id_cartelera = id_cartelera;
	}
	public int getId_Asiento() {
		return Id_Asiento;
	}
	public void setId_Asiento(int id_Asiento) {
		Id_Asiento = id_Asiento;
	}
	public int getPrecio() {
		return precio;
	}
	public void setPrecio(int precio) {
		this.precio = precio;
	}
	public int getEstado() {
		return estado;
	}
	public void setEstado(int estado) {
		this.estado = estado;
	}
 
}
