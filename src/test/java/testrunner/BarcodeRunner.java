package testrunner;

import config.AppConfig;
import io.appium.java_client.windows.WindowsDriver;
import io.cucumber.junit.Cucumber;
import io.cucumber.junit.CucumberOptions;
import org.junit.AfterClass;
import org.junit.BeforeClass;
import org.junit.runner.RunWith;
import org.openqa.selenium.remote.DesiredCapabilities;
import pages.BaseWindow;
import pages.OverviewWindow;
import utilities.DataReader;
import utilities.WaitFor;

import java.io.File;
import java.io.IOException;
import java.net.URL;
import java.util.concurrent.TimeUnit;

import static org.apache.commons.io.FileUtils.deleteDirectory;

@RunWith(Cucumber.class)
@CucumberOptions(
        features = "src/test/resources/features/GS1-AI00-30.feature",
        glue = "stepsdef",
        plugin = {"html:target/cucumber-reports/cucumber.html",
                "json:target/cucumber-reports/cucumber.json"}
)
public class BarcodeRunner {

    public static WindowsDriver driver;
    public static DataReader config;

    @BeforeClass
    public static void setup(){
        config = new DataReader();
        config.loadFile(".\\src\\test\\config.properties");
        AppConfig.loadConfig(config);
        System.out.println(AppConfig.EXE_PATH);
        try{
            deleteDirectory(new File(AppConfig.LOG_PRINTING_PATH));
        }catch (IOException e){
            e.printStackTrace();
        }
        if(driver == null){
            try {
                DesiredCapabilities capabilities = new DesiredCapabilities();
                capabilities.setCapability("app", AppConfig.EXE_PATH);
                capabilities.setCapability("platformName", "Windows");
                capabilities.setCapability("deviceName", "WindowsPC");
                driver = new WindowsDriver(new URL("http://127.0.0.1:4723"), capabilities);
                driver.manage().timeouts().implicitlyWait(5, TimeUnit.SECONDS);
                WaitFor.pause(10);

            } catch (Exception e) {
                e.printStackTrace();
            }

        }
        OverviewWindow overviewWindow = new OverviewWindow(driver);
        overviewWindow. selectProductionLine("Sato");
    }

    @AfterClass
    public static void tearDown(){
        BaseWindow baseWindow = new BaseWindow(driver);
        baseWindow.closeApp();
    }
}
