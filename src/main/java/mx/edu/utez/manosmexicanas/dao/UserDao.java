package mx.edu.utez.manosmexicanas.dao;

import mx.edu.utez.manosmexicanas.model.Role;
import mx.edu.utez.manosmexicanas.model.Usuario;
import mx.edu.utez.manosmexicanas.utils.DbConnectionManager;

import java.sql.*;
import java.util.ArrayList;
import java.util.Optional;
import java.util.PropertyPermission;

public class UserDao {
<<<<<<< HEAD

    public boolean habUsuario(Usuario u) {
        boolean flag = false;
        String query = "update usuario set status=1 where id = ?";
        try {
            Connection con = DbConnectionManager.getConnection();
            PreparedStatement ps = con.prepareStatement(query);

            ps.setInt(1, u.getId());

            if(ps.executeUpdate()>0){
                flag = true;
            }
        }catch (SQLException e){
            e.printStackTrace();
        }
        return flag;
    }

    public boolean desUsuario(Usuario u) {
        boolean flag = false;
        String query = "update usuario set status=0 where id = ?";
        try {
            Connection con = DbConnectionManager.getConnection();
            PreparedStatement ps = con.prepareStatement(query);

            ps.setInt(1, u.getId());

            if(ps.executeUpdate()>0){
                flag = true;
            }
        }catch (SQLException e){
            e.printStackTrace();
        }
        return flag;
    }

=======
>>>>>>> 82e74a394e6a990371f80ec9362086668db57dcb
    public ArrayList<Usuario> getAll() {
        ArrayList<Usuario> lista = new ArrayList<>();
        String query = "SELECT * from usuario";
        try(Connection con = DbConnectionManager.getConnection(); PreparedStatement ps = con.prepareStatement(query);ResultSet rs = ps.executeQuery();) {
            while (rs.next()) {
                Usuario u = new Usuario();
                u.setId(rs.getInt("id"));
                u.setNombre(rs.getString("nombre"));
                u.setApellido(rs.getString("apellido"));
                u.setCorreo(rs.getString("correo"));
                u.setTelefono(rs.getString("telefono"));
                u.setStatus(rs.getBoolean("status"));
                lista.add(u);


            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return lista;
    }

    public  boolean insert(Usuario user){
        boolean flag = false;
        String query = "CALL registerUser(?, ?, ?,?,?)";
        try (Connection conn = DbConnectionManager.getConnection(); PreparedStatement ps = conn.prepareStatement(query);){
            ps.setString(1,user.getNombre());
            ps.setString(2, user.getApellido());
            ps.setString(3,user.getCorreo());
            ps.setString(4,user.getTelefono());
            ps.setString(5,user.getPassword());
            if (ps.executeUpdate() > 0) {
                flag = true;
            }

        }catch (SQLException e) {
            throw new RuntimeException(e);
        }
        return flag;
    }

    public Usuario loginAdmin(String correo, String password){
        Usuario user = new Usuario();
        Role roleUser = new Role();
        boolean flag = false;
        String query = "CALL loginAdmin(?, ?)";
        try(Connection conn = DbConnectionManager.getConnection(); PreparedStatement ps = conn.prepareStatement(query);){
            ps.setString(1,correo);
            ps.setString(2,password);
           ResultSet rs  = ps.executeQuery();
            if(rs.next()){
               var role = rs.getInt("role");
               roleUser.setId(role);
               var id = rs.getInt("id");
               var nombre = rs.getString("nombre");
               var apellido = rs.getString("apellido");
               var mail = rs.getString("correo");
               user.setNombre(nombre);
               user.setId(id);
               user.setApellido(apellido);
               user.setCorreo(mail);
               user.setRole(roleUser);
               rs.close();
               return user;
            }
        }catch (SQLException e){
            e.getMessage();
        }

        return null;
    }

    public Usuario login(String correo, String password){
        Usuario user  = new Usuario();
        String query = "CALL login(?, ?)";
        Role role = new Role();
        try(Connection conn = DbConnectionManager.getConnection(); PreparedStatement ps =  conn.prepareStatement(query); ){
          ps.setString(1,correo);
          ps.setString(2,password);
          ResultSet rs = ps.executeQuery();
          if(rs.next()){
              user.setId(rs.getInt("id"));
              user.setNombre(rs.getString("nombre"));
              user.setApellido(rs.getString("apellido"));
              user.setCorreo(rs.getString("correo"));
              role.setId(rs.getInt("role"));
              user.setRole(role);
              return user;
          }
          rs.close();
        }catch (SQLException e){
            e.getErrorCode();
        }
        return null;
    }

    public Usuario getOne(String email) {
        String query = "CALL getMail(?);";
        Usuario user= new Usuario();

        try(Connection conn = DbConnectionManager.getConnection(); PreparedStatement ps = conn.prepareStatement(query);){
           ps.setString(1,email);
           ResultSet rs = ps.executeQuery();
           if(rs.next()) {
               user.setId(rs.getInt("id"));
               user.setNombre(rs.getString("nombre"));
               user.setApellido(rs.getString("apellido"));
               user.setCorreo(rs.getString("correo"));
               user.setStatus(rs.getBoolean("status"));
           }
            rs.close();
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
        return user;

    }
    public boolean insertToken(int id, String token){
        boolean flag = false;
        String query = "CALL setTokenUser(?,?);";
        try(Connection conn =  DbConnectionManager.getConnection(); PreparedStatement ps = conn.prepareStatement(query);){
           ps.setString(1,token);
           ps.setInt(2,id);
           if (ps.executeUpdate() > 0){
               flag = true;
           }

        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
        return flag;
    }

    public int  searchToken(String token){
        var query = "CALL searchToken(?)";
        var id = 0;
        try(Connection conn = DbConnectionManager.getConnection(); PreparedStatement ps = conn.prepareStatement(query);) {
            ps.setString(1,token);
            ResultSet rs = ps.executeQuery();
            if (rs.next()){
                id = rs.getInt("id");
            }
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
        return id;
    }

    public boolean updatePassword(int idUser, String password){
        var flag = false ;
        var query = "CALL updatePassword(?,?);";
        try(Connection conn = DbConnectionManager.getConnection(); PreparedStatement ps = conn.prepareStatement(query);) {
            ps.setString(1,password);
            ps.setInt(2,idUser);
            if(ps.executeUpdate() >  0){
              flag = true;
            }
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
        return flag;
    }

}
