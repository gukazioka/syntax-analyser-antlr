package org.example.analyser;

import java.io.IOException;
import java.nio.charset.StandardCharsets;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;

/**
 * Hello world!
 *
 */
public class App 
{
    public static void main( String[] args ) throws IOException {

        String nomeArquivo = "test.pas";
        String content = new String(Files.readAllBytes(Paths.get(nomeArquivo)));
        PascalCompiler compilador = new PascalCompiler(content);
        compilador.compile();
    }
}
