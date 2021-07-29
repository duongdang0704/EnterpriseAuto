package pages;

import io.appium.java_client.windows.WindowsDriver;
import org.openqa.selenium.Keys;
import org.openqa.selenium.WebElement;
import pages.objects.Locator;

public class UDFLogicalFunctionWindow extends BaseWindow{

    public UDFLogicalFunctionWindow(WindowsDriver driver){
        super(driver);
    }

    private Locator udfLogicalFunction = new Locator(Locator.By.AccessibilityId, "5c1e1704-3fc7-4492-bfa0-4084b9503e8b");
    private Locator param1 = new Locator(Locator.By.AccessibilityId, "5d459fe7-a63d-4e59-8060-52f16839252d");
    private Locator param2 = new Locator(Locator.By.AccessibilityId, "2120db35-bbe0-4787-a3cb-049caeac0217");
    private Locator param3 = new Locator(Locator.By.AccessibilityId, "02a7fbd4-fbe4-4993-b539-2a1d3cfebbfb");
    private Locator param4 = new Locator(Locator.By.AccessibilityId, "e825f570-b0fa-4aa6-aef9-c4dbe7551f69");
    private Locator result = new Locator(Locator.By.AccessibilityId, "fdf37f3c-03f2-4942-a7ca-dec45bbe08d7");


    public void selectLogicalCbbOption(String option) {
        selectCbbOption(udfLogicalFunction, option);
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

    public void enterParam4(String value){
        if(value.contains("[space]")){
            value = value.replace("[space]", Keys.SPACE);
            enter(param4, value);
        }else {
            enter(param4, value);
        }
        try{
            Thread.sleep(1000);
        }catch (InterruptedException e){
            e.printStackTrace();
        }
    }

    public String getResult(){
        WebElement elm = findElementByLocator(result);
        return elm.getText();
    }
}
