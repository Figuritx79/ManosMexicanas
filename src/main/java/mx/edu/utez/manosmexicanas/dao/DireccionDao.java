package mx.edu.utez.manosmexicanas.dao;

import mx.edu.utez.manosmexicanas.model.Domicilio;
import mx.edu.utez.manosmexicanas.model.Usuario;
import mx.edu.utez.manosmexicanas.utils.DbConnectionManager;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

public class DireccionDao {
    public ArrayList<Domicilio> getOneById(int id){
        var query = "CALL getDomicilio(?)";
        ArrayList<Domicilio> domicilios = new ArrayList<>();
        try(Connection conn = DbConnectionManager.getConnection();
            PreparedStatement ps = conn.prepareStatement(query)){

            ps.setInt(1,id);
            ResultSet rs = ps.executeQuery();
            while(rs.next()){
                Domicilio domicilio = new Domicilio();
                domicilio.setId(rs.getInt("id"));
                domicilio.setNumeroExterior(rs.getString("numeroExterior"));
                domicilio.setEstado(rs.getString("estado"));
                domicilio.setCalle(rs.getString("calle"));
                domicilio.setCiudad(rs.getString("ciudad"));
                domicilios.add(domicilio);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return domicilios;
    }
    public boolean insertDireccion(int id, String cp, String calle, String estado,
                                   String ciudad, String exterior, String interior){
        var query ="CALL insertDireccion(?,?,?,?,?,?,?)";
        var flag = false;
        try(Connection conn = DbConnectionManager.getConnection(); PreparedStatement ps = conn.prepareStatement(query);) {
            ps.setInt(1,id);
            ps.setString(2,cp);
            ps.setString(3,calle);
            ps.setString(4,ciudad);
            ps.setString(5,estado);
            ps.setString(6,exterior);
            ps.setString(7,interior);
            if (ps.executeUpdate() > 0){
                flag = true;
            }
        } catch (SQLException e) {
           e.printStackTrace();
        }
        return flag;
    }
}
