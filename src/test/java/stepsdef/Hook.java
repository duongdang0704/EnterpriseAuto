package stepsdef;

import config.AppConfig;
import cucumber.TestContext;
import io.cucumber.java.After;
import io.cucumber.java.Before;
import pages.BaseWindow;
import pages.OverviewWindow;
import testrunner.TestRunner;
import utilities.DataReader;
import utilities.FileHandler;

import java.io.File;
import java.io.IOException;


import static org.apache.commons.io.FileUtils.*;

public class Hook extends TestRunner {

    private TestContext testContext;
    private BaseWindow baseWindow;
    private OverviewWindow overviewWindow;

    public Hook(TestContext testContext){
        this.testContext = testContext;
        testContext.setDriver(driver);
        overviewWindow = new OverviewWindow(driver);
    }

    @Before("@Barcode")
    public void setupHookBarcode(){
        overviewWindow.selectProductionLine("Sato");
    }

    @Before
    public void setupHook(){

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

}
