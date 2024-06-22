package mx.edu.utez.manosmexicanas.dao;

import mx.edu.utez.manosmexicanas.model.Usuario;
import mx.edu.utez.manosmexicanas.utils.DbConnectionManager;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

public class UserDao {
    public  boolean insert(Usuario user){
        boolean flag = false;
        String query = "CALL registerUser()";
        try {
            Connection conn = DbConnectionManager.getConnection();
            PreparedStatement ps = conn.prepareStatement();

        }catch (SQLException e) {
            throw new RuntimeException(e);
        }
    }
}
