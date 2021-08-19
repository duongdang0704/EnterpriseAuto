package pages;

import io.appium.java_client.windows.WindowsDriver;
import org.aspectj.apache.bcel.classfile.Code;
import org.openqa.selenium.By;
import org.openqa.selenium.Keys;
import org.openqa.selenium.WebElement;
import pages.objects.Locator;
import utilities.WaitFor;

public class SequenceMonitorWindow extends BaseWindow{

    public Locator CodeITMonitorForm = new Locator(Locator.By.AccessibilityId, "SequenceForm");

    public SequenceMonitorWindow(WindowsDriver driver){
        super(driver);
    }

    public WebElement getCodeITMonitorForm(){
        return findElementByLocator(CodeITMonitorForm);
    }

    public void openSequenceDetails(String sequence){
        Locator seqItem = new Locator(Locator.By.Name, sequence);
        findElementByLocator(seqItem).click();
    }

    public void clickClose(){
        getCodeITMonitorForm().findElement(By.name("Close")).click();
    }

}
