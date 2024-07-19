package mx.edu.utez.manosmexicanas.utils;
import com.mysql.cj.jdbc.Driver;
import com.zaxxer.hikari.HikariConfig;
import com.zaxxer.hikari.HikariDataSource;

import java.sql.Connection;
import  java.sql.DriverManager;
import java.sql.SQLException;

public class DbConnectionManager {
    private static final String  url = "jdbc:mysql://localhost:3306/ManosMexicanas";
    private static final String user = "root";
    private static final String password = "";
    private  static final HikariConfig config = new HikariConfig();
    private static final HikariDataSource source;

    private DbConnectionManager() {
    }

    static {
        try{
            Class.forName("com.mysql.cj.jdbc.Driver");
        } catch (ClassNotFoundException e) {
            e.getMessage();
        }

        config.setJdbcUrl(url);
        config.setUsername(user);
        config.setPassword(password);
        config.setMinimumIdle(100);
        config.setMaximumPoolSize(1000);
        config.setConnectionTimeout(3000);

        source = new HikariDataSource(config);
    }
    public static  Connection getConnection() throws SQLException {
        return source.getConnection();
    }
}
