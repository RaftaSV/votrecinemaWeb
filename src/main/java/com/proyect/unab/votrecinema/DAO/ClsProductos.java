/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.proyect.unab.votrecinema.DAO;
import com.proyect.unab.votrecinema.Conexion.Conexion;
import com.proyect.unab.votrecinema.Entidades.*;

import java.sql.*;
import java.util.ArrayList;
import javax.swing.JOptionPane;

/**
 *
 * @author Rafael
 */
public class ClsProductos {

    Conexion con = new Conexion();
    Connection conectar = con.retornarConexion();

    public ArrayList<Producto> MostrarProductos() {
        ArrayList<Producto> lista = new ArrayList<>();
        try {
            CallableStatement call = conectar.prepareCall("Call SP_S_PRODUCTOS()");
            ResultSet resultado = call.executeQuery();
            while (resultado.next()) {
                Producto prod = new Producto();
                prod.setIdProducto(resultado.getInt("idProducto"));
                prod.setProducto(resultado.getString("Producto"));
                prod.setPrecio(resultado.getDouble("precio"));
                prod.setCantidad(resultado.getInt("Cantidad"));
                prod.setIdProveedor(resultado.getInt("idProveedor"));
                prod.setNombre(resultado.getString("Nombre"));
                lista.add(prod);
            }
        } catch (Exception e) {
            System.out.println("Error" + e);
        }

        return lista;
    }

    public void GuardarProducto(Producto pro) {
        try {
            CallableStatement call = conectar.prepareCall("call SP_I_PRODUCTOS(?,?,?,?)");
            call.setString("pNombre", pro.getProducto());
            call.setDouble("pPrecio", pro.getPrecio());
            call.setInt("pCantidad", pro.getCantidad());
            call.setInt("pProveedor", (int) pro.getIdProveedor());
            call.executeQuery();
            conectar.close();
            JOptionPane.showMessageDialog(null, "Guardado con exito");
        } catch (Exception e) {
            System.out.println(e);
        }

    }

    public void ActualiarProducto(Producto pro) {
        try {
            CallableStatement call = conectar.prepareCall("call SP_U_PRODUCTOS(?,?,?,?,?)");
            call.setInt("pId", (int) pro.getIdProducto());
            call.setString("pNombre", pro.getProducto());
            call.setDouble("pPrecio", pro.getPrecio());
            call.setInt("pCantidad", pro.getCantidad());
            call.setInt("pProveedor", (int) pro.getIdProveedor());
            call.executeQuery();
            int res = JOptionPane.showConfirmDialog(null, "¿Desea Actualizar este registro?", "Advertencia", JOptionPane.YES_NO_OPTION);
            if (res == 0) {
                call.execute();
                JOptionPane.showMessageDialog(null, "Actualizacion Exitosa");     
                conectar.close();

            } else {

            }
        } catch (Exception e) {
            System.out.println(e);
        }
    }

    public void EliminarProducto(Producto pro) {
        try {
            CallableStatement call = conectar.prepareCall("call SP_D_PRODUCTOS(?)");
            call.setInt("pId", (int) pro.getIdProducto());
            int res = JOptionPane.showConfirmDialog(null, "¿Desea Eliminar este registro?", "Advertencia", JOptionPane.YES_NO_OPTION);
            if (res == 0) {
                call.execute();
                JOptionPane.showMessageDialog(null, "Eliminado con exito");
            } else {

            }
            conectar.close();

        } catch (Exception e) {
            System.out.println(e);
        }
    }
   
public ArrayList<Producto> BuscarProductos(Producto p) {
        ArrayList<Producto> lista = new ArrayList<>();
        try {
            CallableStatement call = conectar.prepareCall("Call  SP_BUSCARPRODUCTO(?)");
            call.setString("pNombre", p.getNombre());
            ResultSet resultado = call.executeQuery();
            while (resultado.next()) {
                Producto prod = new Producto();
                prod.setIdProducto(resultado.getInt("idProducto"));
                prod.setProducto(resultado.getString("Producto"));
                prod.setPrecio(resultado.getDouble("precio"));
                prod.setCantidad(resultado.getInt("Cantidad"));
                lista.add(prod);
            }
        } catch (Exception e) {
            System.out.println("Error" + e);
        }

        return lista;
    }

}
