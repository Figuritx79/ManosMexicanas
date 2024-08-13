package mx.edu.utez.manosmexicanas.utils;

public class Url {
    private String url;
    private String nombreColor;

    public Url() {
    }

    public Url(String url, String nombreColor) {
        this.url = url;
        this.nombreColor = nombreColor;
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
}
