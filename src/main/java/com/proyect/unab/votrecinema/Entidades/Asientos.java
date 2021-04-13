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
public class Asientos extends Carteleras{
    private int Id_Asiento;
    private int Numero;
    private int Id_Sala;
    
    
	public int getId_Asiento() {
		return Id_Asiento;
	}
	public void setId_Asiento(int id_Asiento) {
		Id_Asiento = id_Asiento;
	}
	public int getNumero() {
		return Numero;
	}
	public void setNumero(int numero) {
		Numero = numero;
	}
	public int getId_Sala() {
		return Id_Sala;
	}
	public void setId_Sala(int id_Sala) {
		Id_Sala = id_Sala;
	}
    
    
}
