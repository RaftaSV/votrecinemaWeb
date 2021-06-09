/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.proyect.unab.votrecinema.DAO;
import com.proyect.unab.votrecinema.Conexion.Conexion;
import com.proyect.unab.votrecinema.Entidades.*;
import java.sql.*;


/**
 *
 * @author Rafael
 */
public class ClsDetallesFactura {

    Conexion con = new Conexion();
    Connection conectar = con.retornarConexion();

    public void insertarDetalle(DetallesFacturas detalle) {
        try {
            CallableStatement call = conectar.prepareCall("call SP_I_DETALLEFACTURA(?,?,?)");
            call.setDouble("pCosto", detalle.getCosto());
            call.setInt("pidProducto", detalle.getId_Producto());
            call.setInt("Pdiferenciador", detalle.getDiferenciador());
            call.executeQuery();
            conectar.close();
            System.out.println("Guardado exitoso detalle");
        } catch (Exception e) {
            System.out.println("error" + e);
        }
    }

}
