package stepsdef;

import cucumber.TestContext;
import io.appium.java_client.windows.WindowsDriver;
import io.cucumber.java.en.And;
import io.cucumber.java.en.Given;
import io.cucumber.java.en.Then;
import io.cucumber.java.en.When;
import org.junit.Assert;
import pages.OverviewWindow;
import pages.UDFLogicalFunctionWindow;

public class UDFLogicalFunctionSteps {

    private WindowsDriver driver;
    private TestContext testContext;
    private UDFLogicalFunctionWindow udfLogicalFunctionWindow;
    public OverviewWindow overviewWindow;

    public UDFLogicalFunctionSteps(TestContext testContext) {
        this.testContext = testContext;
        driver = testContext.getDriver();
        udfLogicalFunctionWindow = new UDFLogicalFunctionWindow(driver);
        overviewWindow = new OverviewWindow(driver);
    }

    @Given("I go to UDF Logical Line Screen")
    public void i_go_to_udf_logical_line_screen(){
        overviewWindow.selectProductionLine("UDFLogical");
    }

    @When("I want to test Logical function id {string}")
    public void i_want_to_test_logical_function_id(String string){
    }

    @And("I enter logical para value {string}, {string}, {string}, {string} and select UDF Logical function {string}")
    public void i_enter_logical_para_value_and_select_udf_logical_function
            (String string, String string2, String string3, String string4, String option) {
        udfLogicalFunctionWindow.selectLogicalCbbOption(option);
        udfLogicalFunctionWindow.enterParam1(string);
        udfLogicalFunctionWindow.enterParam2(string2);
        udfLogicalFunctionWindow.enterParam3(string3);
        udfLogicalFunctionWindow.enterParam4(string4);
    }

    @Then("I should see the correct logical result {string} from {string}")
    public void i_should_see_the_correct_logical_result_from(String string, String string2) {
        Assert.assertEquals(string, udfLogicalFunctionWindow.getResult());
    }

}
