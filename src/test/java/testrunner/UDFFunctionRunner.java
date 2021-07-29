package testrunner;

import config.AppConfig;
import io.appium.java_client.windows.WindowsDriver;
import io.cucumber.junit.Cucumber;
import io.cucumber.junit.CucumberOptions;
import org.junit.AfterClass;
import org.junit.BeforeClass;
import org.junit.runner.RunWith;
import pages.BaseWindow;
import utilities.DataReader;
import utilities.DriverFactory;

import java.io.File;
import java.io.IOException;

import static org.apache.commons.io.FileUtils.deleteDirectory;

@RunWith(Cucumber.class)
@CucumberOptions(
        features = "src/test/resources/features/UDFDateTimeFunctions.feature",
        glue = {"stepsdef"},
        tags = "@UDFFunctions",
        plugin = {"html:target/cucumber-reports/cucumber.html",
                "json:target/cucumber-reports/cucumber.json"}
)
public class UDFFunctionRunner {

    @BeforeClass
    public static void startApp(){
        DriverFactory.createDriver(10);
    }

    @AfterClass()
    public static void quitApp(){
        BaseWindow baseWindow = new BaseWindow(DriverFactory.getDriver(10));
        baseWindow.closeApp();
        DriverFactory.deleteDriver();
    }

}
