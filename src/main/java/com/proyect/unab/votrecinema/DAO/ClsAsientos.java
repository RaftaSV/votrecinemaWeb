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

/**
 *
 * @author Rafael
 */
public class ClsAsientos {

    Conexion con = new Conexion();
    Connection conectar = con.retornarConexion();

    public ArrayList<Asientos> CargarAsientos(Asientos a) {
        ArrayList<Asientos> lista = new ArrayList<>();
        try {
            CallableStatement call = conectar.prepareCall("call SP_SELECCIONARASIENTO(?)");
            call.setInt("pCartelera", a.getIdcartelera());
            ResultSet res = call.executeQuery();
            while (res.next()) {
                Asientos asientos = new Asientos();
                asientos.setId_Asiento(res.getInt("idAsientos"));
                asientos.setNumero(res.getInt("Numero"));
                lista.add(asientos);
            }
            conectar.close();
        } catch (Exception e) {
            System.out.println(e);
        }
        return lista;
    }

}
