package br.com.sinergia.controllers;

import br.com.sinergia.database.dicionarioDados.ReaderDBDic;
import br.com.sinergia.models.TabelaFull;
import javafx.application.Application;
import javafx.stage.Stage;

public class main extends Application {

    public static void main(String[] args) {
        launch(args);
    }

    @Override
    public void start(Stage primaryStage) {
        try {
            TabelaFull tabProdutos = ReaderDBDic.getTabelaFullByIndex(0);
            tabProdutos.getCampos().forEach(campo -> {
                System.out.println(campo.getDescrCampo());
                System.out.println(campo.getNomeCampo() + ": " + campo.getTipoCampo() + "(" + campo.getVlrCampo() + ")");
            });
        } catch (Exception ex) {
            System.err.println(ex.getMessage());
            ex.printStackTrace();
        }
        System.exit(0);
    }
}
