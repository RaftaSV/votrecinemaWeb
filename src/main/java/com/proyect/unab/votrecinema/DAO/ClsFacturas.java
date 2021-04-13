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
public class ClsFacturas {
    Conexion con = new Conexion();
    Connection conectar = con.retornarConexion();
    public void AgregarFactura(Facturas factura){
        try {
            CallableStatement call = conectar.prepareCall("call SP_I_FACTURAS(?,?,?)");
            call.setInt("pIdCliente", factura.getCliente());
            call.setInt("pidCajero", factura.getCajero());
            call.setDouble("pTotal", factura.getTotal());
            call.executeQuery();
            conectar.close();
        } catch (Exception e) {
            System.out.println("error"+e);
        } 
    }

}
