package pages;

import io.appium.java_client.windows.WindowsDriver;
import org.openqa.selenium.Keys;
import pages.objects.Locator;

public class UDFJSONFunctionWindow extends BaseWindow {

    public UDFJSONFunctionWindow(WindowsDriver driver) {
        super(driver);
    }

    private Locator udfJsonFunction = new Locator(Locator.By.AccessibilityId, "9340b2ce-5141-4ce7-9a87-8e28c8082896");
    private Locator param1 = new Locator(Locator.By.AccessibilityId, "8d8a94ff-c458-4df0-bcdf-a649e235765e");
    private Locator param2 = new Locator(Locator.By.AccessibilityId, "84ee3cb7-31b7-4185-89c7-6ac0cd23f32d");
    private Locator param3 = new Locator(Locator.By.AccessibilityId, "47c735fb-5a4f-4095-85ab-6be156ad1a2b");
    private Locator result = new Locator(Locator.By.AccessibilityId, "e5b40861-7810-446d-97cb-0b541468aa3d");
    private Locator testcaseName = new Locator(Locator.By.AccessibilityId, "45420689-9ca7-4885-b539-fb9733e10a6d");


    public void selectTextCbbOption(String option) {
        selectCbbOption(udfJsonFunction, option);
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
