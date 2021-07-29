package pages;

import io.appium.java_client.windows.WindowsDriver;
import org.openqa.selenium.WebElement;
import pages.objects.Locator;


public class UDFNumberFunctionWindow extends BaseWindow{

    public UDFNumberFunctionWindow(WindowsDriver driver) {
        super(driver);
    }

    private Locator functionParam = new Locator(Locator.By.AccessibilityId, "0551b9ca-2f40-406a-9bb6-18597216a9ec");
    private Locator param1 = new Locator(Locator.By.AccessibilityId, "dbe72fb1-cf8b-4da7-bff6-6ce6ea41e416");
    private Locator param2 = new Locator(Locator.By.AccessibilityId, "b9961121-7354-4277-b634-ef71488d73dc");
    private Locator param3 = new Locator(Locator.By.AccessibilityId, "181b19b3-5885-473e-9fbf-bf1adee59465");
    private Locator result = new Locator(Locator.By.AccessibilityId, "01e4fc19-ca7a-4f42-ad27-5b3cac5f419a");


    public void selectNumberCbbOption(String option) {
        selectCbbOption(functionParam, option);
    }

    public void enterParam1(String value){
        enter(param1, value);
    }

    public void enterParam2(String value){
        enter(param2, value);
    }

    public void enterParam3(String value){
        enter(param3, value);
    }

    public String getResult() {
        WebElement elm = findElementByLocator(result);
        return elm.getText();
    }
}
