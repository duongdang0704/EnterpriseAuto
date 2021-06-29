package pages;

import io.appium.java_client.windows.WindowsDriver;
import pages.objects.Locator;

public class BarcodeWindow extends BaseWindow{

    protected Locator input1_textbox;
    protected Locator input2_textbox;
    protected Locator input3_textbox;
    protected Locator input4_textbox;
    protected Locator input5_textbox;

    protected Locator labelPath_textbox;
    protected Locator labelPreview_image;
    protected Locator print_button;
    protected Locator title_textbox;

    public BarcodeWindow(WindowsDriver driver){
        super(driver);
    }

    public void enterInput1(String value){
        enter(input1_textbox, value);
    }

    public void waitForLabelPreview(){
        waitForElementAttribute(labelPreview_image, "BoundingRectangle", "Left:1240 Top:239 Width:18 Height:18");
    }
    public void enterInput2(String value){
        enter(input2_textbox, value);
    }

    public void enterInput3(String value){
        enter(input3_textbox, value);
    }

    public void enterInput4(String value){
        enter(input4_textbox, value);
    }

    public void enterInput5(String value){
        enter(input5_textbox, value);
    }

    public void enterTitle(String value){
        enter(title_textbox, value);
    }

    public void enterLabelPath(String value){
        enter(labelPath_textbox, value);
        waitForLabelPreview();
    }

    public void clickPrint(){
        click(print_button);
    }
}
