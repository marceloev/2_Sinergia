package br.com.sinergia.controllers;

import br.com.sinergia.database.dicionarioDados.ReaderDBDic;
import br.com.sinergia.models.Campo;
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
            //ReaderDBDic.getTabelaFullByIndex(0);
            Campo campoComplemento = ReaderDBDic.getCampo(0, 2);
            System.out.println(campoComplemento.getNomeCampo());
        } catch (Exception ex) {
            System.err.println(ex.getMessage());
            ex.printStackTrace();
        }
        System.exit(0);
    }
}
