package com.proyect.unab.votrecinema.DAO;

import java.sql.Connection;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.sql.CallableStatement;
import com.proyect.unab.votrecinema.Conexion.Conexion;
import com.proyect.unab.votrecinema.Entidades.Roles;

public class clsLoguin {

	Conexion con = new Conexion();
    Connection conectar = con.retornarConexion();
    boolean res = false;
    public int rol=0;
    public  int id;
    public boolean Loguin(String usu, String pass) {
        ArrayList<Roles> listarUsuarioPass = new ArrayList<>();
        ArrayList<Roles> ListaPass = new ArrayList<>();
        try {
            CallableStatement call = conectar.prepareCall("call SP_S_LOGIN(?,?)");
            call.setString("pUsuario", usu);
            call.setString("pPass", pass);
            ResultSet resul = call.executeQuery();
           while(resul.next()){
           Roles rol = new Roles();
           rol.setUsuario(resul.getString("Usuario"));
           rol.setPasword(resul.getNString("Pasword"));
           rol.setTipoRol(resul.getInt("TipoRol"));
           rol.setIdRol(resul.getInt("idRoles"));
           listarUsuarioPass.add(rol);
           }
           String usubase="";
           String passbase=""; 
           for(var i:listarUsuarioPass){
           usubase=i.getUsuario();
           passbase= i.getPasword();
           rol = i.getTipoRol();
           id=i.getIdRol();
           }
           CallableStatement st2 = conectar.prepareCall("call SP_S_CRIP(?)");
            st2.setString("PcripPass", pass);
            ResultSet rs2 = st2.executeQuery();
            while (rs2.next()) {
               Roles escrip = new Roles();
                escrip.setPasword(rs2.getString("crip"));
                ListaPass.add(escrip);
            }
            String scrippass =null;
            for(var i:ListaPass ){
            scrippass = i.getPasword();
            pass = scrippass;
                
            }
         
               if (usubase != null && passbase != null) {
                if (usubase.equals(usu) && passbase.equals(pass)) {
                    res = true;
                } else {
                    res = false;
               
                }
            }
               
               
            conectar.close();
        } catch (Exception e) {
        }

        return res;
    }

}
