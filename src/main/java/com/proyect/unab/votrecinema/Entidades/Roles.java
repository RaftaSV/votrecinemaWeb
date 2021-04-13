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
public class Roles extends Personas{
    public int idRol;
    public String Usuario;
    public String Pasword;
    public int  TipoRol;
    public int Id_Persona;
   
    public int Estadorol;
    
	public int getIdRol() {
		return idRol;
	}
	public void setIdRol(int idRol) {
		this.idRol = idRol;
	}
	public String getUsuario() {
		return Usuario;
	}
	public void setUsuario(String usuario) {
		Usuario = usuario;
	}
	public String getPasword() {
		return Pasword;
	}
	public void setPasword(String pasword) {
		Pasword = pasword;
	}
	public int getTipoRol() {
		return TipoRol;
	}
	public void setTipoRol(int tipoRol) {
		TipoRol = tipoRol;
	}
	public int getId_Persona() {
		return Id_Persona;
	}
	public void setId_Persona(int id_Persona) {
		Id_Persona = id_Persona;
	}
	public int getEstado() {
		return Estadorol;
	}
	public void setEstado(int estado) {
		Estadorol = estado;
	}
    
    
}
