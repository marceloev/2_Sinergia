package br.com.sinergia.controllers;

import br.com.sinergia.database.dicionarioDados.ReaderDBDic;
import br.com.sinergia.models.Campo;
import br.com.sinergia.models.TabelaFull;
import javafx.application.Application;
import javafx.stage.Stage;

import java.sql.Timestamp;
import java.time.Instant;

public class main extends Application {

    public static void main(String[] args) {
        launch(args);
    }

    @Override
    public void start(Stage primaryStage) {
        try {
            System.out.println(Timestamp.from(Instant.now()));
            System.out.println(Timestamp.from(Instant.now()));
        } catch (Exception ex) {
            System.err.println(ex.getMessage());
            ex.printStackTrace();
        }
        System.exit(0);
    }
}
