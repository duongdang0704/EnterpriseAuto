package utilities;

import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStream;
import java.util.Properties;

public class DataReader {
    private Properties prop;

    public void loadFile(String fileName) {
        prop = new Properties();
        final InputStream inputStream;
        try {
            inputStream = new FileInputStream(fileName);
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
}