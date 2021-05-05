/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.proyect.unab.votrecinema.DAO;
import com.proyect.unab.votrecinema.Conexion.Conexion;
import com.proyect.unab.votrecinema.Entidades.*;

import java.sql.CallableStatement;
import java.sql.Connection;
import java.sql.ResultSet;
import java.util.ArrayList;

/**
 *
 * @author 14-ck0013lab
 */
public class ClsSalas {

    Conexion con = new Conexion();
    Connection conectar = con.retornarConexion();

    public ArrayList<Salas> MostrarSalas() {
        ArrayList<Salas> lista = new ArrayList<>();
        try {
            CallableStatement call = conectar.prepareCall("Call SP_S_SALAS()");
            ResultSet resultado = call.executeQuery();
            while (resultado.next()) {
                Salas Sala = new Salas();
                Sala.setIdSala(resultado.getInt("idSala"));
                Sala.setCapacidad(resultado.getInt("Capacidad"));
                Sala.setNumero_Sala(resultado.getInt("Numero_Sala"));
                lista.add(Sala);
            }
        } catch (Exception e) {
            System.out.println("Error" + e);
        }

        return lista;
    }

    public void GuardarSala(Salas sal) {
        try {
            CallableStatement call = conectar.prepareCall("call SP_I_SALAS(?,?)");
            call.setInt("pCapacidad", (int) sal.getCapacidad());
            call.setInt("pNumero", (int) sal.getNumero_Sala());
            call.executeQuery();
            conectar.close();
            System.out.println("Guardado con exito");
        } catch (Exception e) {
            System.out.println(e);
        }

    }

    public void ActualizarSala(Salas S) {
        try {
            CallableStatement call = conectar.prepareCall("call SP_U_SALAS(?,?,?)");
            call.setInt("pid", (int) S.getIdSala());
            call.setInt("pCapacidad", (int) S.getCapacidad());
            call.setInt("pNumero", (int) S.getNumero_Sala());
             
                call.execute();
                System.out.println("Actualizacion Exitosa");
              
                conectar.close();

            
        } catch (Exception e) {
            System.out.println("Error" + e);
        }
    }

    public void EliminarSala(Salas sa) {
        try {
            CallableStatement call = conectar.prepareCall("call SP_D_SALAS(?)");
            call.setInt("pId", (int) sa.idSala);
            call.execute();
			System.out.println("Eliminado exitosamente"+sa.idSala);

			conectar.close();
			
        } catch (Exception e) {
            System.out.println("Error" + e);
        }
    }

}
