package utilities;

import org.w3c.dom.Element;
import org.w3c.dom.NodeList;

public class ApplicationLog extends XMLDocument{

    public ApplicationLog(String filePath){
        super(filePath);
    }

    public String getLatestMessage(){
        NodeList messages = getElementByTagName("Message");
        Element latestMessage = (Element) messages.item(messages.getLength() - 1);
        return latestMessage.getTextContent();
    }
}
