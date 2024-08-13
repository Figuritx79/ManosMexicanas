package mx.edu.utez.manosmexicanas.dao;

import com.mysql.cj.xdevapi.PreparableStatement;
import mx.edu.utez.manosmexicanas.model.Color;
import mx.edu.utez.manosmexicanas.model.Image;
import mx.edu.utez.manosmexicanas.utils.DbConnectionManager;
import mx.edu.utez.manosmexicanas.utils.Url;

import java.sql.*;
import java.util.ArrayList;

public class ImageDao {
    public ArrayList<Url> getImages(int id){
        ArrayList<Url> urls  = new ArrayList<>();
        var query = "CALL getImagesUrl(?)";
        try (Connection conn = DbConnectionManager.getConnection();
             PreparedStatement ps = conn.prepareStatement(query);){
            ps.setInt(1,id);
            ResultSet rs = ps.executeQuery();
            while (rs.next()){
                Url url = new Url();
                url.setUrl(rs.getString("url"));
                url.setNombreColor(rs.getString("nombre"));
                urls.add(url);
            }
            rs.close();
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return urls;

    }
}
