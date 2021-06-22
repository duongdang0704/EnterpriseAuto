package pages;

import io.appium.java_client.windows.WindowsDriver;
import pages.objects.Locator;
import utilities.WaitFor;

public class OverviewWindow extends BaseWindow{

    public OverviewWindow(WindowsDriver driver){
        super(driver);
    }

    Locator navigator_icon = new Locator(Locator.By.AccessibilityId, "uxShowHideNavigation");
    Locator close_left_menu_icon = new Locator(Locator.By.AccessibilityId, "uxClose");

    public void clickNavigatorIcon(){
        findElementByLocator(navigator_icon).click();
    }

    public void clickCloseLeftMenuIcon(){
        findElementByLocator(close_left_menu_icon).click();
    }

    public void selectProductionLine(String lineName){
        clickNavigatorIcon();
        WaitFor.pause(5);
        Locator line_item = new Locator(Locator.By.Xpath,"//TreeItem/Text[@Name='" + lineName + "']");
        findElementByLocator(line_item).click();
        clickCloseLeftMenuIcon();
    }
}
