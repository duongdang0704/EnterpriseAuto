package testrunner;

import config.AppConfig;
import io.appium.java_client.windows.WindowsDriver;
import io.cucumber.junit.Cucumber;
import io.cucumber.junit.CucumberOptions;
import org.junit.AfterClass;
import org.junit.BeforeClass;
import org.junit.runner.RunWith;
import pages.BaseWindow;
import pages.OverviewWindow;
import utilities.DataReader;
import utilities.DriverFactory;

import java.awt.*;
import java.io.File;
import java.io.IOException;

import static org.apache.commons.io.FileUtils.deleteDirectory;

@RunWith(Cucumber.class)
@CucumberOptions(
        features = "src/test/resources/features",
        glue = {"stepsdef"},
        tags = "@Barcode",
        plugin = {"html:target/cucumber-reports/cucumber.html",
                "json:target/cucumber-reports/cucumber.json"}
)
public class BarcodeRunner {

    @BeforeClass
    public static void startApp(){
        WindowsDriver driver = DriverFactory.createDriver(15);
        OverviewWindow overviewWindow = new OverviewWindow(driver);
        overviewWindow.selectProductionLine("Sato");
    }

    @AfterClass()
    public static void quitApp(){
        try {
            deleteDirectory(new File(AppConfig.LOG_PRINTING_PATH));
        } catch (IOException e) {
            e.printStackTrace();
        }
        BaseWindow baseWindow = new BaseWindow(DriverFactory.getDriver(40));
        baseWindow.closeApp();
        DriverFactory.deleteDriver();
    }

}
