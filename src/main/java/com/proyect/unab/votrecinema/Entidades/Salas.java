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

public class Salas {
	
    public int idSala;
    private int Capacidad;
    private int Numero_Sala;
    private int Estado;
    
    
	public int getIdSala() {
		return idSala;
	}
	public void setIdSala(int idSala) {
		this.idSala = idSala;
	}
	public int getCapacidad() {
		return Capacidad;
	}
	public void setCapacidad(int capacidad) {
		Capacidad = capacidad;
	}
	public int getNumero_Sala() {
		return Numero_Sala;
	}
	public void setNumero_Sala(int numero_Sala) {
		Numero_Sala = numero_Sala;
	}
	public int getEstado() {
		return Estado;
	}
	public void setEstado(int estado) {
		Estado = estado;
	}
}
