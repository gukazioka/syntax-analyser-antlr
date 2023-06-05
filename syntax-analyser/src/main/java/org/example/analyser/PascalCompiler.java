package org.example.analyser;
import org.antlr.v4.runtime.*;
import org.antlr.v4.runtime.tree.ParseTree;
import org.antlr.v4.runtime.CommonTokenStream;

import java.util.List;
public class PascalCompiler {

    private String entry;

    public PascalCompiler(String entry) {
        this.entry = entry;
    }

    public void compile() {
        CharStream input = CharStreams.fromString(this.entry);
        GrammarPascalLexer lexer = new GrammarPascalLexer(input);
        CommonTokenStream tokens = new CommonTokenStream(lexer);
        tokens.fill();
        List<Token> tokenList = tokens.getTokens();
        for (Token token : tokenList) {
            int tokenType = token.getType();
            System.out.println("Token: " + lexer.getVocabulary().getSymbolicName(tokenType));
            System.out.println("Text: " + token.getText());
            System.out.println("Line: " + token.getLine());
            System.out.println("Column: " + token.getCharPositionInLine());
            System.out.println("-------------------");
        }
        GrammarPascalParser parser = new GrammarPascalParser(tokens);
        ParseTree tree = parser.program();
    }
}
