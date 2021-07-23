package hooks;

import config.AppConfig;
import cucumber.TestContext;
import io.cucumber.java.After;
import io.cucumber.java.Before;
import pages.BaseWindow;
import pages.OverviewWindow;
import testrunner.BarcodeRunner;
import utilities.FileHandler;

import java.io.File;
import java.io.IOException;

import static org.apache.commons.io.FileUtils.copyFileToDirectory;

public class BarcodeHook extends BarcodeRunner {
    private TestContext testContext;
    private BaseWindow baseWindow;

    public BarcodeHook(TestContext testContext){
        this.testContext = testContext;
        testContext.setDriver(driver);

    }

    @Before
    public void setupHook(){

    }
    @After
    public void tearDownHook() throws IOException {
        String actualFileName = testContext.scenarioContext.getContext("Actual Printing File").toString();
        String baselineFileName = testContext.scenarioContext.getContext("Baseline Printing File").toString();
        boolean renameSuccess = FileHandler.rename(AppConfig.LOG_PRINTING_PATH + actualFileName, AppConfig.LOG_PRINTING_PATH + baselineFileName);
        if (renameSuccess == true) {
            copyFileToDirectory(new File(AppConfig.LOG_PRINTING_PATH + baselineFileName), new File(AppConfig.TEST_DATA + testContext.scenarioContext.getContext("Printer").toString()));
        }
    }

}
