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
import utilities.ApplicationLog;
import utilities.WaitFor;
import utilities.XMLDocument;

import java.awt.*;
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

    public SystemSeqCommandSteps(TestContext testContext) {
        this.testContext = testContext;
        driver = testContext.getDriver();
        systemSeqCommandWindow = new SystemSeqCommandWindow(driver);
    }

    @Given("I want to check TC {string}")
    public void i_want_to_check_tc(String value) {
        systemSeqCommandWindow.enterTC(value);
    }

    @And("I click AddToTextFile")
    public void i_click_AddToTextFile() {
        systemSeqCommandWindow.clickAddToTextFile();
    }

    @And("I click CopyFile")
    public void i_click_CopyFile() {
        systemSeqCommandWindow.clickCopyFile();
    }

    @Then("I should see the correct result")
    public void i_should_see_the_correct_result() {

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

    @Then("I should see text {string} existing in the file {string}")
    public void i_should_see_content_existing_in_the_file(String text, String filePath) {
        WaitFor.fileExists(filePath);
        try {
            List<String> lines = Files.readLines(new File(filePath), Charset.defaultCharset());
            int lastLine = lines.size() - 1;
            if (lastLine == -1) {
                WaitFor.pause(2);
                lines = Files.readLines(new File(filePath), Charset.defaultCharset());
                lastLine = lines.size() - 1;
            }
            Assert.assertEquals(text, lines.get(lastLine));
        } catch (IOException e) {
            e.printStackTrace();
            Assert.assertTrue(false);
        }
        try {
            File folder = new File(testContext.scenarioContext.getContext("Folder").toString());
            FileUtils.deleteDirectory(folder);

        } catch (IOException e) {
            e.printStackTrace();
        }

    }

    @Then("I should not see the file exists {string}")
    public void i_should_not_see_the_file_exists(String filePath) {
        File file = new File(filePath);
        Assert.assertFalse(file.exists());
    }

    @Given("Folder {string} is available")
    public void folder_is_available(String folderPath) {
        File folder = new File(folderPath);
        try {
            if (!folder.exists()) {
                createDirectory(Path.of(folderPath));
            }
            testContext.scenarioContext.setContext("Folder", folderPath);
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    @Given("Folder {string} is not available")
    public void folder_is_not_available(String folderPath) {
        File folder = new File(folderPath);
        if (folder.exists()) {
            folder.delete();
        }
        testContext.scenarioContext.setContext("Folder", folderPath);
    }

    @Given("File {string} is available")
    public void file_is_available(String file) {
        String folder = file.substring(0, file.lastIndexOf("\\"));
        testContext.scenarioContext.setContext("Folder", folder);
        if (!new File(file).exists()) {
            try {
                if (!new File(folder).exists()) {
                    createDirectory(Path.of(folder));
                }
                createFile(Path.of(file));

            } catch (IOException e) {
                e.printStackTrace();
            }
        }
    }


    @Given("Source file {string}, destination folder {string} does not exist")
    public void source_file_destination_folder_does_not_exist(String source, String destination) {
        testContext.scenarioContext.setContext("Source Folder", source);
        testContext.scenarioContext.setContext("Destination Folder", destination);
        File destinationFolder = new File(destination);
        File sourceFolder = new File(source);
        File testDataFolder = new File(AppConfig.TEST_DATA);
        try {
            if (sourceFolder.exists()) {
                FileUtils.deleteDirectory(sourceFolder);
            }

            if (destinationFolder.exists()) {
                FileUtils.deleteDirectory(destinationFolder);
            }
            FileUtils.copyDirectory(testDataFolder, sourceFolder);
        } catch (IOException ie) {
            ie.printStackTrace();
        }

    }

    @And("The source file {string} is open")
    public void the_source_file_is_open(String sourceFile) {
        try {
            File file = new File(sourceFile);
            if (!Desktop.isDesktopSupported())//check if Desktop is supported by Platform or not
            {
                System.out.println("not supported");
                return;
            }
            Desktop desktop = Desktop.getDesktop();
            if (file.exists()) {     //checks file exists or not
                desktop.open(file);              //opens the specified file
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    @Then("I should see warning {string} in log")
    public void i_should_see_warning_in_log(String log) {
        WaitFor.pause(4);
        SimpleDateFormat formatter = new SimpleDateFormat("yyyyMMdd");
        Date date = new Date();
        String logFilePath = AppConfig.LOG_APPLICATION + formatter.format(date).toString() + ".xml";
        ApplicationLog applicationLog = new ApplicationLog(logFilePath);
        Assert.assertTrue( applicationLog.getLatestMessage().contains(log));
        //Assert.assertEquals(applicationLog.getLatestMessage(), log);
    }

    @Given("Source file {string}, destination folder {string} exists")
    public void source_file_destination_folder_exists(String source, String destination) {
        testContext.scenarioContext.setContext("Source Folder", source);
        testContext.scenarioContext.setContext("Destination Folder", destination);
        File testDataFolder = new File(AppConfig.TEST_DATA);
        File sourceFolder = new File(source);
        File destinationFolder = new File(destination);
        try {
            if (sourceFolder.exists()){
                FileUtils.deleteDirectory(sourceFolder);
            }
            if (destinationFolder.exists()){
                FileUtils.deleteDirectory(destinationFolder);
            }
            FileUtils.copyDirectory(testDataFolder, sourceFolder);
            createDirectory(Path.of(destination));

        }catch (IOException ie) {
            ie.printStackTrace();
        }
    }

    @When("I enter TC {string}, source file {string}, destination file {string}, DoCreateDir {string}")
    public void i_enter_TC_source_file_destination_file_DoCreateDir(String TC, String sourceFile, String destinationFile, String doCreateDir) {
        testContext.scenarioContext.setContext("TC", TC);
        testContext.scenarioContext.setContext("Source File", sourceFile);
        testContext.scenarioContext.setContext("Destination File", destinationFile);
        systemSeqCommandWindow.enterTC(TC);
        systemSeqCommandWindow.enterPara1(sourceFile);
        systemSeqCommandWindow.enterPara2(destinationFile);
        systemSeqCommandWindow.enterPara3(doCreateDir);

    }

    @Then("I should see the file exists {string}")
    public void i_should_see_the_file_exists(String filePath){
        WaitFor.pause(3);
        File file = new File(filePath);
        Assert.assertTrue(new File(filePath).exists());
    }

    @Then("I should see all text files exist")
    public void i_should_see_all_text_files_exists(){
        WaitFor.pause(3);
        String sourceFilePath = testContext.scenarioContext.getContext("Source File").toString();
        File destinationFolder = new File(testContext.scenarioContext.getContext("Destination Folder").toString());
        String expectedExtension = sourceFilePath.substring(sourceFilePath.lastIndexOf(".") + 1);
        String[] filePaths = destinationFolder.list();
        for (String filePath :
                filePaths) {
            String actualExtension = filePath.substring(filePath.lastIndexOf(".") + 1);
            Assert.assertEquals(expectedExtension, actualExtension);
        }
    }

    @Then("I should see number of files in destination equal to ones in source")
    public void i_should_see_number_of_files_in_destination_equal_to_ones_in_source(){
        WaitFor.pause(3);
        File sourceFolder = new File(testContext.scenarioContext.getContext("Source Folder").toString());
        File destinationFolder = new File(testContext.scenarioContext.getContext("Destination Folder").toString());
        int numOfSourceFiles = sourceFolder.listFiles().length;
        int numOfDestinationFiles = destinationFolder.listFiles().length;
        Assert.assertEquals(numOfSourceFiles, numOfDestinationFiles);
    }
}
