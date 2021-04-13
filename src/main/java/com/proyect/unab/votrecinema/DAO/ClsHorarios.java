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
public class ClsHorarios {

    Conexion con = new Conexion();
    Connection conectar = con.retornarConexion();

    public ArrayList<Horarios> cargarHorarios() {
        ArrayList<Horarios> lista = new ArrayList<>();
        try {
            CallableStatement call = conectar.prepareCall("select *from horarios as a where a.idHorario>0 and a.estado=0 order by a.HoraInicio asc ");
            ResultSet resultado = call.executeQuery();
            while (resultado.next()) {
                Horarios hor = new Horarios();
                hor.setIdHorario(resultado.getInt("idHorario"));
                hor.setHoraInicio(resultado.getTime("HoraInicio"));
                lista.add(hor);
            }
            conectar.close();

        } catch (Exception e) {
        }
        return lista;
    }

    public ArrayList<Horarios> cargarHora(Horarios hor) {
        ArrayList<Horarios> lista = new ArrayList<>();
        try {
            CallableStatement call = conectar.prepareCall("call SP_SELECCIONARHORARIO(?,?)");
            call.setInt("pSala", hor.getIds());
            call.setDate("pFecha",  new java.sql.Date(hor.getFecha().getTime()));
            ResultSet resultado = call.executeQuery();
            while (resultado.next()) {
                Horarios horaa = new Horarios();
                horaa.setIdHorario(resultado.getInt("idHorario"));
                horaa.setHoraInicio(resultado.getTime("HoraInicio"));
                lista.add(horaa);
            }
         
            conectar.close();

        } catch (Exception e) {
            System.out.println("Erro"+e);
        }
        return lista;
    }

    public void InsertarHorario(Horarios ho) {
        try {
            CallableStatement call = conectar.prepareCall("call SP_I_HORARIOS(?)");
            call.setTime("pHora", ho.getHoraInicio());
            call.executeQuery();
            JOptionPane.showMessageDialog(null, "Guardado exitosamente");
            conectar.close();

        } catch (Exception e) {
            System.out.println("error " + e);
        }

    }

    public void ActualizarHorario(Horarios ho) {
        try {
            CallableStatement call = conectar.prepareCall("call SP_U_HORARIOS(?,?)");
            call.setInt("pId", ho.getIdHorario());
            call.setTime("pHora", ho.getHoraInicio());
            int res = JOptionPane.showConfirmDialog(null, "¿Desea Actualizar este registro?", "Advertencia", JOptionPane.YES_NO_OPTION);
            if (res == 0) {
                call.executeQuery();
                JOptionPane.showMessageDialog(null, "Actualizacion Exitosa");
                conectar.close();

            } else {

            }
        } catch (Exception e) {
            System.out.println("error " + e);
        }

    }

    public void EliminarHorario(Horarios ho) {
        try {
            CallableStatement call = conectar.prepareCall("call SP_D_HORARIOS(?)");
            call.setInt("pId", ho.getIdHorario());

            int res = JOptionPane.showConfirmDialog(null, "¿Desea Eliminar este registro?", "Advertencia", JOptionPane.YES_NO_OPTION);
            if (res == 0) {
                call.executeQuery();
                JOptionPane.showMessageDialog(null, "Eliminacion Exitosa");
                conectar.close();

            } else {

            }
        } catch (Exception e) {
            System.out.println("error " + e);
        }

    }
}
