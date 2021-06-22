package pages;

import io.appium.java_client.windows.WindowsDriver;
import pages.objects.Locator;

public class BarcodeEvolabelWindow extends BarcodeWindow{

    public BarcodeEvolabelWindow(WindowsDriver driver){
        super(driver);
        input1_textbox = new Locator(Locator.By.AccessibilityId, "1f85ea17-ec68-4653-be96-300cfe6e9ade");
        input2_textbox = new Locator(Locator.By.AccessibilityId, "614fc32d-11b7-408b-ad79-5a2f7dd67110");
        input3_textbox = new Locator(Locator.By.AccessibilityId, "c10cf40c-6f3c-4d5c-ae7f-21987d26a2f5");
        input4_textbox = new Locator(Locator.By.AccessibilityId, "0179691d-9d83-493c-95d3-ee37f76b04b0");
        input5_textbox = new Locator(Locator.By.AccessibilityId, "4068c7d5-f003-423c-a395-329fc1388242");
        labelPath_textbox = new Locator(Locator.By.AccessibilityId, "6179efe7-6293-4adf-895e-76d10fa6b94c");
        labelPreview_image = new Locator(Locator.By.ClassName, "Image");
        print_button = new Locator(Locator.By.AccessibilityId, "96d308e4-6ce7-45a0-b1f2-0d7dfaaea682");
        title_textbox = new Locator(Locator.By.AccessibilityId, "7f5c612b-a3d5-48cb-acd3-15e5725e88dc");
    }


}
