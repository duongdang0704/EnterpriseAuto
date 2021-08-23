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
import pages.OverviewWindow;
import pages.SequenceMonitorDetailWindow;
import pages.SequenceMonitorWindow;
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

    @And("I click DeleteFile")
    public void i_click_DeleteFile() {
        systemSeqCommandWindow.clickDeleteFile();
    }

    @Then("I should see the correct result")
    public void i_should_see_the_correct_result() {

    }

    @When("I enter {string}, {string}, {string}, {string}")
    public void i_enter_TC_Para1_Para2_Para3(String TC, String para1, String para2, String para3) {
        systemSeqCommandWindow.enterTC(TC);
        systemSeqCommandWindow.enterPara1(para1);
        systemSeqCommandWindow.enterPara2(para2);
        systemSeqCommandWindow.enterPara3(para3);

    }

    @And("I click button {string}")
    public void i_click_button(String name){
        systemSeqCommandWindow.clickButtonByName(name);
    }

    @When("I enter {string}, {string}")
    public void i_enter_TC_Para1(String TC, String para1) {
        systemSeqCommandWindow.enterTC(TC);
        systemSeqCommandWindow.enterPara1(para1);

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

    }

    @Then("I should not see the file exists {string}")
    public void i_should_not_see_the_file_exists(String filePath) {
        WaitFor.pause(2);
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

        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    @Given("Folder {string} is not available")
    public void folder_is_not_available(String folderPath) {
        File folder = new File(folderPath);
        try {
            if (folder.exists()) {

                FileUtils.deleteDirectory(folder);
            }
        }catch (IOException ioException){
            ioException.printStackTrace();
        }

    }

    @Given("File {string} is available")
    public void file_is_available(String file) {
        String folder = file.substring(0, file.lastIndexOf("\\"));
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

    @Given("Source {string} is available")
    public void source_is_available(String source){
        File sourceFolder = new File(source);
        File testDataFolder = new File(AppConfig.TEST_DATA);
        try {
            if (sourceFolder.exists()) {
                FileUtils.deleteDirectory(sourceFolder);
            }
            FileUtils.copyDirectory(testDataFolder, sourceFolder);
        } catch (IOException ie) {
            ie.printStackTrace();
        }
    }

    @Given("Source file {string}, destination folder {string} does not exist")
    public void source_file_destination_folder_does_not_exist(String source, String destination) {
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

    @Then("I should see the file exists {string}")
    public void i_should_see_the_file_exists(String filePath){
        WaitFor.pause(3);
        File file = new File(filePath);
        Assert.assertTrue(new File(filePath).exists());
    }

    @And("I click MoveFile")
    public void i_click_MoveFile(){
        systemSeqCommandWindow.clickMoveFile();
    }

    @Then("I should see all files match pattern {string} exist in {string}")
    public void i_should_see_all_files_exists(String sourceFile, String destination){
        WaitFor.pause(3);
        File destinationFolder = new File(destination);
        String expectedExtension = sourceFile.substring(sourceFile.lastIndexOf(".") + 1);
        String[] filePaths = destinationFolder.list();
        for (String filePath :
                filePaths) {
            String actualExtension = filePath.substring(filePath.lastIndexOf(".") + 1);
            Assert.assertEquals(expectedExtension, actualExtension);
        }
    }

    @Then("I should see no files exist in {string}")
    public void i_should_see_no_files_exists(String folderPath){
        WaitFor.pause(3);
        File folder = new File(folderPath);
        String[] filePaths = folder.list();
        Assert.assertEquals(0, filePaths.length);
    }

    @Then("I should see number of files in folder {int} {string}")
    public void i_should_see_number_of_files_in_destination(int numberOfFiles, String folderPath){
        WaitFor.pause(3);
        File folder = new File(folderPath);
        String[] filePaths = folder.list();
        Assert.assertEquals(numberOfFiles, filePaths.length);
    }

    @Then("I should see number of files in {string} equal to {string}")
    public void i_should_see_number_of_files_in_destination_equal_to_ones_in_source(String source, String destination){
        WaitFor.pause(3);
        File sourceFolder = new File(source);
        File destinationFolder = new File(destination);
        int numOfSourceFiles = sourceFolder.listFiles().length;
        int numOfDestinationFiles = destinationFolder.listFiles().length;
        Assert.assertEquals(numOfSourceFiles, numOfDestinationFiles);
    }

    @Then("I should see no files exist with extension {string}")
    public void i_should_see_no_files_exist_with_extension(String filePath){
        WaitFor.pause(3);
        String folderPath = filePath.substring(0, filePath.lastIndexOf(".") - 1);
        File folder = new File(folderPath);
        String expectedExtension = filePath.substring(filePath.lastIndexOf(".") + 1);
        String[] files = folder.list();
        boolean result = true;
        for (String file :
                files) {
            String actualExtension = filePath.substring(filePath.lastIndexOf(".") + 1);
            if (actualExtension.equals(expectedExtension)){
                result = false;
                break;
            }
        }
        Assert.assertTrue(result);
    }

    @Then("I should see sequence command {string} with status {string}")
    public void i_should_see_sequence_command_with_status(String sequenceCommand, String status){
        SequenceMonitorDetailWindow sequenceMonitorDetailWindow = new SequenceMonitorDetailWindow(driver);
        String sequenceResult = sequenceMonitorDetailWindow.getSequenceResult(sequenceCommand);
        Assert.assertEquals(sequenceResult, status);
    }

    @And("I click FindFile")
    public void i_click_FindFile(){
        systemSeqCommandWindow.clickFindFile();
    }

    @And("I should see result {string}")
    public void i_should_see_result(String result){
        systemSeqCommandWindow.getResult();
        Assert.assertEquals(result, systemSeqCommandWindow.getResult());
    }

    @When("I enter sequence parameters {string}, {string}, {string}, {string}")
    public void i_enter_Para1_Para2_Para3_Para4( String para1, String para2, String para3, String para4) {
        systemSeqCommandWindow.enterPara1(para1);
        systemSeqCommandWindow.enterPara2(para2);
        systemSeqCommandWindow.enterPara3(para3);
        systemSeqCommandWindow.enterPara4(para4);
    }

    @When("I enter test cases {string}")
    public void i_enter_TC_Para1_Para2_Para3_Para(String TC) {
        systemSeqCommandWindow.enterTC(TC);

    }

}
