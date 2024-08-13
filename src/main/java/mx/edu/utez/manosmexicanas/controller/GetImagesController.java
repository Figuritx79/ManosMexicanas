package mx.edu.utez.manosmexicanas.controller;

import com.google.gson.Gson;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import mx.edu.utez.manosmexicanas.dao.ImageDao;
import mx.edu.utez.manosmexicanas.model.Image;
import mx.edu.utez.manosmexicanas.utils.Url;

import java.io.IOException;
import java.util.ArrayList;
import java.util.Map;

@WebServlet(name = "GetImagesController", value = "/getImages")
public class GetImagesController extends HttpServlet {

    protected void doGet(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
        String idString = req.getParameter("id");
        Gson jsonRequest = new Gson();
        ImageDao imageDao = new ImageDao();
        int id = 0;
        if (!idString.isEmpty()){
           id = Integer.parseInt(idString);
        }
        ArrayList<Url> urls = imageDao.getImages(id);

        String response = jsonRequest.toJson(urls);

        res.setContentType("application/json");

        res.getWriter().write(response);



    }
}
