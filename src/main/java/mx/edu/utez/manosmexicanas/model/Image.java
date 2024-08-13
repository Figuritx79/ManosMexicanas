package mx.edu.utez.manosmexicanas.model;

public class Image {
    private int id;

    private int idProducto;
    private Color color;
    private String url;

    public Image(int id, int idProducto, Color color, String url) {
        this.id = id;
        this.idProducto = idProducto;
        this.color = color;
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

    public String getUrl() {
        return url;
    }

    public void setUrl(String url) {
        this.url = url;
    }
    public Color getColor() {
        return color;
    }

    public void setColor(Color color) {
        this.color = color;
    }
}
