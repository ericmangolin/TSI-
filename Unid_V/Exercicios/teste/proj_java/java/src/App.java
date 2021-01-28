//  Primeiro,  adicionam-se  as  classes  de  outros  pacotes.  Por exemplo, 
//  do  pacote  org.w3c.dom  são  utilizadas  as  classes Document  e Element 
// embora todas as classes do pacote sejam importadas com o uso do *
import java.io.FileWriter;

import javax.xml.parsers.DocumentBuilder;
import javax.xml.parsers.DocumentBuilderFactory;

import org.w3c.dom.Comment;
import org.w3c.dom.Document;
import org.w3c.dom.Element;
// Todo código Java é encapsulado por uma classe. 

public class App {
    public static void main(String[] args) throws Exception {

        DocumentBuilderFactory dbf = DocumentBuilderFactory.newInstance();
        DocumentBuilder db = null;
        Document doc = null;

        try {
            
            // PASSO 2: criar um DocumentBuilder, que herda a configuração especificada pelo
            DocumentBuilder db1 = dbf.newDocumentBuilder();
            
            // PASSO 3: armazenar em um Document a representação em árvore de um novo documento XML recebida como retorno
            doc = db.newDocument();
        }
        
        catch (Exception e) {
            System.err.println("Problema na criação da árvore DOM.");          
            e.printStackTrace();          
            System.exit(1);
        }

        // Agora os elementos são criados e vinculados à arvore DOM
        // O elemento raiz "nome" é criado e vinculado ao documento
        Element raiz = doc.createElement("nome");
        doc.appendChild(raiz);

        // A nova linha com a identação deve ser anexada, tornando-se o primeiro nó filho do elemento raiz
        raiz.appendChild(doc.createTextNode("\n  "));

        // O elemento do tipo Comment é criado e vinculado à raiz
        Comment comm = doc.createComment("Exemplo de nome de pessoa.");
        raiz.appendChild(comm);

        // A nova linha com a identação deve ser anexada
        raiz.appendChild(doc.createTextNode("\n  "));

        // O elemento "primeiro" é criado e então o texto do
        // primeiro nome "Antonio" é vinculado ao elemento "primeiro"
        Element primeiro = doc.createElement("primeiro");
        primeiro.appendChild(doc.createTextNode("Antonio"));

        // O elemento "primeiro" é vinculado ao elemento raiz "nome"
        // e torna-se seu nó filho
        raiz.appendChild(primeiro);
        raiz.appendChild(doc.createTextNode("\n  "));
        // O elemento "sobrenome" é criado, o texto "da Silva" é
        // vinculado, e então "sobrenome" é anexado ao elemento raiz
        Element sobrenome = doc.createElement("sobrenome");
        sobrenome.appendChild(doc.createTextNode("da Silva"));
        raiz.appendChild(sobrenome);
        raiz.appendChild(doc.createTextNode("\n  "));
        // O elemento "apelido" é criado e anexado sem texto à raiz
        Element apelido = doc.createElement("apelido");
        raiz.appendChild(apelido);
        // Nova linha sem identação é anexada, voltando ao nível raiz
        raiz.appendChild(doc.createTextNode("\n"));
        // No seguinte escopo try/catch, o arquivo XML "exemplo1.xml"
        // é gerado em disco, contendo o documento XML criado
        try {
            OutputFormat formatter = new OutputFormat();
            FileWriter out = new FileWriter("exemplo1.xml");
            XMLSerializer serializer =  new XMLSerializer(out, formatter);
            formatter.setPreserveSpace(true);
            serializer.serialize(doc);
        }
        catch (Exception e) {
            System.err.print("Problema na criação do arquivo XML.");          
            e.printStackTrace();          
            System.exit(1);
        }
    }
}
// Fim da função main }
// Fim da classe XML_DOM_Cria