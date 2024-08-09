package mx.edu.utez.manosmexicanas.utils;

import java.util.Random;

public class RadomToken {
    private static final String LETRAS = "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ";
    private static final Random RANDOM = new Random();

    public  static String randomToken(){
        StringBuilder token = new StringBuilder();
        for (int i = 0; i < 30; i++){
             int letraRandom = RANDOM.nextInt(LETRAS.length());
             token.append(LETRAS.charAt(letraRandom));

        }
        return token.toString();
    }
}
