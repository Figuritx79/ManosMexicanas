package mx.edu.utez.manosmexicanas.controller;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import mx.edu.utez.manosmexicanas.dao.UserDao;
import mx.edu.utez.manosmexicanas.model.Usuario;

import java.io.IOException;

@WebServlet(name = "ChangeStatusController", value = "/dashboard/cambiarEstadoUsuario")
public class ChangeStatusController extends HttpServlet {

    protected void doPost(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
        String userId = req.getParameter("id");
        String action = req.getParameter("action");

        Usuario u = new Usuario();

        if ("deshabilitar".equals(action)) {
            UserDao userDao = new UserDao();
            u.setId(Integer.parseInt(req.getParameter("userId")));
            Boolean result = userDao.desUsuario(u);
        } else if ("habilitar".equals(action)) {
            UserDao userDao = new UserDao();
            u.setId(Integer.parseInt(req.getParameter("userId")));
            Boolean result = userDao.habUsuario(u);
        }

        res.sendRedirect("usersAdmin.jsp");
    }

}
