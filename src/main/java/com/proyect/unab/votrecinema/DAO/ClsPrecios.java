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
 * @author Rafael
 */
public class ClsPrecios {
    
    Conexion con = new Conexion();
    Connection conectar = con.retornarConexion();
    
   public ArrayList<Precios> CargarLista(Precios p) {
        ArrayList<Precios> lista = new ArrayList<>();
        try {
            CallableStatement call = conectar.prepareCall("call SP_S_PRECIOS(?)");
            call.setInt("pId", p.getIdPelicula());
            ResultSet res = call.executeQuery();
            while (res.next()) {
                Precios precios = new Precios();
                precios.setIdprecio(res.getInt("idPrecio"));
                precios.setPrecios(res.getBigDecimal("Precio"));
                precios.setTipo(res.getInt("Tipo"));
                lista.add(precios);
            }
            conectar.close();
        } catch (Exception e) {
            System.out.println("error"+e);
        }
        
        return lista;
    }
    
}
