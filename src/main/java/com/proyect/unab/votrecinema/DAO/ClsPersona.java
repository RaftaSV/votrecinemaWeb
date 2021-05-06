/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.proyect.unab.votrecinema.DAO;
import com.proyect.unab.votrecinema.Conexion.Conexion;
import com.proyect.unab.votrecinema.Entidades.*;
import java.sql.*;
import java.util.*;
import javax.swing.JOptionPane;

/**
 *
 * @author Rafael
 */
public class ClsPersona {

    Conexion con = new Conexion();
    Connection conectar = con.retornarConexion();

    public ArrayList<Personas> ListaPersonas() {
        ArrayList<Personas> Personas = new ArrayList<>();
        try {
            CallableStatement Cal = conectar.prepareCall("CALL SP_S_PERSONAS()");
            ResultSet resultado = Cal.executeQuery();
            while (resultado.next()) {
                Personas p = new Personas();
                p.setIdPersona(resultado.getInt("idPersonas"));
                p.setNombres(resultado.getString("Nombres"));
                p.setApellidos(resultado.getString("Apellidos"));
                p.setDUI(resultado.getString("DUI"));
                p.setEstado(resultado.getInt("Estado"));
                Personas.add(p);
            }
        } catch (Exception e) {
            System.out.println("Error" + e);
        }
        return Personas;
    }

    public void AgregarPersona(Personas p) {
        try {
            CallableStatement call = conectar.prepareCall("call SP_I_PERSONAS(?,?,?)");
            call.setString("pNombres", p.getNombres());
            call.setString("pApellidos", p.getApellidos());
            call.setString("pDUI", p.getDUI());
            call.executeQuery();
            System.out.println("Guardado Exitoso");
            
        } catch (Exception e) {
            System.out.println("Error" + e);
        }

    }

    public void ActualizarPersona(Personas p) {
        try {
            CallableStatement call = conectar.prepareCall("call SP_U_PERSONAS(?,?,?,?)");
            call.setInt("pId", p.getIdPersona());
            call.setString("pNombres", p.getNombres());
            call.setString("pApellidos", p.getApellidos());
            call.setString("pDUI", p.getDUI());
            
                call.executeQuery();
                System.out.println("Actualizacion Exitosa");
              
                conectar.close();

        } catch (Exception e) {
            System.out.println("Error" + e);
        }
    }

    public void EliminarPersonas(Personas per) {
        try {
            CallableStatement call = conectar.prepareCall("call SP_D_PERSONAS(?)");
            call.setInt("pId", per.idPersona);
            
                call.executeQuery();
                System.out.println("Eliminacion Exitosa"); 

        } catch (Exception e) {
            System.out.println("Error" + e);
        }
    }
}
