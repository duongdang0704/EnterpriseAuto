package stepsdef;

import config.AppConfig;
import cucumber.TestContext;
import io.appium.java_client.windows.WindowsDriver;
import io.cucumber.java.After;
import io.cucumber.java.Before;
import org.apache.commons.io.FileUtils;
import org.openqa.selenium.remote.DesiredCapabilities;
import pages.OverviewWindow;
import utilities.DataReader;
import utilities.DriverFactory;
import utilities.FileHandler;
import utilities.WaitFor;

import java.io.File;
import java.io.IOException;
import java.net.URL;
import java.util.concurrent.TimeUnit;


import static org.apache.commons.io.FileUtils.*;

public class Hook {

    private TestContext testContext;
    private WindowsDriver driver;

    public Hook(TestContext testContext){
        this.testContext = testContext;

    }

    @Before("@Barcode")
    public void setupHookBarcode(){

    }

    @Before("@UDFFunctions")
    public void setupUDFFunctions(){

    }

    @Before
    public void setupHook(){
        driver = DriverFactory.getDriver(40);
        testContext.setDriver(driver);

    }

    @After("@Barcode")
    public void tearDownBarcode() throws IOException {

        String actualFileName = testContext.scenarioContext.getContext("Actual Printing File").toString();
        String baselineFileName = testContext.scenarioContext.getContext("Baseline Printing File").toString();
        boolean renameSuccess = FileHandler.rename(AppConfig.LOG_PRINTING_PATH + actualFileName, AppConfig.LOG_PRINTING_PATH + baselineFileName);
        if (renameSuccess == true) {
            copyFileToDirectory(new File(AppConfig.LOG_PRINTING_PATH + baselineFileName), new File(AppConfig.TEST_DATA + testContext.scenarioContext.getContext("Printer").toString()));
        }
    }
    @After
    public void tearDown(){

    }

}
