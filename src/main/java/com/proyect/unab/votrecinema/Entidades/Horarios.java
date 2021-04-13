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
public class Horarios extends Salas {
    public int ids;
    private int idHorario;
    private Time HoraInicio;
    private Date Fecha;
    
    
	public int getIds() {
		return ids;
	}
	public void setIds(int ids) {
		this.ids = ids;
	}
	public int getIdHorario() {
		return idHorario;
	}
	public void setIdHorario(int idHorario) {
		this.idHorario = idHorario;
	}
	public Time getHoraInicio() {
		return HoraInicio;
	}
	public void setHoraInicio(Time horaInicio) {
		HoraInicio = horaInicio;
	}
	public Date getFecha() {
		return Fecha;
	}
	public void setFecha(Date fecha) {
		Fecha = fecha;
	}
    
    
 
}
