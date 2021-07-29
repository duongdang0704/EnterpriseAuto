package pages;

import io.appium.java_client.windows.WindowsDriver;
import org.openqa.selenium.Keys;
import org.openqa.selenium.WebElement;
import pages.objects.Locator;

public class UDFTableFunctionWindow extends BaseWindow {

    public UDFTableFunctionWindow(WindowsDriver driver) {
        super(driver);
    }

    private Locator udfTableFunction = new Locator(Locator.By.AccessibilityId, "01e8868e-108d-44e0-adcb-17b78ca5b2bb");
    private Locator param1 = new Locator(Locator.By.AccessibilityId, "38b19f24-25dd-4302-8c02-e0b67daf69be");
    private Locator param2 = new Locator(Locator.By.AccessibilityId, "86246ae4-db0c-450c-a583-fc886a86cda8");
    private Locator param3 = new Locator(Locator.By.AccessibilityId, "bb70c97a-d548-47f8-a90d-f3ebe5c8f55d");
    private Locator result = new Locator(Locator.By.AccessibilityId, "e14412f1-d9b0-4393-ab4e-b970c5189d1a");


    public void selectTableCbbOption(String option) {
        selectCbbOption(udfTableFunction, option);
    }

    public void enterParam1(String value) {
        enter(param1, value);
    }

    public void enterParam2(String value) {
        if (value.contains("[space]")) {
            value = value.replace("[space]", Keys.SPACE);
            enter(param2, value);
        } else {
            enter(param2, value);
        }
    }

    public void enterParam3(String value) {
        if (value.contains("[space]")) {
            value = value.replace("[space]", Keys.SPACE);
            enter(param3, value);
        } else {
            enter(param3, value);
        }
    }

    public String getResult() {
        WebElement elm = findElementByLocator(result);
        return elm.getText();
    }
}
