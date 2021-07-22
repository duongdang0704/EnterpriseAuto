package pages;

import io.appium.java_client.windows.WindowsDriver;
import org.openqa.selenium.WebElement;
import pages.objects.Locator;

public class UDFDateTimeFunctionWindow extends BaseWindow{

    public UDFDateTimeFunctionWindow(WindowsDriver driver){
        super(driver);
    }

    private Locator udfDateFunction = new Locator(Locator.By.AccessibilityId, "fa211cdc-2679-4e6d-8d1b-9bd951690a6c");
    private Locator param1 = new Locator(Locator.By.AccessibilityId, "040d9b30-4c4c-4d2f-b349-4e730939de74");
    private Locator param2 = new Locator(Locator.By.AccessibilityId, "699d1ceb-438a-43ee-8613-7d5b35873b5c");
    private Locator param3 = new Locator(Locator.By.AccessibilityId, "313b686e-7ff2-41d7-9851-7965de64d0ab");
    private Locator result = new Locator(Locator.By.AccessibilityId, "58385e33-67dd-4327-91a4-1533d5bcba70");

    public void selectDateTimeCbbOption(String value){
        selectCbbOption(udfDateFunction, value);
    }

    public void enterParma1(String value){
        enter(param1, value);
    }

    public void enterParma2(String value){
        enter(param2, value);
    }

    public void enterParma3(String value){
        enter(param3, value);
    }

    public String getResult(){
        WebElement elm = findElementByLocator(result);
        return elm.getText();
    }

}
