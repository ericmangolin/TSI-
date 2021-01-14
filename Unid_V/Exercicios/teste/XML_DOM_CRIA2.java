import javax.xml.parsers.*; 
import org.w3c.dom.*;    
import java.io.FileWriter.*;    
import com.sun.org.apache.xml.internal.serialize.*; 

public class XML_DOM_CRIA2 {

public static void main(String[] args) {      
  
DocumentBuilderFactory dbf = DocumentBuilderFactory.newInstance();      
    
DocumentBuilder dbf = null;      
Document doc = null;

try {
DocumentBuilderFactory dbf = dbf.newDocumentBuilder();     
doc = dbf.newDocument();      
}

catch (Exception e) {
System.err.println("Problema na criação da árvore DOM.");          
e.printStackTrace();          
System.exit(1);
}      

Element raiz = doc.createElement("nome");      
doc.appendChild(raiz);      
raiz.appendChild(doc.createTextNode("\n  "));      

Comment comm = doc.createComment("Exemplo de nome de pessoa.");      
raiz.appendChild(comm);
raiz.appendChild(doc.createTextNode("\n  "));      
Element primeiro = doc.createElement("primeiro");      
primeiro.appendChild(doc.createTextNode("Antonio"));      
raiz.appendChild(primeiro);      
raiz.appendChild(doc.createTextNode("\n  "));      

Element sobrenome = doc.createElement("sobrenome");      
sobrenome.appendChild(doc.createTextNode("da Silva"));      
raiz.appendChild(sobrenome);      
raiz.appendChild(doc.createTextNode("\n  "));      
  
Element apelido = doc.createElement("apelido");      
raiz.appendChild(apelido);      
raiz.appendChild(doc.createTextNode("\n"));      

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