package stepsdef;

import cucumber.TestContext;
import io.appium.java_client.windows.WindowsDriver;
import io.cucumber.java.en.And;
import io.cucumber.java.en.Given;
import io.cucumber.java.en.Then;
import io.cucumber.java.en.When;
import org.junit.Assert;
import pages.OverviewWindow;
import pages.UDFTableFunctionWindow;

public class UDFTableFunctionSteps {
    private WindowsDriver driver;
    private TestContext testContext;
    private UDFTableFunctionWindow udfTableFunctionWindow;
    public OverviewWindow overviewWindow;

    public UDFTableFunctionSteps(TestContext testContext) {
        this.testContext = testContext;
        driver = testContext.getDriver();
        udfTableFunctionWindow = new UDFTableFunctionWindow(driver);
        overviewWindow = new OverviewWindow(driver);
    }

    @Given("I go to UDF Table Line Screen")
    public void i_go_to_udf_table_line_screen(){
        overviewWindow.selectProductionLine("UDFTable");
    }

    @When("I start to test table function id {string}")
    public void i_start_to_test_table_function_id(String string){
    }
    @And("I enter table para value {string}, {string} and select UDF Table function {string}")
    public void i_enter_table_para_value_and_select_udf_table_function(String string, String string2, String option) {
        udfTableFunctionWindow.selectTableCbbOption(option);
        udfTableFunctionWindow.enterParam2(string);
        udfTableFunctionWindow.enterParam3(string2);
    }

    @Then("I should see the correct table result {string} from {string}")
    public void i_should_see_the_correct_table_result_from_table_function(String string, String string2) {
        Assert.assertEquals(string, udfTableFunctionWindow.getResult());
    }

}
