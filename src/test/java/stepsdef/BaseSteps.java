package stepsdef;

import cucumber.TestContext;
import io.appium.java_client.windows.WindowsDriver;
import io.cucumber.java.en.Given;
import io.cucumber.java.en.When;
import org.openqa.selenium.remote.DesiredCapabilities;
import pages.OverviewWindow;

import java.io.FileWriter;
import java.io.IOException;
import java.net.URL;
import java.util.concurrent.TimeUnit;

public class BaseSteps {

    private WindowsDriver driver;
    private TestContext testContext;

    public BaseSteps(TestContext testContext){
        this.testContext = testContext;
        driver = testContext.getDriver();
    }

    @When("I go to line screen {string}")
    public void i_go_to_line_screen(String line) {
        OverviewWindow overviewWindow = new OverviewWindow(driver);
        overviewWindow.selectProductionLine(line);
    }

    public void writeFileSource(String path, String content){
        try {
            FileWriter myWriter = new FileWriter(path);
            myWriter.write(content);
            myWriter.close();
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

}
