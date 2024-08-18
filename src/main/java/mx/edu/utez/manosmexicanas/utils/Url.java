package mx.edu.utez.manosmexicanas.utils;

public class Url {
    private String url;
    private String nombreColor;
    private int idColor ;

    public Url() {
    }

    public Url(String url, String nombreColor, int idColor) {
        this.url = url;
        this.nombreColor = nombreColor;
        this.idColor = idColor;
    }


    public String getUrl() {
        return url;
    }

    public void setUrl(String url) {
        this.url = url;
    }

    public String getNombreColor() {
        return nombreColor;
    }

    public void setNombreColor(String nombreColor) {
        this.nombreColor = nombreColor;
    }

    public int getIdColor() {
        return idColor;
    }

    public void setIdColor(int idColor) {
        this.idColor = idColor;
    }
}
