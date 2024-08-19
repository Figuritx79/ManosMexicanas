package mx.edu.utez.manosmexicanas.controller;

import com.google.gson.Gson;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import mx.edu.utez.manosmexicanas.dao.DireccionDao;
import mx.edu.utez.manosmexicanas.dao.ProductDao;
import mx.edu.utez.manosmexicanas.model.Color;
import mx.edu.utez.manosmexicanas.model.Domicilio;

import java.io.IOException;
import java.util.ArrayList;

@WebServlet(name = "DireccionController", value = "/Profile/direccion")
public class DireccionController extends HttpServlet {

    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String idString = req.getParameter("id");

        int id = Integer.parseInt(idString);
        ArrayList<Domicilio> domicilios = new ArrayList<>();

        DireccionDao  direccionDao = new DireccionDao();

        domicilios = direccionDao.getOneById(id);
        Gson gson = new Gson();
        String json = gson.toJson(domicilios);

        resp.setContentType("application/json");
        resp.getWriter().write(json);
    }

    protected void doPost(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
        String calle = req.getParameter("calle");
        String estado = req.getParameter("estado");
        String ciudad = req.getParameter("ciudad");
        String exterior = req.getParameter("exterior");
        String interior = req.getParameter("interior");
        String cp = req.getParameter("cp");

        String idUser = req.getParameter("id");
        int id = Integer.parseInt(idUser);

        DireccionDao direccionDao = new DireccionDao();
        boolean resultDireccion = direccionDao.insertDireccion(id, cp,calle,estado,ciudad,exterior,interior);
        if (resultDireccion){
            res.sendRedirect(req.getContextPath()+"/Profile/profile.jsp?id="+id);
        }
    }
}
