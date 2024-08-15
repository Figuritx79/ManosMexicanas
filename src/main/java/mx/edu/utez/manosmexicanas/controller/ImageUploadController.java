package mx.edu.utez.manosmexicanas.controller;

import com.cloudinary.Cloudinary;
import com.cloudinary.utils.ObjectUtils;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.MultipartConfig;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.Part;
import mx.edu.utez.manosmexicanas.dao.ProductDao;

import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.util.Map;
import java.util.Random;

@MultipartConfig
@WebServlet(name = "ImageUploadController",value = "/dashboard/imageUp")
public class ImageUploadController extends HttpServlet {

    protected void doPost(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
        Part part = req.getPart("product");

        String colorString = req.getParameter("color");

        int color = Integer.parseInt(colorString);

        String idString = req.getParameter("id");

        int id = Integer.parseInt(idString);
        int ramdomId = randomId();
        byte[] uploadImage = convertPartToByteArray(part);

        ProductDao productoDao = new ProductDao();

        Map config = ObjectUtils.asMap(
                "cloud_name", "dt9d7lbhg",
                "api_key", "382564855514374",
                "api_secret", "raFly8GKU3Cgd1S_atozaxcrFvc",
                "public_id","product"+ramdomId,
                "resource_type","image");

        Cloudinary cloudinary = new Cloudinary();

        Map result = cloudinary.uploader().upload(uploadImage, config);

        String url = result.get("url").toString();

        boolean resultDao =  productoDao.image(id, color,url);
        if (resultDao){
            res.sendRedirect("image.jsp?id="+id);

        }else {
            res.setStatus(404);
        }

    }
    public byte[] convertPartToByteArray(Part part) throws IOException {
        try (InputStream inputStream = part.getInputStream();
             ByteArrayOutputStream buffer = new ByteArrayOutputStream()) {

            int nRead;
            byte[] data = new byte[1024]; // Tamaño del buffer

            while ((nRead = inputStream.read(data, 0, data.length)) != -1) {
                buffer.write(data, 0, nRead);
            }

            return buffer.toByteArray();
        }
    }

    public int randomId(){
        Random random = new Random();
        int idRandom = random.nextInt(30000);
        return idRandom;
    }
}
