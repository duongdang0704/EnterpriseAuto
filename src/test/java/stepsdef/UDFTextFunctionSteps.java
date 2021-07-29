package stepsdef;

import cucumber.TestContext;
import io.appium.java_client.windows.WindowsDriver;
import io.cucumber.java.en.And;
import io.cucumber.java.en.Given;
import io.cucumber.java.en.Then;
import io.cucumber.java.en.When;
import org.junit.Assert;
import pages.OverviewWindow;
import pages.UDFTextFunctionWindow;

public class UDFTextFunctionSteps {
    private WindowsDriver driver;
    private TestContext testContext;
    private UDFTextFunctionWindow udfTextFunctionWindow;
    public OverviewWindow overviewWindow;

    public UDFTextFunctionSteps(TestContext testContext) {
        this.testContext = testContext;
        driver = testContext.getDriver();
        udfTextFunctionWindow = new UDFTextFunctionWindow(driver);
        overviewWindow = new OverviewWindow(driver);
    }

    @Given("I go to UDF Text Line Screen")
    public void i_go_to_udf_text_line_screen(){
        overviewWindow.selectProductionLine("UDFText");
    }

    @When("I want to test Text function id {string}")
    public void i_want_to_test_text_function_id(String string){
    }

    @And("I enter text para value {string}, {string}, {string} and select UDF Text function {string}")
    public void i_enter_text_para_value_and_select_udf_text_function(String string, String string2, String string3, String option) {
        udfTextFunctionWindow.selectTextCbbOption(option);
        udfTextFunctionWindow.enterParam1(string);
        udfTextFunctionWindow.enterParam2(string2);
        udfTextFunctionWindow.enterParam3(string3);
    }

    @Then("I should see the correct text result {string} from {string}")
    public void i_should_see_the_correct_text_result_from_text_function(String string, String string2) {
        if(string.contains("[space]")){
            string = string.replace("[space]", " ");
        }
        Assert.assertEquals(string, udfTextFunctionWindow.getResult());
    }

}
