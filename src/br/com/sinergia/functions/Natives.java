package br.com.sinergia.functions;

import javafx.scene.image.Image;

import java.io.ByteArrayInputStream;
import java.io.InputStream;
import java.sql.Timestamp;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.LinkedHashMap;
import java.util.Map;

public class Natives {

    public static SimpleDateFormat DataHoraFormater = new SimpleDateFormat("dd/MM/yyyy HH:mm:ss");
    public static SimpleDateFormat DataFormater = new SimpleDateFormat("dd/MM/yyyy");
    public static SimpleDateFormat HoraFormater = new SimpleDateFormat("HH:mm:ss");
    public static SimpleDateFormat HourMinFormater = new SimpleDateFormat("HH:mm");
    public static Map<Integer, Image> MapCachImgUsers = new LinkedHashMap<>();

    public static String formatDate(SimpleDateFormat formater, String value) {
        if (Nvl(value).equals("")) return "";
        else return formater.format(value);
    }

    public static String formatDate(SimpleDateFormat formater, Timestamp value) {
        if (value == null) return "";
        else return formater.format(value);
    }

    public static String Nvl(String Valor) {
        if (Valor == null) {
            return "";
        } else {
            return Valor;
        }
    }

    public static Boolean ToBoo(String Valor) {
        if (Valor.equals("S") || Valor.equals("s") || Valor.equals("Sim")) {
            return true;
        } else {
            return false;
        }
    }

    public static Boolean ToBoo(char Valor) {
        if (Valor == 'S') return true;
        else return false;
    }

    public static Boolean ToBoo(int Valor) {
        if (Valor == 0) {
            return false;
        } else if (Valor == 1) {
            return true;
        } else {
            System.err.println("Erro no método ToBoo(" + Valor + ")");
            return false;
        }
    }

    public static int getLogicNumber(Integer value) {
        if (value == null || value < 0) return -1;
        else return value;
    }

    public static StringBuilder NewArrayParameter(ArrayList Array) {
        StringBuilder parameterBuilder = new StringBuilder();
        parameterBuilder.append("(");
        for (int i = 0; i < Array.size(); i++) {
            parameterBuilder.append("?");
            if (Array.size() > i + 1) {
                parameterBuilder.append(",");
            }
        }
        parameterBuilder.append(")");
        return parameterBuilder;
    }

    public static Image ImgFromBytes(byte[] bytesImg) {
        if (bytesImg != null) {
            InputStream input = new ByteArrayInputStream(bytesImg);
            return new Image(input);
        } else {
            return null;
        }
    }

    public static Image ImgFromBytes(byte[] bytesImg, String Default) {
        if (bytesImg != null) {
            InputStream input = new ByteArrayInputStream(bytesImg);
            return new Image(input);
        } else {
            return new Image(Default);
        }
    }

    /*public static void setLayoutTab(Pane paneToResize) {
        Platform.runLater(() -> {
            paneToResize.prefWidthProperty().bind(AppObjects.getAppObjects().getAbaPane().widthProperty().subtract(5));
            paneToResize.prefHeightProperty().bind(AppObjects.getAppObjects().getAbaPane().heightProperty().subtract(30));
        });
    }*/

    public static int getOnlyNumber(String value) {
        value = value.replaceAll("[^0-9]", "");
        if (Nvl(value).equals("")) value = "0";
        return Integer.parseInt(value);
    }

}