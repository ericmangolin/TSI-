import java.io.FileWriter;

import javax.xml.parsers.DocumentBuilder;
import javax.xml.parsers.DocumentBuilderFactory;
import javax.xml.transform.OutputKeys;

import org.w3c.dom.Comment;
import org.w3c.dom.Document;
import org.w3c.dom.Element;

import jdk.javadoc.internal.doclets.toolkit.util.DocFinder.Output;

public class XML_DOM_CRIA {

    public static void main(String[] args) {
        DocumentBuilderFactory dbf = DocumentBuilderFactory.newInstance();
        DocumentBuilder db = null;
        Document doc = null;

        try {
            db = dbf.newDocumentBuilder();
            doc = db.newDocument();
        } catch (Exception e) {
            System.err.println("Problema na criação da árvore DOM");
            e.printStackTrace();
            System.exit(1);
        }
        Element raiz = doc.createElement("nome");
        doc.appendChild(raiz);
        raiz.appendChild(doc.createTextNode("\n "));

        Comment comm = doc.createComment("Exemplo de nome:");
        raiz.appendChild(comm);

        Element primeiro = doc.createElement("Primeiro nome:");
        primeiro.appendChild(doc.createTextNode("Manu"));
        raiz.appendChild(primeiro);
        raiz.appendChild(doc.createTextNode("\n "));

        Element sobrenome = doc.createElement("sobrenome");
        sobrenome.appendChild(doc.createTextNode("Gabriely"));
        raiz.appendChild(sobrenome);
        raiz.appendChild(doc.createTextNode("\n "));

        Element apelido = doc.createElement("apelido");
        apelido.appendChild(doc.createTextNode("Manu"));
        raiz.appendChild(apelido);
        raiz.appendChild(doc.createTextNode("\n "));

        try {
            OutputFormat formatter = new OutputFormat();
            FileWriter out = new FileWriter("nomesXML_Java.xml");
            XMLSerializer serializer = new XMLSerializer(out, formatter);
            formatter.setPreserveSpace(true);
            serializer.serialize(doc);
        }
        catch (Exception e){
            System.err.print("Problema na criação do Arquivo!");
            e.printStackTrace();
            System.exit(1);
        }
    }
}