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


@WebServlet(name = "RegisterController",value = "/registro")
public class RegisterController extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
        String correo = req.getParameter("correo");
        String nombre = req.getParameter("nombre");
        String apellido = req.getParameter("apellido");
        String telefono = req.getParameter("tel");
        String password = req.getParameter("pass");

        Usuario user = new Usuario();
        user.setCorreo(correo);
        user.setNombre(nombre);
        user.setApellido(apellido);
        user.setTelefono(telefono);
        user.setPassword(password);
        try(Connection conn = DbConnectionManager.getConnection()){
            UserDao userDao = new UserDao();
            boolean  result =  userDao.insert(user);
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
