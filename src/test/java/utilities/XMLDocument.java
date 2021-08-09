package utilities;

import org.w3c.dom.Document;
import org.w3c.dom.NodeList;

import javax.xml.parsers.DocumentBuilder;
import javax.xml.parsers.DocumentBuilderFactory;
import java.io.File;

public class XMLDocument {

    public String filePath;
    public Document document;

    public XMLDocument(String filePath){
        try {
            File inputFile = new File(filePath);
            DocumentBuilderFactory dbFactory = DocumentBuilderFactory.newInstance();
            DocumentBuilder dBuilder = dbFactory.newDocumentBuilder();
            Document doc = dBuilder.parse(inputFile);
            doc.getDocumentElement().normalize();
            this.document = doc;
        }catch (Exception e){
            e.printStackTrace();
        }
    }

    public String getRootNode(){
        return document.getDocumentElement().getNodeName();
    }

    public NodeList getElementByTagName(String tagName){
        NodeList nList = document.getElementsByTagName(tagName);
        return nList;
    }
}
