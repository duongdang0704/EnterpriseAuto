package pages;

import io.appium.java_client.windows.WindowsDriver;
import org.openqa.selenium.Keys;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.interactions.Actions;
import pages.objects.Locator;
import utilities.WaitFor;

public class OverviewWindow extends BaseWindow{

    public OverviewWindow(WindowsDriver driver){
        super(driver);
    }

    Locator navigator_icon = new Locator(Locator.By.AccessibilityId, "uxShowHideNavigation");
    Locator close_left_menu_icon = new Locator(Locator.By.AccessibilityId, "uxClose");
    Locator codeit_text = new Locator(Locator.By.Name, "Code");
    Locator password_textbox = new Locator(Locator.By.AccessibilityId, "txbValue");

    public void clickNavigatorIcon(){
        findElementByLocator(navigator_icon).click();
    }

    public void clickCloseLeftMenuIcon(){
        findElementByLocator(close_left_menu_icon).click();
    }

    public void doAFF5(){
        doubleClick(codeit_text);
        WebElement password = findElementByLocator(password_textbox);
        findElementByLocator(password_textbox).sendKeys("123123");
        findElementByLocator(password_textbox).sendKeys(Keys.ENTER);
        findElementByLocator(password_textbox).sendKeys("5");
        findElementByLocator(password_textbox).sendKeys(Keys.ENTER);

    }

    public void selectProductionLine(String lineName){
        clickNavigatorIcon();
        WaitFor.pause(5);
        Locator line_item = new Locator(Locator.By.Xpath,"//TreeItem/Text[@Name='" + lineName + "']");
        findElementByLocator(line_item).click();
        clickCloseLeftMenuIcon();
    }
}
