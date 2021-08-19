package pages;

import io.appium.java_client.windows.WindowsDriver;
import org.apache.commons.io.FileUtils;
import org.openqa.selenium.By;
import org.openqa.selenium.Keys;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.interactions.Actions;
import pages.objects.Locator;
import utilities.DriverFactory;
import utilities.WaitFor;

import java.io.File;
import java.io.IOException;
import java.sql.Driver;
import java.util.List;

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

    public void doubleClick(Locator locator){
        Actions act = new Actions(driver);
        WebElement ele = findElementByLocator(locator);
        act.doubleClick(ele).perform();
    }

    public void selectCbbOption(Locator locator, String option) {
        WebElement elm = findElementByLocator(locator);
        elm.click();
        List<WebElement> items = elm.findElements(By.className("ListBoxItem"));
        for (WebElement item : items) {
            if (option.equals(item.getAttribute("Name")))
                item.click();
        }
    }

    public String getText(Locator locator){
        WebElement elm = findElementByLocator(locator);
        return elm.getText();
    }

    public static void main(String[] args){
        WindowsDriver driver = DriverFactory.createDriver(10);
        OverviewWindow w = new OverviewWindow(driver);
        w.doAFF5();
        SequenceMonitorWindow s = new SequenceMonitorWindow(driver);
        s.openSequenceDetails("SystemSequences");
        WaitFor.pause(5);
        String pageSource = driver.getPageSource();
        File test = new File("C:\\Testing\\pagesource.txt");
        try {
            FileUtils.write(test, pageSource);
        }catch (IOException ioException){
            ioException.printStackTrace();
        }

        SequenceMonitorDetailWindow smd = new SequenceMonitorDetailWindow(driver);
        String text = smd.getSequenceResult("0 Sleep here");
        System.out.println(text);
    }
}
