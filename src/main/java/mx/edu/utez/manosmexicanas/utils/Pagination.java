package mx.edu.utez.manosmexicanas.utils;

import mx.edu.utez.manosmexicanas.dao.ProductDao;
import mx.edu.utez.manosmexicanas.dao.UserDao;

public class Pagination {


    public static  int pages(){
        ProductDao productDao = new ProductDao();
        int pages = (int) Math.ceil((double) productDao.totalProducts() / 6);
        return pages;
    }

    public static int offsetPage(int page){
        int offset = (page - 1)  * 6;
        return offset;
    }


}
