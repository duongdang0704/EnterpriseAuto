package pages;

import config.AppConfig;
import io.appium.java_client.windows.WindowsDriver;
import org.apache.commons.io.FileUtils;
import org.junit.Assert;
import org.openqa.selenium.Keys;
import org.openqa.selenium.WebElement;
import pages.BaseWindow;
import pages.objects.Locator;
import java.io.IOException;
import java.io.File;

public class UDFXMLFunctionWindow extends BaseWindow {

    public UDFXMLFunctionWindow(WindowsDriver driver) {
        super(driver);
    }

    private Locator udfXMLFunction = new Locator(Locator.By.AccessibilityId, "beb02d0d-7f94-4e8e-8536-2c0116b40aba");
    private Locator param1 = new Locator(Locator.By.AccessibilityId, "d5f2ca2e-8351-4e24-aaf5-6184416292dc");
    private Locator param2 = new Locator(Locator.By.AccessibilityId, "ee16bd04-6a7d-48a4-aee6-d205179c58b3");
    private Locator param3 = new Locator(Locator.By.AccessibilityId, "39fbe6a0-1b7e-4ddb-96e0-c1b3e569bf5b");
    private Locator result = new Locator(Locator.By.AccessibilityId, "0a70f4c3-6d18-4058-a5a1-bb2b33b6e7f0");
    private Locator testcaseName = new Locator(Locator.By.AccessibilityId, "34675717-33de-4b40-8e34-d99acbd08584");


    public void selectTextCbbOption(String option) {
        selectCbbOption(udfXMLFunction, option);
    }

    public void enterTestcaseName(String value) {
        enter(testcaseName, value);
    }

    public void enterParam1(String value) {
        enter(param1, value);
    }

    public void enterParam2(String value) {
        enter(param2, value);
    }

    public void enterParam3(String value) {
        enter(param3, value);
        findElementByLocator(param3).sendKeys(Keys.ENTER);
        try{
            Thread.sleep(1000);
        }catch (InterruptedException e){
            e.printStackTrace();
        }
    }

}
