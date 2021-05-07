/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.proyect.unab.votrecinema.DAO;
import com.proyect.unab.votrecinema.Conexion.Conexion;
import com.proyect.unab.votrecinema.Entidades.*;

import java.sql.CallableStatement;
import java.sql.*;
import java.util.*;

/**
 *
 * @author 14-ck0013lab
 */
public class ClsRoles {

    Conexion conn = new Conexion();
    Connection conect = conn.retornarConexion();

    public ArrayList<Roles> MostrarRoles() {
        ArrayList<Roles> Roll = new ArrayList<>();

        try {
            CallableStatement cs = conect.prepareCall("call SP_S_ROLES ()");
            ResultSet resultado = cs.executeQuery();
            while (resultado.next()) {
                Roles Rol = new Roles();
                Rol.setIdRol(resultado.getInt("idRoles"));
                Rol.setUsuario(resultado.getString("Usuario"));
                Rol.setPasword(resultado.getString("Pasword"));
                Rol.setTipoRol(resultado.getInt("TipoRol"));
                Rol.setNombres(resultado.getString("Nombres"));
                Rol.setId_Persona(resultado.getInt("idPersonas"));
                Roll.add(Rol);

            }

            conect.close();

        } catch (Exception e) {
            System.out.println(e);
        }

        return Roll;
    }

    public void AgregarRol(Roles r) {
        try {
            CallableStatement cs = conect.prepareCall("call SP_I_ROLES(?,?,?,?)");
            cs.setString("pUsuario", r.getUsuario());
            cs.setString("pPass", r.getPasword());
            cs.setInt("pTipoRol", (int) r.getTipoRol());
            cs.setInt("pIdPersona", (int) r.getId_Persona());
            cs.execute();
            System.out.println("Guardado Exitoso");
        } catch (Exception e) {
            System.out.println("Error" + e);
        }

    }

    public ArrayList<Roles> MostrarUsuarios() {
    
        ArrayList<Roles> Roll = new ArrayList<>();

        try {
            CallableStatement cs = conect.prepareCall("select b.idRoles,a.Nombres,a.idPersonas,b.Usuario,b.Pasword,b.TipoRol from personas as a inner join roles as b on a.idPersonas = b.Id_persona where b.estado=0 and b.tiporol=2 order by idroles desc;");
            ResultSet resultado = cs.executeQuery();
            while (resultado.next()) {
                Roles Rol = new Roles();
                Rol.setIdRol(resultado.getInt("idRoles"));
                Rol.setUsuario(resultado.getString("Usuario"));
                Rol.setPasword(resultado.getString("Pasword"));
                Rol.setTipoRol(resultado.getInt("TipoRol"));
                Rol.setNombres(resultado.getString("Nombres"));
                Rol.setId_Persona(resultado.getInt("idPersonas"));
                Roll.add(Rol);

            }

            conect.close();

        } catch (Exception e) {
            System.out.println(e);
        }

        return Roll;
    }

  

    public void ActualizarRol(Roles r) {
        try {
            CallableStatement cs = conect.prepareCall("call SP_U_ROLES(?,?,?,?,?)");
            cs.setInt("pId", (int) r.getIdRol());
            cs.setString("pUsuario", r.getUsuario());
            cs.setString("pPass", r.getPasword());
            cs.setInt("pTipoRol", (int) r.getTipoRol());
            cs.setInt("pIdPersona", (int) r.getId_Persona());
            cs.execute();
            System.out.println("Actualizacion Exitosa");
               
                conect.close();

            
        } catch (Exception e) {
            System.out.println("Error" + e);
        }

    }
     public void ActualizarRolsinpass(Roles r) {
        try {
            CallableStatement cs = conect.prepareCall("call SP_U_ROLESSINPASS(?,?,?,?)");
            cs.setInt("pId", (int) r.getIdRol());
            cs.setString("pUsuario", r.getUsuario());
            cs.setInt("pTipoRol", (int) r.getTipoRol());
            cs.setInt("pIdPersona", (int) r.getId_Persona());
            cs.execute();
            System.out.println("Actualizacion Exitosa");
                
                conect.close();

           
        } catch (Exception e) {
            System.out.println("Error" + e);
        }

    }

    public void EliminarRol(Roles r) {
        try {
            CallableStatement cs = conect.prepareCall("call SP_D_ROLES(?)");
            cs.setInt("pIdRol", (int) r.getIdRol());
            cs.execute();
            System.out.println("Eliminado Exitoso");
            

        } catch (Exception e) {
            System.out.println("Error" + e);
        }

    }

    public void InsertarAdmin(Roles rol) {
        try {
            CallableStatement call = conect.prepareCall("call  votrecinéma.SP_REGISTROADMIN(?,?,?,?,?)");
            call.setString("pNombres", rol.getNombres());
            call.setString("pApellidos", rol.getApellidos());
            call.setString("pDUI", rol.getDUI());
            call.setString("pUser", rol.getUsuario());
            call.setString("pPass", rol.getPasword());
            call.executeQuery();
            System.out.println("Registro exitoso");
        } catch (Exception e) {
            System.out.println("error" + e);
        }
    }

}
