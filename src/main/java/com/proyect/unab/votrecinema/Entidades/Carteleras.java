/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.proyect.unab.votrecinema.Entidades;

import java.sql.Time;
import java.util.Date;
import lombok.*;

/**
 *
 * @author Rafael
 */
@Data
public class Carteleras {
	private int idPelicula;
	private String Nombre;
	private String Portada;
	private Time Duracion;
	private String Sipnosis;
	private int Tipo;
	private int Idcartelera;
	private int Id_Sala;
	private int numero_sala;
	private int Id_Horario;
	private Date fecha;
	private Time horaInicio;
	private double precio;
	private int estado;

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

	public void setPortada(String portada) {
		Portada = portada;
	}

	public int getIdcartelera() {
		return Idcartelera;
	}

	public void setIdcartelera(int idcartelera) {
		Idcartelera = idcartelera;
	}

	public int getId_Sala() {
		return Id_Sala;
	}

	public void setId_Sala(int id_Sala) {
		Id_Sala = id_Sala;
	}

	public int getNumero_sala() {
		return numero_sala;
	}

	public void setNumero_sala(int numero_sala) {
		this.numero_sala = numero_sala;
	}

	public int getId_Horario() {
		return Id_Horario;
	}

	public void setId_Horario(int id_Horario) {
		Id_Horario = id_Horario;
	}

	public Date getFecha() {
		return fecha;
	}

	public void setFecha(Date fecha) {
		this.fecha = fecha;
	}

	public Time getHoraInicio() {
		return horaInicio;
	}

	public void setHoraInicio(Time horaInicio) {
		this.horaInicio = horaInicio;
	}

	public double getPrecio() {
		return precio;
	}

	public void setPrecio(double precio) {
		this.precio = precio;
	}

	public int getEstado() {
		return estado;
	}

	public void setEstado(int estado) {
		this.estado = estado;
	}

}
