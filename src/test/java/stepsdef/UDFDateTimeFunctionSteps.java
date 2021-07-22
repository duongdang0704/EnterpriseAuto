package stepsdef;

import cucumber.TestContext;
import io.appium.java_client.windows.WindowsDriver;
import io.cucumber.java.en.And;
import io.cucumber.java.en.Given;
import io.cucumber.java.en.Then;
import io.cucumber.java.en.When;
import org.junit.Assert;
import pages.OverviewWindow;
import pages.UDFDateTimeFunctionWindow;

public class UDFDateTimeFunctionSteps {

    private WindowsDriver driver;
    private TestContext testContext;
    private UDFDateTimeFunctionWindow udfDateTimeFunctionWindow;
    private OverviewWindow overviewWindow;

    public UDFDateTimeFunctionSteps(TestContext testContext) {
        this.testContext = testContext;
        driver = testContext.getDriver();
        udfDateTimeFunctionWindow = new UDFDateTimeFunctionWindow(driver);
    }

    @Given("I go to UDF DateTime Line Screen")
    public void i_go_to_udf_text_line_screen(){
        overviewWindow = new OverviewWindow(driver);
        overviewWindow.selectProductionLine("UDFDateTime");
    }

    @When("I want to test Datetime function id {string}")
    public void i_want_to_test_datetime_function_id(String string){
    }

    @And("I enter datetime para value {string}, {string}, {string} and select UDF DateTime function {string}")
    public void i_enter_datetime_para_value_and_select_udf_datetime_function(String string, String string2, String string3, String option) {
        udfDateTimeFunctionWindow.selectDateTimeCbbOption(option);
        udfDateTimeFunctionWindow.enterParma1(string);
        udfDateTimeFunctionWindow.enterParma2(string2);
        udfDateTimeFunctionWindow.enterParma3(string3);
    }

    @Then("I should see the correct DateTime result {string} from {string}")
    public void i_should_see_the_correct_datetime_result_from(String string, String string2) {
        Assert.assertEquals(string, udfDateTimeFunctionWindow.getResult());
    }
}
