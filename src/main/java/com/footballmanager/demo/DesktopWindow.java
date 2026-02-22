package com.footballmanager.demo;

import javafx.application.Application;
import javafx.application.Platform;
import javafx.scene.Scene;
import javafx.scene.web.WebView;
import javafx.stage.Stage;

public class DesktopWindow extends Application {
    @Override
    public void start(Stage stage) {
        WebView webView = new WebView();
        webView.getEngine().load("http://localhost:8080");
        Scene scene = new Scene(webView, 1280, 760);
        stage.setTitle("Football manager");
        stage.setScene(scene);
        stage.setOnCloseRequest(event -> {
            Platform.exit();
            FootballManagerApplication.shutdown();
        });
        stage.show();
    }

    public static void launchWindow() {
        launch();
    }
}