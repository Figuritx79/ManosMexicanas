package mx.edu.utez.manosmexicanas.utils;

import mx.edu.utez.manosmexicanas.dao.ProductDao;
import mx.edu.utez.manosmexicanas.dao.UserDao;

public class Pagination {

    private static int page;

    public static  int pages(){
        ProductDao productDao = new ProductDao();
        return productDao.countProducts();
    }

    public static int offsetPage(int page){
        int offset = (page - 1)  * 6;
        return offset;
    }

    public static int getPage() {
        return page;
    }

    public static void setPage(int page) {
        Pagination.page = page;
    }

}
