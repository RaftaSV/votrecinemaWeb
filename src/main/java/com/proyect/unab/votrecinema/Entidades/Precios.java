/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.proyect.unab.votrecinema.Entidades;

import java.math.BigDecimal;
import lombok.Data;

/**
 *
 * @author Rafael
 */
@Data
public class Precios extends Peliculas{
	
    private  int idprecio;
    private BigDecimal precios;
    private int tipo;
    
	public int getIdprecio() {
		return idprecio;
	}
	public void setIdprecio(int idprecio) {
		this.idprecio = idprecio;
	}
	public BigDecimal getPrecios() {
		return precios;
	}
	public void setPrecios(BigDecimal precios) {
		this.precios = precios;
	}
	public int getTipo() {
		return tipo;
	}
	public void setTipo(int tipo) {
		this.tipo = tipo;
	}
    
    
}
