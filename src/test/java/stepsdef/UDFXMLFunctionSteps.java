package stepsdef;

import config.AppConfig;
import cucumber.TestContext;
import io.appium.java_client.windows.WindowsDriver;
import io.cucumber.java.bs.A;
import io.cucumber.java.en.And;
import io.cucumber.java.en.Given;
import io.cucumber.java.en.Then;
import io.cucumber.java.en.When;
import org.apache.commons.io.FileUtils;
import org.junit.Assert;
import pages.OverviewWindow;
import pages.UDFXMLFunctionWindow;
import pages.UDFXMLFunctionWindow;

import java.io.*;

public class UDFXMLFunctionSteps {
    private WindowsDriver driver;
    private TestContext testContext;
    private UDFXMLFunctionWindow udfXmlFuctionWindow;
    public OverviewWindow overviewWindow;

    public UDFXMLFunctionSteps(TestContext testContext) {
        this.testContext = testContext;
        driver = testContext.getDriver();
        udfXmlFuctionWindow = new UDFXMLFunctionWindow(driver);
        overviewWindow = new OverviewWindow(driver);
    }

    @Given("I go to UDF XML Line Screen")
    public void i_go_to_udf_json_line_screen(){
        overviewWindow.selectProductionLine("UDFXML");
    }

    @And("I start to test XML testcase named {string}")
    public void i_want_to_test_xml_testcase_named(String tc){
        udfXmlFuctionWindow.enterTestcaseName(tc);
    }

    @And("I enter xml para value {string}, {string}, {string} and select UDF XML function {string}")
    public void i_enter_xml_para_value_and_select_xml_function(String string, String string2, String string3, String option) {
        udfXmlFuctionWindow.selectTextCbbOption(option);
        udfXmlFuctionWindow.enterParam1(string);
        udfXmlFuctionWindow.enterParam2(string2);
        udfXmlFuctionWindow.enterParam3(string3);
    }

    @Then("I should see the correct XML result of 2 files {string} and {string}")
    public void i_should_see_the_correct_xml_result_from_xml_function(String outputTestFile, String expectedFile) throws IOException {
        String path1 = AppConfig.TEST_DATA + "\\XML\\" + outputTestFile + ".txt";
        String path2 = AppConfig.TEST_DATA + "\\Baseline\\XML\\" + expectedFile + ".txt";
        File file1 = new File(path1);
        File file2 = new File(path2);
        System.out.println(file1.getAbsolutePath());
        System.out.println(file2.getAbsolutePath());
        Assert.assertTrue(FileUtils.contentEquals(file1, file2));
    }

}
