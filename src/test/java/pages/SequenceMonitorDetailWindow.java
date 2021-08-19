package pages;

import io.appium.java_client.MobileBy;
import io.appium.java_client.windows.WindowsDriver;
import org.openqa.selenium.By;
import org.openqa.selenium.WebElement;
import pages.objects.Locator;

import java.util.List;

public class SequenceMonitorDetailWindow extends BaseWindow{

    private Locator sequenceMonitorForm = new Locator(Locator.By.AccessibilityId, "SequenceMonitorForm");
    public SequenceMonitorDetailWindow(WindowsDriver driver){
        super(driver);
    }

    public WebElement getSequenceMonitorForm(){
        return findElementByLocator(sequenceMonitorForm);
    }

    public String getSequenceResult(String sequence){
        List<WebElement> webElements = getSequenceMonitorForm().findElements(By.xpath("//List/ListItem"));
        String result = null;
        for (WebElement webElement: webElements
             ) {
            String currentSequence = webElement.findElement(By.xpath("//Text[@AutomationId='ListViewSubItem-3']")).getAttribute("Name");
            if (currentSequence.equals(sequence)){
                result = webElement.findElement(By.xpath("//Text[@AutomationId='ListViewSubItem-5']")).getAttribute("Name");
                break;
            }
        }
        return result;
    }

    public void clickClose(){
        getSequenceMonitorForm().findElement(By.name("Close"));
    }
}
