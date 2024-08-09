package mx.edu.utez.manosmexicanas.controller;


import jakarta.mail.Session;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import mx.edu.utez.manosmexicanas.dao.UserDao;
import mx.edu.utez.manosmexicanas.model.Usuario;
import mx.edu.utez.manosmexicanas.utils.DbConnectionManager;
import mx.edu.utez.manosmexicanas.utils.GmailSender;
import mx.edu.utez.manosmexicanas.utils.RadomToken;
import org.apache.http.impl.bootstrap.HttpServer;

import java.io.IOException;
import java.sql.Connection;
import java.sql.SQLException;
import java.util.Optional;

@WebServlet(name = "ObtenerEmailController", value = "/searchMail")
public class ObtenerEmailController extends HttpServlet {
    protected void doPost(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
        String email = req.getParameter("email");
        UserDao userDao = new UserDao();
        Usuario user = userDao.getOne(email);
        if (user.getStatus()){
            String token = RadomToken.randomToken();
            userDao.insertToken(user.getId(), token);
            String asunto = "Restablecimineto de credenciales";
            String mensaje = "<h1>Le enviamos es código para el restablecimiento de su contraseña</h1>\n"+
            "<a href=\"http://localhost:8080/ManosMexicanas_war_exploded/searchMail?recu="+token+"\">haz click AQUI PARA RESTABLECER TU CONTRASEÑA</a>";
            try {
                GmailSender sender = new GmailSender();
                sender.sendMail(email,asunto,mensaje);
                var sesesion = req.getSession();
                sesesion.setAttribute("mensaje","Revisar tu correo en el apartado de spam para validar tu recuperacion");
                res.sendRedirect("mensaje.jsp");
            } catch (Exception e) {
                throw new RuntimeException(e);
            }
        }else{
            res.setStatus(500);
        }
    }

    protected void doGet(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
        String token = req.getParameter("recu");
        UserDao userDao = new UserDao();
        int exist = userDao.searchToken(token);
        if (exist == 0){
            res.sendRedirect("404.jsp");
            res.setStatus(404);
        }
        if(exist > 0) {
            var session = req.getSession();
            session.setMaxInactiveInterval(30* 60);
            session.setAttribute("user",exist);
            res.sendRedirect("restaurarContrasena.jsp?user="+exist);
        }

    }
}
