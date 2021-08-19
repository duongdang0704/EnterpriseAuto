package stepsdef;

import config.AppConfig;
import cucumber.TestContext;
import io.appium.java_client.windows.WindowsDriver;
import io.cucumber.java.en.And;
import io.cucumber.java.en.Given;
import io.cucumber.java.en.When;
import io.cucumber.java.en_scouse.An;
import org.openqa.selenium.remote.DesiredCapabilities;
import pages.OverviewWindow;
import pages.SequenceMonitorDetailWindow;
import pages.SequenceMonitorWindow;

import java.io.File;
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

    @Given("I go to line screen {string}")
    public void i_go_to_line_screen(String line) {
        writeFileSource("C:\\Testing\\pagesource.txt", driver.getPageSource());
        OverviewWindow overviewWindow = new OverviewWindow(driver);
        overviewWindow.selectProductionLine(line);

    }


    @And("CodeIT Monitor is open")
    public void CodeIT_Monitor_is_open(){
        OverviewWindow overviewWindow = new OverviewWindow(driver);
        overviewWindow.doAFF5();
    }

    @And("Sequence Monitor {string} is open")
    public void Sequence_Monitor_is_open(String sequence){
        SequenceMonitorWindow sequenceMonitorWindow = new SequenceMonitorWindow(driver);
        sequenceMonitorWindow.openSequenceDetails("SystemSequences");
    }

    @And("I close Sequence Monitor, CodeIT Monitor")
    public void i_close_sequence_monitor_codeit_monitor(){
        SequenceMonitorDetailWindow sequenceMonitorDetailWindow = new SequenceMonitorDetailWindow(driver);
        sequenceMonitorDetailWindow.clickClose();
        SequenceMonitorWindow sequenceMonitorWindow = new SequenceMonitorWindow(driver);
        sequenceMonitorWindow.clickClose();
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
