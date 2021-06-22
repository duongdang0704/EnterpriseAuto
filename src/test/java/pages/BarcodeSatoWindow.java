package pages;

import io.appium.java_client.windows.WindowsDriver;
import pages.objects.Locator;

public class BarcodeSatoWindow extends BarcodeWindow{

    public BarcodeSatoWindow(WindowsDriver driver){
        super(driver);
        input1_textbox = new Locator(Locator.By.AccessibilityId, "f5e37097-f791-43b3-a915-3feba63bd2ee");
        input2_textbox = new Locator(Locator.By.AccessibilityId, "a7490ea1-9899-4249-bdea-31d4f42c8aa8");
        input3_textbox = new Locator(Locator.By.AccessibilityId, "2dac0e78-4a4c-4dbe-ad8b-b546f4ac2a99");
        input4_textbox = new Locator(Locator.By.AccessibilityId, "a0030deb-9968-42a8-8e38-302a0061b6a3");
        input5_textbox = new Locator(Locator.By.AccessibilityId, "999693b4-16f6-4cd5-a81b-4778cff90a7b");
        labelPath_textbox = new Locator(Locator.By.AccessibilityId, "d3294ec5-2843-4d63-b8ac-da2ac5978535");
        labelPreview_image = new Locator(Locator.By.ClassName, "Image");
        print_button = new Locator(Locator.By.AccessibilityId, "91c4844e-a001-4fd4-a73b-b55611d2acc0");
        title_textbox = new Locator(Locator.By.AccessibilityId, "5a5ef852-bc0a-4631-8bbe-2db4d20ed64e");
    }


}
