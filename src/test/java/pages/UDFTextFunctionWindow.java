package pages;

import io.appium.java_client.windows.WindowsDriver;
import org.openqa.selenium.Keys;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.interactions.Actions;
import pages.objects.Locator;

public class UDFTextFunctionWindow extends BaseWindow{

    public UDFTextFunctionWindow(WindowsDriver driver){
        super(driver);
    }

    private Locator udfTextFunction = new Locator(Locator.By.AccessibilityId, "b3c079f3-80c6-4407-95f9-c356f94fd477");
    private Locator param1 = new Locator(Locator.By.AccessibilityId, "eb9e0baa-f404-4a28-9f9b-945e169c173d");
    private Locator param2 = new Locator(Locator.By.AccessibilityId, "5da037aa-709a-4032-ab5d-24bbcfa2d5b8");
    private Locator param3 = new Locator(Locator.By.AccessibilityId, "84ff1512-1752-4528-858d-da6034ff53b2");
    private Locator result = new Locator(Locator.By.AccessibilityId, "0a70f4c3-6d18-4058-a5a1-bb2b33b6e7f0");


    public void selectTextCbbOption(String option) {
        selectCbbOption(udfTextFunction, option);
    }

    public void enterParam1(String value){
        if(value.contains("[space]")){
            value = value.replace("[space]", Keys.SPACE);
            enter(param1, value);
        }else {
            enter(param1, value);
        }
    }

    public void enterParam2(String value){
        if(value.contains("[space]")){
            value = value.replace("[space]", Keys.SPACE);
            enter(param2, value);
        }else {
            enter(param2, value);
        }
    }

    public void enterParam3(String value){
        if(value.contains("[space]")){
            value = value.replace("[space]", Keys.SPACE);
            enter(param3, value);
        }else {
            enter(param3, value);
        }
    }

    public String getResult(){
        WebElement elm = findElementByLocator(result);
        return elm.getText();
    }
}
