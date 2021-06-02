package stepsdef;

import config.AppConfig;
import cucumber.TestContext;
import io.appium.java_client.windows.WindowsDriver;
import io.cucumber.java.After;
import io.cucumber.java.Before;
import org.openqa.selenium.remote.DesiredCapabilities;
import pages.BaseWindow;
import pages.ConfirmDialog;

import java.net.URL;
import java.util.concurrent.TimeUnit;

public class Hook {

    private TestContext testContext;
    private WindowsDriver driver;
    private BaseWindow baseWindow;

    public Hook(TestContext testContext){
        this.testContext = testContext;
    }

    @Before
    public void setup(){
        try {
            DesiredCapabilities capabilities = new DesiredCapabilities();
            capabilities.setCapability("app", AppConfig.PATH);
            capabilities.setCapability("platformName", "Windows");
            capabilities.setCapability("deviceName", "WindowsPC");
            driver = new WindowsDriver(new URL("http://127.0.0.1:4723"), capabilities);
            driver.manage().timeouts().implicitlyWait(5, TimeUnit.SECONDS);
        } catch (Exception e) {
            e.printStackTrace();
        }
        testContext.setDriver(driver);
        baseWindow = new BaseWindow(driver);
    }

    @After
    public void tearDown(){
        baseWindow.closeApp();
    }
}
