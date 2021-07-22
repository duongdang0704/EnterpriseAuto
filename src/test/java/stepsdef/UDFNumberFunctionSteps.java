package stepsdef;

import cucumber.TestContext;
import io.appium.java_client.windows.WindowsDriver;
import io.cucumber.java.en.And;
import io.cucumber.java.en.Given;
import io.cucumber.java.en.Then;
import io.cucumber.java.en.When;
import org.junit.Assert;
import pages.OverviewWindow;
import pages.UDFNumberFunctionWindow;

import java.util.regex.Pattern;

public class UDFNumberFunctionSteps {
    private WindowsDriver driver;
    private TestContext testContext;
    private UDFNumberFunctionWindow udfNumberFunctionWindow;
    public OverviewWindow overviewWindow;

    public UDFNumberFunctionSteps(TestContext testContext) {
        this.testContext = testContext;
        driver = testContext.getDriver();
        udfNumberFunctionWindow = new UDFNumberFunctionWindow(driver);
        overviewWindow = new OverviewWindow(driver);

    }
    @Given("I go to UDF Number Line Screen")
    public void i_go_to_udf_number_line_screen(){
        overviewWindow.selectProductionLine("UDFNumber");
    }

    @When("I want to test Number function id {string}")
    public void i_want_to_testnumber_function_id(String string){
    }

    @And("I enter number para value {string}, {string}, {string} and select UDF Number function {string}")
    public void i_enter_number_para_value_and_select_udf_number_function(String string, String string2, String string3, String option) {
        udfNumberFunctionWindow.selectNumberCbbOption(option);
        udfNumberFunctionWindow.enterParam1(string);
        udfNumberFunctionWindow.enterParam2(string2);
        udfNumberFunctionWindow.enterParam3(string3);
    }

    @Then("I should see the correct Number result value {string} from {string}")
    public void i_should_see_the_correct_number_result_value_from_of_number_function(String string, String string2) {
        Assert.assertEquals(string, udfNumberFunctionWindow.getResult());
    }

    @Then("I should see the random number between {string} and {string} from GetRamdomNumber")
    public void i_should_see_the_random_number_between_and_from_get_ramdom_number(String string, String string2) {
        String expected = "";
        if (!Pattern.compile("[0-9]").matcher(string).find() || !Pattern.compile("[0-9]").matcher(string2).find()) {
            Assert.assertEquals(expected = "", udfNumberFunctionWindow.getResult());
        } else {
            if(((Double.parseDouble(string) - (int)Double.parseDouble(string)) != 0)
                    || (Double.parseDouble(string2) - (int)(Double.parseDouble(string2)) != 0)){
                Assert.assertEquals(expected = "", udfNumberFunctionWindow.getResult());
            }else{
                int min = Integer.parseInt(string);
                int max = Integer.parseInt(string2);
                if ((min > max) || ((min - min) !=0) || ((max - max) != 0)) {
                    Assert.assertEquals(expected = "", udfNumberFunctionWindow.getResult());
                } else {
                    int result = Integer.parseInt(udfNumberFunctionWindow.getResult());
                    Assert.assertTrue((min <= result) && (result <= max));
                }
            }
        }
    }
}
