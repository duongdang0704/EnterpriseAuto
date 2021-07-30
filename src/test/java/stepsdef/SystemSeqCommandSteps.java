package stepsdef;

import cucumber.TestContext;
import io.appium.java_client.windows.WindowsDriver;
import io.cucumber.java.en.And;
import io.cucumber.java.en.Given;
import io.cucumber.java.en.Then;
import io.cucumber.java.en.When;
import pages.SystemSeqCommandWindow;

public class SystemSeqCommandSteps {

    private WindowsDriver driver;
    private TestContext testContext;
    private SystemSeqCommandWindow systemSeqCommandWindow;

    public SystemSeqCommandSteps(TestContext testContext){
        this.testContext = testContext;
        driver = testContext.getDriver();
        systemSeqCommandWindow = new SystemSeqCommandWindow(driver);
    }

    @Given("I want to check TC {string}")
    public void i_want_to_check_tc(String value) {
        systemSeqCommandWindow.enterTC(value);
    }

    @When("I enter {string}, {string}, {string}")
    public void i_enter_Filename_Text_DoCreateDir(String fileName, String text, String doCreateDir){
        systemSeqCommandWindow.enterPara1(fileName);
        systemSeqCommandWindow.enterPara2(text);
        systemSeqCommandWindow.enterPara3(doCreateDir);
    }

    @And("I click AddToTextFile")
    public void i_click_AddToTextFile(){
        systemSeqCommandWindow.clickAddToTextFile();
    }

    @Then("I should see the correct result")
    public void i_should_see_the_correct_result(){

    }
}
