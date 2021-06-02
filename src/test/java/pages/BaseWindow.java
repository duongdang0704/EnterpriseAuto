package pages;

import io.appium.java_client.windows.WindowsDriver;
import org.openqa.selenium.WebElement;
import pages.objects.Locator;

public class BaseWindow {

    public WindowsDriver getDriver() {
        return driver;
    }

    private WindowsDriver driver;
    private Locator yes = new Locator(Locator.By.Name,"Yes");
    private Locator no = new Locator(Locator.By.Name,"no");

    public BaseWindow(WindowsDriver driver){
        this.driver = driver;
    }

    public WebElement findElementByLocator(Locator locator){
        return driver.findElement(locator.getBy().toString(), locator.getUsing());
    }

    public void closeApp(){
        driver.closeApp();
        findElementByLocator(yes).click();
    }

    public void enter(Locator locator, String value){
        WebElement element = findElementByLocator(locator);
        element.clear();
        element.sendKeys(value);
    }
}
