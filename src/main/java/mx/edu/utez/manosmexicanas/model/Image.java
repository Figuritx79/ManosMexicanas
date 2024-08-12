package mx.edu.utez.manosmexicanas.model;

public class Image {
    private int id;
    private int idProducto;
    private int idColor ;
    private String url;

    public Image(int id, int idProducto, int idColor, String url) {
        this.id = id;
        this.idProducto = idProducto;
        this.idColor = idColor;
        this.url = url;
    }

    public Image() {
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public int getIdProducto() {
        return idProducto;
    }

    public void setIdProducto(int idProducto) {
        this.idProducto = idProducto;
    }

    public int getIdColor() {
        return idColor;
    }

    public void setIdColor(int idColor) {
        this.idColor = idColor;
    }

    public String getUrl() {
        return url;
    }

    public void setUrl(String url) {
        this.url = url;
    }
}
