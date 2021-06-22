package pages;

import io.appium.java_client.windows.WindowsDriver;

import java.util.HashMap;
import java.util.Map;

public class BarcodeWindowFactory {
    private WindowsDriver driver;
    private Map<String, BarcodeWindow> MAP = new HashMap<>();

    public BarcodeWindowFactory(WindowsDriver driver){
        this.driver = driver;
        MAP.put("Evolabel", new BarcodeEvolabelWindow(driver));
        MAP.put("Sato", new BarcodeSatoWindow(driver));
    }

    public BarcodeWindow getBarcodePrinterWindow(String printerWindow){
        return MAP.get(printerWindow);
    }

}
