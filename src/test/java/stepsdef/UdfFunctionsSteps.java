package stepsdef;

import cucumber.TestContext;
import io.appium.java_client.windows.WindowsDriver;
import io.cucumber.java.en.Then;
import io.cucumber.java.en.When;
import org.junit.Assert;
import pages.UdfFunctionsWindow;

public class UdfFunctionsSteps {

    private WindowsDriver driver;
    private TestContext testContext;
    private UdfFunctionsWindow udfFunctionsWindow;

    public UdfFunctionsSteps(TestContext testContext){
        this.testContext = testContext;
        driver = testContext.getDriver();
        udfFunctionsWindow = new UdfFunctionsWindow(driver);
    }

    @When("I enter Concatenate parameter value {string} and {string}")
    public void i_enter_concatenate_parameter_value_and(String string, String string2) {
        udfFunctionsWindow.enterConcatenatePara1(string);
        udfFunctionsWindow.enterConcatenatePara2(string2);
    }

    @Then("I should see correct {string} from Concatenate")
    public void i_should_see_correct_from_concatenate(String string) {
        Assert.assertEquals(string, udfFunctionsWindow.getTextConcatenateResult());
    }

    @When("I enter GetText parameter value {string}")
    public void i_enter_get_text_parameter_value(String string) {
        // Write code here that turns the phrase above into concrete actions
        throw new io.cucumber.java.PendingException();
    }

    @Then("I should see correct {string} from GetText")
    public void i_should_see_correct_from_get_text(String string) {
        // Write code here that turns the phrase above into concrete actions
        throw new io.cucumber.java.PendingException();
    }

    @When("I enter GS1AddChecksum parameter value {string}")
    public void i_enter_gs1add_checksum_parameter_value(String string) {
        // Write code here that turns the phrase above into concrete actions
        throw new io.cucumber.java.PendingException();
    }

    @Then("I should see correct {string} from GS1AddCheckSum")
    public void i_should_see_correct_from_gs1add_check_sum(String string) {
        // Write code here that turns the phrase above into concrete actions
        throw new io.cucumber.java.PendingException();
    }

    @When("I enter Length parameter value {string}")
    public void i_enter_length_parameter_value(String string) {
        // Write code here that turns the phrase above into concrete actions
        throw new io.cucumber.java.PendingException();
    }

    @Then("I should see correct {string} from Length")
    public void i_should_see_correct_from_length(String string) {
        // Write code here that turns the phrase above into concrete actions
        throw new io.cucumber.java.PendingException();
    }

    @When("I enter Lowercase parameter value {string}")
    public void i_enter_lowercase_parameter_value(String string) {
        // Write code here that turns the phrase above into concrete actions
        throw new io.cucumber.java.PendingException();
    }

    @Then("I should see correct {string} from Lowercase")
    public void i_should_see_correct_from_lowercase(String string) {
        // Write code here that turns the phrase above into concrete actions
        throw new io.cucumber.java.PendingException();
    }

    @When("I enter Uppercase parameter value {string}")
    public void i_enter_uppercase_parameter_value(String string) {
        // Write code here that turns the phrase above into concrete actions
        throw new io.cucumber.java.PendingException();
    }

    @Then("I should see correct {string} from Uppercase")
    public void i_should_see_correct_from_uppercase(String string) {
        // Write code here that turns the phrase above into concrete actions
        throw new io.cucumber.java.PendingException();
    }

    @When("I enter Replace parameter value {string}, {string}, and {string}")
    public void i_enter_replace_parameter_value_and(String string, String string2, String string3) {
        // Write code here that turns the phrase above into concrete actions
        throw new io.cucumber.java.PendingException();
    }

    @Then("I should see correct {string} from Replace")
    public void i_should_see_correct_from_replace(String string) {
        // Write code here that turns the phrase above into concrete actions
        throw new io.cucumber.java.PendingException();
    }

    @When("I enter Trim parameter value {string}")
    public void i_enter_trim_parameter_value(String string) {
        // Write code here that turns the phrase above into concrete actions
        throw new io.cucumber.java.PendingException();
    }

    @Then("I should see correct {string} from Trim")
    public void i_should_see_correct_from_trim(String string) {
        // Write code here that turns the phrase above into concrete actions
        throw new io.cucumber.java.PendingException();
    }

    @When("I enter TrimStart parameter value {string}")
    public void i_enter_trim_start_parameter_value(String string) {
        // Write code here that turns the phrase above into concrete actions
        throw new io.cucumber.java.PendingException();
    }

    @Then("I should see correct {string} from TrimStart")
    public void i_should_see_correct_from_trim_start(String string) {
        // Write code here that turns the phrase above into concrete actions
        throw new io.cucumber.java.PendingException();
    }
}
