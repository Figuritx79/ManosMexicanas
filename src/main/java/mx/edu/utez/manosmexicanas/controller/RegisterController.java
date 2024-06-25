package mx.edu.utez.manosmexicanas.controller;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import mx.edu.utez.manosmexicanas.dao.UserDao;
import mx.edu.utez.manosmexicanas.model.Usuario;
import mx.edu.utez.manosmexicanas.utils.DbConnectionManager;

import java.io.IOException;
import java.sql.Connection;
import java.sql.SQLException;
import java.sql.SQLOutput;

@WebServlet(name = "RegisterController",value = "/registro")
public class RegisterController extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
        Usuario user = new Usuario();
        user.setNombre(req.getParameter("nombre"));
        user.setApellido(req.getParameter("apellido"));
        user.setCorreo(req.getParameter("correo"));
        user.setTelefono(req.getParameter("tel"));
        user.setPassword(req.getParameter("pass"));
        try(Connection conn = DbConnectionManager.getConnection()){
            UserDao userDao = new UserDao();
            Boolean  result =  userDao.insert(user);
            if (result){
                res.sendRedirect("login.jsp");
            }
            if(!result){
                res.sendRedirect("register.jsp");
            }
        }catch (SQLException e){
            e.printStackTrace();
        }
    }
}
