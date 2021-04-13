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
import javax.swing.JOptionPane;

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
            call.setInt("pCapacidad", sal.getCapacidad());
            call.setInt("pNumero", sal.getNumero_Sala());
            call.executeQuery();
            conectar.close();
            JOptionPane.showMessageDialog(null, "Guardado con exito");
        } catch (Exception e) {
            System.out.println(e);
        }

    }

    public void ActualizarSala(Salas S) {
        try {
            CallableStatement call = conectar.prepareCall("call SP_U_SALAS(?,?,?)");
            call.setInt("pid", S.getIdSala());
            call.setInt("pCapacidad", S.getCapacidad());
            call.setInt("pNumero", S.getNumero_Sala());
             int res = JOptionPane.showConfirmDialog(null, "¿Desea Actualizar este registro?", "Advertencia", JOptionPane.YES_NO_OPTION);
            if (res == 0) {
                call.execute();
                JOptionPane.showMessageDialog(null, "Actualizacion Exitosa");
              
                conectar.close();

            } else {

            }
        } catch (Exception e) {
            System.out.println("Error" + e);
        }
    }

    public void EliminarSala(Salas sa) {
        try {
            CallableStatement call = conectar.prepareCall("call SP_D_SALAS(?)");
            call.setInt("pId", sa.idSala);
            int res = JOptionPane.showConfirmDialog(null, "¿Desea Eliminar este registro?", "Advertencia", JOptionPane.YES_NO_OPTION);
            if (res == 0) {
                call.execute();
                JOptionPane.showMessageDialog(null, "Eliminacion Exitosa");
            } else {

            }

        } catch (Exception e) {
            System.out.println("Error" + e);
        }
    }

}
