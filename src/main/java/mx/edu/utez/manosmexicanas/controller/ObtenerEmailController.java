package mx.edu.utez.manosmexicanas.controller;


import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import mx.edu.utez.manosmexicanas.dao.UserDao;
import org.apache.http.impl.bootstrap.HttpServer;

import java.io.IOException;

@WebServlet(name = "ObtenerEmailController", value = "/searchMail")
public class ObtenerEmailController extends HttpServlet {
    protected void doPost(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
        String email = req.getParameter("email");
        UserDao  ud = new UserDao();
        boolean exist = ud.getOne(email);
        if (exist) {
           res.setStatus(200);
           res.sendRedirect("index.jsp");
        }
        if (!exist) {
            res.setStatus(404);
        }


    }

    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
    }
}
