package pages;

import io.appium.java_client.windows.WindowsDriver;
import org.openqa.selenium.Keys;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.interactions.Actions;
import pages.objects.Locator;
import utilities.WaitFor;

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

    public void waitForElementAttribute(Locator locator, String attributeName, String attributeValue){
        String value = findElementByLocator(locator).getAttribute(attributeName);
        int i = 0;
        while(value.equals(attributeValue.toString())){
            WaitFor.pause(1);
            value = findElementByLocator(locator).getAttribute(attributeName);
            i = i + 1;
            if (i == 10){
                break;
            }
        }
    }
    public void enter(Locator locator, String value){
        WebElement element = findElementByLocator(locator);
        new Actions(driver).moveToElement(element).click().perform();
        element.sendKeys(Keys.CONTROL + "a");
        element.sendKeys(Keys.BACK_SPACE);
        element.sendKeys(value);
        new Actions(driver).moveToElement(element).click().perform();

    }

    public void click(Locator locator){
        findElementByLocator(locator).click();
    }
}
