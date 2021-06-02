package pages;

import io.appium.java_client.windows.WindowsDriver;
import org.openqa.selenium.WebElement;
import pages.objects.Locator;

public class UdfFunctionsWindow extends BaseWindow {

    private Locator concatenatePara1 = new Locator(Locator.By.AccessibilityId,"b743ecb4-de29-457a-9a9a-4c16f615a827");
    private Locator concatenatePara2 = new Locator(Locator.By.AccessibilityId, "63bb7aaf-da57-4a2c-a473-472d0e03823e");
    private Locator concatenateResult = new Locator(Locator.By.AccessibilityId, "b58fc7f7-f4c3-40c7-aa80-f57c78b84146");
    private Locator getTextResult = new Locator(Locator.By.AccessibilityId, "dc221c03-9d18-4120-963e-1145fa4ad5ff");
    private Locator getTextPara = new Locator(Locator.By.AccessibilityId, "9f7d6ee2-f009-4ce3-b71b-6d61f8f86903");
    private Locator GS1AddChecksumResult = new Locator(Locator.By.AccessibilityId, "5d7464cc-175f-4651-977a-a77ef394dc94");
    private Locator GS1AddChecksumPara = new Locator(Locator.By.AccessibilityId, "4981a5a6-ef4d-4ad4-b145-e7020f9e099e");
    private Locator lengthResult = new Locator(Locator.By.AccessibilityId, "692132ef-677c-4253-8d58-6e081976b1d0");
    private Locator lengthPara = new Locator(Locator.By.AccessibilityId, "8e08327f-76b1-42da-9ce2-f57fae78053c");
    private Locator lowerCaseResult = new Locator(Locator.By.AccessibilityId, "34269cb9-fb7b-49f9-8926-da22c17dba54");
    private Locator lowerCasePara = new Locator(Locator.By.AccessibilityId, "f9c028f9-3317-4b7f-aa5c-4dfc8cf1b85d");
    private Locator upperCaseResult = new Locator(Locator.By.AccessibilityId, "3ba8cd71-72e3-4b9c-b7e5-daff117eb566");
    private Locator upperCasePara = new Locator(Locator.By.AccessibilityId, "928255e5-a63b-49ad-93f1-bd6f57265a48");
    private Locator replaceResult = new Locator(Locator.By.AccessibilityId, "c7eb8643-6bb1-415f-b0be-84195d6fd168");

    public UdfFunctionsWindow(WindowsDriver driver)
    {
        super(driver);

    }

    public void enterConcatenatePara1(String value){
        enter(concatenatePara1, value);
    }

    public void enterConcatenatePara2(String value){
        enter(concatenatePara2, value);
    }

    public void enterGetTextPara(String value){
        enter(getTextPara, value);
    }

    public void enterGS1AddChecksumPara(String value){
        enter(GS1AddChecksumPara, value);
    }

    public void enterLengthPara(String value){
        enter(lengthPara, value);
    }

    public void enterLowerCasePara(String value){
        enter(lowerCasePara, value);
    }

    public void enterUpperCasePara(String value){
        enter(upperCasePara, value);
    }
    public String getTextConcatenateResult(){
        WebElement concatenate_result_text = findElementByLocator(concatenateResult);
        return concatenate_result_text.getText();
    }

    public String getTextGetTextResult(){
        WebElement getText_result_text = findElementByLocator(getTextResult);
        return getText_result_text.getText();
    }

    public String getTextLengthResult(){
        WebElement length_result_text = findElementByLocator(lengthResult);
        return length_result_text.getText();
    }

    public String getTextGS1AddChecksumResult(){
        WebElement gs1AddChecksum_result_text = findElementByLocator(GS1AddChecksumResult);
        return gs1AddChecksum_result_text.getText();
    }

    public String getTextLowerCaseResult(){
        WebElement lowerCase_result_text = findElementByLocator(lowerCaseResult);
        return lowerCase_result_text.getText();
    }

    public String getTextUpperCaseResult(){
        WebElement upperCase_result_text = findElementByLocator(upperCaseResult);
        return upperCase_result_text.getText();
    }
}
