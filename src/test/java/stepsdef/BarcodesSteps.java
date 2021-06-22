package stepsdef;

import config.AppConfig;
import cucumber.TestContext;
import io.appium.java_client.windows.WindowsDriver;
import io.cucumber.java.en.Given;
import io.cucumber.java.en.Then;
import io.cucumber.java.en.When;
import org.apache.commons.io.FileUtils;
import org.junit.Assert;
import pages.BarcodeWindow;
import pages.BarcodeWindowFactory;
import pages.OverviewWindow;
import utilities.WaitFor;
import java.io.*;

public class BarcodesSteps {

    private WindowsDriver driver;
    private TestContext testContext;
    private OverviewWindow overviewWindow;
    private BarcodeWindow barcodeWindow;

    public BarcodesSteps(TestContext testContext) {
        this.testContext = testContext;
        driver = testContext.getDriver();
        overviewWindow = new OverviewWindow(driver);
    }

    @Given("I am on {string} screen")
    public void i_am_on_screen(String printer) {
        testContext.scenarioContext.setContext("Printer", printer);
        //overviewWindow. selectProductionLine(printer);
        barcodeWindow = new BarcodeWindowFactory(driver).getBarcodePrinterWindow(printer);
    }

    @When("I want to check {string} with {string}")
    public void i_want_to_check_with(String AI, String scenario) {
        testContext.scenarioContext.setContext("AI", AI);
        testContext.scenarioContext.setContext("Scenario", scenario);
        barcodeWindow.enterTitle(scenario);
    }

    @When("I enter {string} for AI, {string} for LabelPath")
    public void i_enter_for_ai_for_label_path(String value, String labelPath) {
        testContext.scenarioContext.setContext("AI Value", value);
        testContext.scenarioContext.setContext("Label Path", labelPath);
        barcodeWindow.enterInput1(value);
        barcodeWindow.enterLabelPath(labelPath);
    }

    @When("I click Print")
    public void i_click_print() {
        barcodeWindow.clickPrint();
        WaitFor.pause(5);
    }

    @Then("I should see {string} equal {string} correct printing data")
    public void i_should_see_correct_printing_data(String actualFileName, String baselineFileName){
        testContext.scenarioContext.setContext("Actual Printing File", actualFileName);
        testContext.scenarioContext.setContext("Baseline Printing File", baselineFileName);
        String actualFilePath = AppConfig.LOG_PRINTING_PATH + actualFileName;
        String baselineFilePath = AppConfig.TESTDATA + "Baseline\\" + testContext.scenarioContext.getContext("Printer").toString() + "\\" + baselineFileName;
        try{
            String actualString = FileUtils.readFileToString(new File(actualFilePath), "UTF-8");
            String expectedString = FileUtils.readFileToString(new File(baselineFilePath), "UTF-8");
            Assert.assertEquals(actualString, expectedString);
        }catch (IOException ioe){
            ioe.printStackTrace();
            Assert.assertTrue(false);
        }
    }
}

