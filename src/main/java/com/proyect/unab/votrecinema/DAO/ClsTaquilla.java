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

/**
 *
 * @author Rafael
 */
public class ClsTaquilla {

    Conexion con = new Conexion();
    Connection conectar = con.retornarConexion();

    public void InsertarTaquilla(Taquillas taquilla) {
        try {
            CallableStatement call = conectar.prepareCall("call SP_I_TAQUILLA(?,?,?,?)");
            call.setInt("pIdCartelera", taquilla.getId_cartelera());
            call.setInt("pIdAsientos", taquilla.getId_Asiento());
            call.setInt("Pprecio", taquilla.getPrecio());
            call.setInt("Pdiferenciador", taquilla.getDiferenciador());
            call.executeQuery();
            conectar.close();
            System.out.println("taquilla guardada");
        } catch (Exception e) {
            System.out.println("error" + e);
        }

    }
}
