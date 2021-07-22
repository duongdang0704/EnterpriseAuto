package stepsdef;

import config.AppConfig;
import cucumber.TestContext;
import io.appium.java_client.windows.WindowsDriver;
import io.cucumber.java.en.And;
import io.cucumber.java.en.Given;
import io.cucumber.java.en.Then;
import io.cucumber.java.en.When;
import org.apache.commons.io.FileUtils;
import org.junit.Assert;
import pages.OverviewWindow;
import pages.UDFJSONFunctionWindow;
import pages.UDFJSONFunctionWindow;

import java.io.File;
import java.io.IOException;

public class UDFJSONFunctionSteps {
    private WindowsDriver driver;
    private TestContext testContext;
    private UDFJSONFunctionWindow udfJsonFuctionWindow;
    public OverviewWindow overviewWindow;

    public UDFJSONFunctionSteps(TestContext testContext) {
        this.testContext = testContext;
        driver = testContext.getDriver();
        udfJsonFuctionWindow = new UDFJSONFunctionWindow(driver);
        overviewWindow = new OverviewWindow(driver);
    }

    @Given("I go to UDF Json Line Screen")
    public void i_go_to_udf_json_line_screen(){
        overviewWindow.selectProductionLine("UDFJson");
    }

    @When("I start to test Json testcase named {string}")
    public void i_want_to_test_json_testcase_named(String tc){
        udfJsonFuctionWindow.enterTestcaseName(tc);
    }

    @And("I enter json para value {string}, {string}, {string} and select UDF Json function {string}")
    public void i_enter_json_para_value_and_select_json_function(String string, String string2, String string3, String option) {
        udfJsonFuctionWindow.selectTextCbbOption(option);
        udfJsonFuctionWindow.enterParam1(string);
        udfJsonFuctionWindow.enterParam2(string2);
        udfJsonFuctionWindow.enterParam3(string3);
    }

    @Then("I should see the correct Json result of 2 files {string} and {string}")
    public void i_should_see_the_correct_json_result_from_json_function(String outputTestFile, String expectedFile) throws IOException {
        String path1 = AppConfig.TEST_DATA + "\\JSON\\" + outputTestFile + ".txt";
        String path2 = AppConfig.TEST_DATA + "\\Baseline\\JSON\\" + expectedFile + ".txt";
        File file1 = new File(path1);
        File file2 = new File(path2);
        Assert.assertTrue(FileUtils.contentEqualsIgnoreEOL(file1, file2, null));
    }

}

