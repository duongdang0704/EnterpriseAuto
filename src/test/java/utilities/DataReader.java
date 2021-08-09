package utilities;

import org.w3c.dom.Document;

import javax.xml.parsers.DocumentBuilder;
import javax.xml.parsers.DocumentBuilderFactory;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStream;
import java.util.Properties;

public class DataReader {
    private Properties prop;

    public void loadFile(String filePath) {
        prop = new Properties();
        final InputStream inputStream;
        try {
            inputStream = new FileInputStream(filePath);
            try {
                prop.load(inputStream);
                inputStream.close();
            } catch (IOException e) {
                e.printStackTrace();
            }
        } catch (FileNotFoundException e) {
            e.printStackTrace();
        }
    }

    public String getProperty(String property) {
        return prop.getProperty(property);
    }

    public Document getXMLDocument(String filePath) {
        Document doc = null;
        try {
            DocumentBuilderFactory dbFactory = DocumentBuilderFactory.newInstance();
            DocumentBuilder dBuilder = dbFactory.newDocumentBuilder();
            doc = dBuilder.parse(filePath);
            doc.getDocumentElement().normalize();
        }catch (Exception e){
            e.printStackTrace();
        }
        return doc;
    }

}