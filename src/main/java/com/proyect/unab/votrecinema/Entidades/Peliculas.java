/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.proyect.unab.votrecinema.Entidades;


import java.sql.Time;
import java.util.Date;
import lombok.Data;

/**
 *
 * @author Rafael
 */
@Data
public class Peliculas {

    private int idPelicula;
    private String Nombre;
    private String Portada;
    private Date Year;
    private Time  Duracion;
    private String Sipnosis;
    private int Tipo;
    private int clasificacion;
    private double precio;
    
	public int getIdPelicula() {
		return idPelicula;
	}
	public void setIdPelicula(int idPelicula) {
		this.idPelicula = idPelicula;
	}
	public String getNombre() {
		return Nombre;
	}
	public void setNombre(String nombre) {
		Nombre = nombre;
	}
	public String getPortada() {
		return Portada;
	}
	public void setPortada(String portada) {
		Portada = portada;
	}
	public Date getYear() {
		return Year;
	}
	public void setYear(Date year) {
		Year = year;
	}
	public Time getDuracion() {
		return Duracion;
	}
	public void setDuracion(Time duracion) {
		Duracion = duracion;
	}
	public String getSipnosis() {
		return Sipnosis;
	}
	public void setSipnosis(String sipnosis) {
		Sipnosis = sipnosis;
	}
	public int getTipo() {
		return Tipo;
	}
	public void setTipo(int tipo) {
		Tipo = tipo;
	}
	public int getClasificacion() {
		return clasificacion;
	}
	public void setClasificacion(int clasificacion) {
		this.clasificacion = clasificacion;
	}
	public double getPrecio() {
		return precio;
	}
	public void setPrecio(double precio) {
		this.precio = precio;
	}
    
    
    
    
}
