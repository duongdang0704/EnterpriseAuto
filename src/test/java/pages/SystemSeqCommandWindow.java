package pages;

import io.appium.java_client.windows.WindowsDriver;
import pages.objects.Locator;

import java.util.Locale;

public class SystemSeqCommandWindow extends BaseWindow{

    private Locator tc_textbox = new Locator(Locator.By.AccessibilityId, "6220d0cc-099a-48dc-938b-3e3354a598cb");
    private Locator para1_textbox = new Locator(Locator.By.AccessibilityId, "0da06104-5220-4b9c-8d3f-92ec39f305b7");
    private Locator para2_textbox = new Locator(Locator.By.AccessibilityId, "54a80f0b-b085-4e6e-8ca7-c8de768ffad7");
    private Locator para3_textbox = new Locator(Locator.By.AccessibilityId, "51bd791b-1bdd-486d-b188-d35ecf7d993c");
    private Locator para4_textbox = new Locator(Locator.By.AccessibilityId, "9ab4eea3-80e1-4bd4-ba7d-53f5ddb51e3b");
    private Locator result_textbox = new Locator(Locator.By.AccessibilityId, "181e905f-b317-4ede-9978-4422f9b97a4c");
    private Locator addToTextFile_button = new Locator(Locator.By.Name, "AddToTextFile");
    private Locator copyFile_button = new Locator(Locator.By.Name, "CopyFile");
    private Locator deleteFile_button = new Locator(Locator.By.Name, "DeleteFile");
    private Locator execShellCommand_button = new Locator(Locator.By.Name, "ExecShellCommand");
    private Locator findFile_button = new Locator(Locator.By.Name, "FindFile");
    private Locator getFileInfo_button = new Locator(Locator.By.Name, "GetFileInfo");
    private Locator moveFile_button = new Locator(Locator.By.Name, "MoveFile");
    private Locator playSound_button = new Locator(Locator.By.Name, "PlaySound");
    private Locator setCursor_button = new Locator(Locator.By.Name, "SetCursor");

    public SystemSeqCommandWindow(WindowsDriver driver){
        super(driver);
    }

    public void enterTC(String value){
        enter(tc_textbox, value);
    }

    public void enterPara1(String value){
        enter(para1_textbox, value);
    }

    public void enterPara2(String value){
        enter(para2_textbox, value);
    }

    public void enterPara3(String value){
        enter(para3_textbox, value);
    }

    public void enterPara4(String value){
        enter(para4_textbox, value);
    }

    public String getResult(){
        return getText(result_textbox);
    }

    public void clickAddToTextFile(){
        click(addToTextFile_button);
    }

    public void clickCopyFile(){
        click(copyFile_button);
    }

    public void clickDeleteFile(){
        click(deleteFile_button);
    }

    public void clickExecShellCommand(){
        click(execShellCommand_button);
    }

    public void clickFindFile(){
        click(findFile_button);
    }

    public void clickGetFileInfo(){
        click(getFileInfo_button);
    }

    public void clickMoveFile(){
        click(moveFile_button);
    }

    public void clickPlaySound(){
        click(playSound_button);
    }

    public void clickSetCursor(){
        click(setCursor_button);
    }
}
