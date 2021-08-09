package stepsdef;

import com.google.common.io.Files;
import config.AppConfig;
import cucumber.TestContext;
import io.appium.java_client.windows.WindowsDriver;
import io.cucumber.java.en.And;
import io.cucumber.java.en.Given;
import io.cucumber.java.en.Then;
import io.cucumber.java.en.When;
import org.apache.commons.io.FileUtils;
import org.junit.Assert;
import org.w3c.dom.Element;
import org.w3c.dom.NodeList;
import pages.SystemSeqCommandWindow;
import utilities.WaitFor;
import utilities.XMLDocument;

import java.io.File;
import java.io.IOException;
import java.nio.charset.Charset;
import java.nio.file.Path;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import static java.nio.file.Files.*;

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

    @And("I click AddToTextFile")
    public void i_click_AddToTextFile(){
        systemSeqCommandWindow.clickAddToTextFile();
    }

    @Then("I should see the correct result")
    public void i_should_see_the_correct_result(){

    }

    @When("I enter TC {string}, filename {string}, text {string}, DoCreateDir {string}")
    public void i_enter_Filename_Text_DoCreateDir(String TC, String fileName, String text, String doCreateDir) {
        testContext.scenarioContext.setContext("TC", TC);
        testContext.scenarioContext.setContext("File Name", fileName);
        testContext.scenarioContext.setContext("Content", text);
        systemSeqCommandWindow.enterTC(TC);
        systemSeqCommandWindow.enterPara1(fileName);
        systemSeqCommandWindow.enterPara2(text);
        systemSeqCommandWindow.enterPara3(doCreateDir);

    }

    @Then("I should see context existing in the file")
    public void i_should_see_the_file_exists() {
        String fileName = testContext.scenarioContext.getContext("File Name").toString();
        WaitFor.fileExists(fileName);
        try {
            List<String> lines = Files.readLines(new File(fileName), Charset.defaultCharset());
            int lastLine = lines.size() - 1;
            if (lastLine == -1) {
                WaitFor.pause(2);
                lines = Files.readLines(new File(fileName), Charset.defaultCharset());
                lastLine = lines.size() - 1;
            }
            Assert.assertEquals(testContext.scenarioContext.getContext("Content").toString(), lines.get(lastLine));
        }catch (IOException e){
            e.printStackTrace();
            Assert.assertTrue(false);
        }
        try {
            File folder = new File(testContext.scenarioContext.getContext("Folder").toString());
            FileUtils.deleteDirectory(folder);

        }catch (IOException e){
            e.printStackTrace();
        }

    }

    @Then("I should not see the file exists")
    public void i_should_not_see_the_file_exists() {
        File  file = new File(testContext.scenarioContext.getContext("File Name").toString());
        Assert.assertFalse(file.exists());
    }

    @Given("Folder {string} is available")
    public void folder_is_available(String folderPath) {
        try {
            createDirectory(Path.of(folderPath));
            testContext.scenarioContext.setContext("Folder", folderPath);
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    @Given("Folder {string} is not available")
    public void folder_is_not_available(String folderPath) {
        File folder = new File(folderPath);
        if (folder.exists()){
            folder.delete();
        }
    }

    @Given("File {string} is available")
    public void file_is_available(String file) {
        String folder = file.substring(0, file.lastIndexOf("\\"));
        testContext.scenarioContext.setContext("Folder", folder);
        if (!new File(file).exists()) {
            try {
                createDirectory(Path.of(folder));
                createFile(Path.of(file));

            } catch (IOException e) {
                e.printStackTrace();
            }
        }
    }

    @Then("I should see warning {string} in log")
    public void i_should_see_warning_in_log(String log) {
        WaitFor.pause(2);
        SimpleDateFormat formatter = new SimpleDateFormat("yyyyMMdd");
        Date date = new Date();
        String logFile = AppConfig.LOG_APPLICATION + formatter.format(date).toString() + ".xml";
        boolean result = false;
        try {
            XMLDocument xmlDocument = new XMLDocument(logFile);
            NodeList messages = xmlDocument.getElementByTagName("Message");
            Element latestMessage = (Element) messages.item(messages.getLength() - 1);
            if(latestMessage.getTextContent().equals(log)){
                result = true;
            }

        }catch (Exception e){
            e.printStackTrace();
            Assert.assertTrue(false);
        }
        Assert.assertTrue(result);
    }
}
