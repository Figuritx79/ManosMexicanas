package mx.edu.utez.manosmexicanas.controller;

import com.google.gson.Gson;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import mx.edu.utez.manosmexicanas.dao.ProductDao;
import mx.edu.utez.manosmexicanas.model.Color;

import java.io.IOException;
import java.util.ArrayList;

@WebServlet(name = "ColorController", value = "/dashboard/getColor")
public class ColorController extends HttpServlet {
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        ArrayList<Color> colorListo = new ArrayList<Color>();
        ProductDao daoColor = new ProductDao();

        colorListo = daoColor.getColors();
        Gson gson = new Gson();
        String json = gson.toJson(colorListo);

        resp.setContentType("application/json");
        resp.getWriter().write(json);

    }
}
