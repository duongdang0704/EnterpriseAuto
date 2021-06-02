package pages;

import io.appium.java_client.windows.WindowsDriver;
import pages.objects.Locator;

public class ConfirmDialog extends BaseWindow{

    private Locator yes = new Locator(Locator.By.Name,"Yes");
    private Locator no = new Locator(Locator.By.Name,"no");

    public ConfirmDialog(WindowsDriver driver){
        super(driver);
    }

    public void clickYes(){
        findElementByLocator(yes).click();
    }

    public void clickNo(){
        findElementByLocator(no).click();
    }
}
