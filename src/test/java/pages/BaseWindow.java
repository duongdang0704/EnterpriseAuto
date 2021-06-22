package pages;

import io.appium.java_client.windows.WindowsDriver;
import org.openqa.selenium.Keys;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.interactions.Actions;
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
        driver.quit();
    }

    public void enter(Locator locator, String value){
        WebElement element = findElementByLocator(locator);
        new Actions(driver).moveToElement(element).click().perform();
        element.sendKeys(Keys.CONTROL + "a");
        element.sendKeys(Keys.BACK_SPACE);
        element.sendKeys(value);

    }

    public void click(Locator locator){
        findElementByLocator(locator).click();
    }
}
