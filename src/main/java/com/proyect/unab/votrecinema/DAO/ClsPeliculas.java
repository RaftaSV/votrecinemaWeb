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
 * @author 14-ck0013lab
 */
public class ClsPeliculas {

    Conexion con = new Conexion();
    Connection conectar = con.retornarConexion();

    public ArrayList<Peliculas> ListaPeliculas() {
        ArrayList<Peliculas> peliculas = new ArrayList<>();
        try {
            CallableStatement Cal = conectar.prepareCall("CALL SP_S_PELICULAS()");
            ResultSet resultado = Cal.executeQuery();
            while (resultado.next()) {
                Peliculas peli = new Peliculas();
                peli.setIdPelicula(resultado.getInt("idPeliculas"));
                peli.setNombre(resultado.getString("Nombre"));
                peli.setPortada(resultado.getBytes("Portada"));
                peli.setYear(resultado.getDate("Yearr"));
                peli.setDuracion(resultado.getTime("Duracion"));
                peli.setSipnosis(resultado.getString("Sipnosis"));
                peli.setClasificacion(resultado.getInt("Clasificacion"));
                peli.setTipo(resultado.getInt("Tipo"));
                peliculas.add(peli);

            }
            conectar.close();
        } catch (Exception e) {
            System.out.println("Error" + e);
        }

        return peliculas;
    }

    public void InsertarPelicula(Peliculas peli) {
        try {
            CallableStatement call = conectar.prepareCall("call SP_I_PELICULAS(?,?,?,?,?,?,?,?)");
            call.setString("pNombre", peli.getNombre());
            call.setBytes("pPortada", peli.getPortada());
            call.setDate("pYear", new java.sql.Date(peli.getYear().getTime()));
            call.setTime("pDuracion", peli.getDuracion());
            call.setString("pSipnosis", peli.getSipnosis());
            call.setInt("pTipo", peli.getTipo());
            call.setInt("pClasificacion", peli.getClasificacion());
            call.setDouble("pPrecio", peli.getPrecio());
            call.executeQuery();
            JOptionPane.showMessageDialog(null, "Guardado exitosamente");
            conectar.close();
        } catch (Exception e) {
            System.out.println(e);
        }

    }
     public void InsertarPeliculamayores(Peliculas peli) {
        try {
            CallableStatement call = conectar.prepareCall("call SP_I_PELICULASMAYORES(?,?,?,?,?,?,?,?)");
            call.setString("pNombre", peli.getNombre());
            call.setBytes("pPortada", peli.getPortada());
            call.setDate("pYear", new java.sql.Date(peli.getYear().getTime()));
            call.setTime("pDuracion", peli.getDuracion());
            call.setString("pSipnosis", peli.getSipnosis());
            call.setInt("pTipo", peli.getTipo());
            call.setInt("pClasificacion", peli.getClasificacion());
            call.setDouble("pPrecio", peli.getPrecio());
            call.executeQuery();
            JOptionPane.showMessageDialog(null, "Guardado exitosamente");
            conectar.close();
        } catch (Exception e) {
            System.out.println(e);
        }

    }


    public void ActualizarPelicula(Peliculas peli) {
        try {
            CallableStatement call = conectar.prepareCall("call SP_U_PELICULAS(?,?,?,?,?,?,?,?,?)");
            call.setInt("pID", peli.getIdPelicula());
            call.setString("pNombre", peli.getNombre());
            call.setBytes("pPortada", peli.getPortada());
            call.setDate("pYear", new java.sql.Date(peli.getYear().getTime()));
            call.setTime("pDuracion", peli.getDuracion());
            call.setString("pSipnosis", peli.getSipnosis());
            call.setInt("pTipo", peli.getTipo());
            call.setInt("pClasificacion", peli.getClasificacion());
            call.setDouble("pPrecio", peli.getPrecio());
            int res = JOptionPane.showConfirmDialog(null, "¿Desea Actualizar este registro?", "Advertencia", JOptionPane.YES_NO_OPTION);
            if (res == 0) {
                call.execute();
                JOptionPane.showMessageDialog(null, "Actualizado exitosamente");
                conectar.close();
            } else {

            }

            conectar.close();
        } catch (Exception e) {
            System.out.println(e);
        }
        

    }
    public void ActualizarPeliculaMayores(Peliculas peli) {
        try {
            CallableStatement call = conectar.prepareCall("call SP_U_PELICULASMAYORES(?,?,?,?,?,?,?,?,?)");
            call.setInt("pID", peli.getIdPelicula());
            call.setString("pNombre", peli.getNombre());
            call.setBytes("pPortada", peli.getPortada());
            call.setDate("pYear", new java.sql.Date(peli.getYear().getTime()));
            call.setTime("pDuracion", peli.getDuracion());
            call.setString("pSipnosis", peli.getSipnosis());
            call.setInt("pTipo", peli.getTipo());
            call.setInt("pClasificacion", peli.getClasificacion());
            call.setDouble("pPrecio", peli.getPrecio());
            int res = JOptionPane.showConfirmDialog(null, "¿Desea Actualizar este registro?", "Advertencia", JOptionPane.YES_NO_OPTION);
            if (res == 0) {
                call.execute();
                JOptionPane.showMessageDialog(null, "Actualizado exitosamente");
                conectar.close();
            } else {

            }

            conectar.close();
        } catch (Exception e) {
            System.out.println(e);
        }

    }

    public ArrayList<Peliculas> ListaPeliculasedi(Peliculas pelicula) {
        ArrayList<Peliculas> peliculas = new ArrayList<>();
        try {
            CallableStatement Cal = conectar.prepareCall("CALL SP_S_BUSCARPELICULA(?)");
            Cal.setInt("pId", pelicula.getIdPelicula());
            ResultSet resultado = Cal.executeQuery();
            while (resultado.next()) {
                Peliculas peli = new Peliculas();
                peli.setIdPelicula(resultado.getInt("idPeliculas"));
                peli.setNombre(resultado.getString("Nombre"));
                peli.setPortada(resultado.getBytes("Portada"));
                peli.setYear(resultado.getDate("Yearr"));
                peli.setDuracion(resultado.getTime("Duracion"));
                peli.setSipnosis(resultado.getString("Sipnosis"));
                peli.setClasificacion(resultado.getInt("Clasificacion"));
                peli.setTipo(resultado.getInt("Tipo"));
                peli.setPrecio(resultado.getDouble("Precio"));
                peliculas.add(peli);

            }
            conectar.close();
        } catch (Exception e) {
            System.out.println("Error" + e);
        }
        return peliculas;
    }

    public void eliminar(Peliculas pelicula) {
        try {
            CallableStatement call = conectar.prepareCall("call SP_D_PELICULAS(?)");
            call.setInt("pId", pelicula.getIdPelicula());
            int res = JOptionPane.showConfirmDialog(null, "¿Desea Eliminar este registro?", "Advertencia", JOptionPane.YES_NO_OPTION);
            if (res == 0) {
                call.execute();
                JOptionPane.showMessageDialog(null, "Eliminado exitosamente");
            } else {

            }
            conectar.close();

        } catch (Exception e) {
            System.out.println("Error" + e);
        }

    }
       public ArrayList<Peliculas> ListaPeliculasBuscar(Peliculas p) {
        ArrayList<Peliculas> peliculas = new ArrayList<>();
        try {
            CallableStatement Cal = conectar.prepareCall("call SP_BUSCARPELICULA(?)");
            Cal.setString("pNombre", p.getNombre());
            ResultSet resultado = Cal.executeQuery();
            while (resultado.next()) {
                Peliculas peli = new Peliculas();
                peli.setIdPelicula(resultado.getInt("idPeliculas"));
                peli.setNombre(resultado.getString("Nombre"));
                peli.setPortada(resultado.getBytes("Portada"));
                peli.setYear(resultado.getDate("Yearr"));
                peli.setDuracion(resultado.getTime("Duracion"));
                peli.setSipnosis(resultado.getString("Sipnosis"));
                peli.setClasificacion(resultado.getInt("Clasificacion"));
                peli.setTipo(resultado.getInt("Tipo"));
                peliculas.add(peli);

            }
            conectar.close();
        } catch (Exception e) {
            System.out.println("Error" + e);
        }

        return peliculas;
    }

}
