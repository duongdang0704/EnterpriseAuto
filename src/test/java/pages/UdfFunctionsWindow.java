package pages;

import io.appium.java_client.windows.WindowsDriver;
import org.openqa.selenium.Keys;
import org.openqa.selenium.WebElement;
import pages.objects.Locator;
import org.openqa.selenium.support.ui.Sleeper;


public class UdfFunctionsWindow extends BaseWindow {

    private Locator concatenatePara1 = new Locator(Locator.By.AccessibilityId, "b743ecb4-de29-457a-9a9a-4c16f615a827");
    private Locator concatenatePara2 = new Locator(Locator.By.AccessibilityId, "63bb7aaf-da57-4a2c-a473-472d0e03823e");
    private Locator concatenateResult = new Locator(Locator.By.AccessibilityId, "b58fc7f7-f4c3-40c7-aa80-f57c78b84146");
    private Locator getTextResult = new Locator(Locator.By.AccessibilityId, "dc221c03-9d18-4120-963e-1145fa4ad5ff");
    private Locator getTextPara = new Locator(Locator.By.AccessibilityId, "9f7d6ee2-f009-4ce3-b71b-6d61f8f86903");
    private Locator GS1AddChecksumResult = new Locator(Locator.By.AccessibilityId, "5d7464cc-175f-4651-977a-a77ef394dc94");
    private Locator GS1AddChecksumPara = new Locator(Locator.By.AccessibilityId, "4981a5a6-ef4d-4ad4-b145-e7020f9e099e");
    private Locator lengthResult = new Locator(Locator.By.AccessibilityId, "692132ef-677c-4253-8d58-6e081976b1d0");
    private Locator lengthPara = new Locator(Locator.By.AccessibilityId, "8e08327f-76b1-42da-9ce2-f57fae78053c");
    private Locator lowerCaseResult = new Locator(Locator.By.AccessibilityId, "34269cb9-fb7b-49f9-8926-da22c17dba54");
    private Locator lowerCasePara = new Locator(Locator.By.AccessibilityId, "f9c028f9-3317-4b7f-aa5c-4dfc8cf1b85d");
    private Locator upperCaseResult = new Locator(Locator.By.AccessibilityId, "3ba8cd71-72e3-4b9c-b7e5-daff117eb566");
    private Locator upperCasePara = new Locator(Locator.By.AccessibilityId, "928255e5-a63b-49ad-93f1-bd6f57265a48");
    private Locator replacePapa1 = new Locator(Locator.By.AccessibilityId, "692a5658-3101-45f5-9543-14b27f989712");
    private Locator replacePara2 = new Locator(Locator.By.AccessibilityId, "321bb7af-14bc-4d0f-a1a5-603758927c7f");
    private Locator replacePara3 = new Locator(Locator.By.AccessibilityId, "65e6a0c6-eff4-479d-9948-36d52d30ccaa");
    private Locator replaceResult = new Locator(Locator.By.AccessibilityId, "c7eb8643-6bb1-415f-b0be-84195d6fd168");
    private Locator trimPara1 = new Locator(Locator.By.AccessibilityId, "acf9968e-f523-4a1c-aae8-35edcd3a39c5");
    private Locator trimPara2 = new Locator(Locator.By.AccessibilityId, "b68803e7-2c04-49ed-8006-86ca4c253bdd");
    private Locator trimResult = new Locator(Locator.By.AccessibilityId, "fe69f381-f9a2-498c-afe0-b6fe404e90d7");
    private Locator trimStartPara1 = new Locator(Locator.By.AccessibilityId, "c23fdf08-ae3d-4fc6-8c4e-bde52cb37744");
    private Locator trimStartPara2 = new Locator(Locator.By.AccessibilityId, "44e33c73-cfd8-4a6b-b0ed-04c56eaf55ee");
    private Locator trimStartResult = new Locator(Locator.By.AccessibilityId, "3d322a36-1da4-4ca7-b2a1-c047c59fa578");
    private Locator trimEndPara1 = new Locator(Locator.By.AccessibilityId, "2b313d63-6222-499b-a473-5691ff4e9b7f");
    private Locator trimEndPara2 = new Locator(Locator.By.AccessibilityId, "62e9cbe0-d9eb-4cde-ad9d-4866485e86e1");
    private Locator trimEndResult = new Locator(Locator.By.AccessibilityId, "bfceba17-a6a3-4d35-b685-fb066fd8ac4c");
    private Locator subStringPara1 = new Locator(Locator.By.AccessibilityId, "93a762e9-d329-4949-a33f-c41e100fbcf4");
    private Locator subStringPara2 = new Locator(Locator.By.AccessibilityId, "a4958bc4-179e-4815-8580-6eb025c5d8c3");
    private Locator subStringPara3 = new Locator(Locator.By.AccessibilityId, "a5ac8636-3f14-4bac-90cd-bbbb1b05499f");
    private Locator subStringResult = new Locator(Locator.By.AccessibilityId, "01f5ed87-af84-4770-942d-5da0f5a317ec");
    private Locator splitPara1 = new Locator(Locator.By.AccessibilityId, "353c352a-e4cf-4b9a-9834-38030ef0e5e7");
    private Locator splitPara2 = new Locator(Locator.By.AccessibilityId, "ca1bff63-b945-499a-857a-aa2202eb1ea4");
    private Locator splitResult = new Locator(Locator.By.AccessibilityId, "f6692f57-9995-4e7e-85dd-5f880f13fefc");
    private Locator padPara1 = new Locator(Locator.By.AccessibilityId, "ebf7461b-6924-4134-b464-59edcd0eaca9");
    private Locator padPara2 = new Locator(Locator.By.AccessibilityId, "429915e7-3597-434f-bbe1-6ad2e4699c14");
    private Locator padPara3 = new Locator(Locator.By.AccessibilityId, "d0719b79-7fc5-4313-a566-454bbd387dee");
    private Locator padResult = new Locator(Locator.By.AccessibilityId, "6966b317-be28-4d98-a86b-611c477d3e3c");
    private Locator indexOfPara1 = new Locator(Locator.By.AccessibilityId, "23e618c2-4a9d-4377-9644-30ad2cc09f5c");
    private Locator indexOfPara2 = new Locator(Locator.By.AccessibilityId, "259989fa-14f0-4b6f-a7fd-ac759c1b6079");
    private Locator indexOfResult = new Locator(Locator.By.AccessibilityId, "aa18a765-5208-4363-b837-04e2d477da77");
    private Locator byteArrayPara = new Locator(Locator.By.AccessibilityId, "af97d20c-a7b5-4a21-8ad7-dcf1d26c1d39");
    private Locator byteArrayResult = new Locator(Locator.By.AccessibilityId, "8829f54d-98da-4861-8476-750fe9d6ed34");
    private Locator charPara = new Locator(Locator.By.AccessibilityId, "a720942c-d49a-495d-9266-1bb8ab489a62");
    private Locator charResult = new Locator(Locator.By.AccessibilityId, "0be4a18a-d300-4a14-bdd4-2fa9b5ebb3ca");
    private Locator ascPara = new Locator(Locator.By.AccessibilityId, "b8d09ee8-0d3d-48f4-8330-e53fb82f0760");
    private Locator ascResult = new Locator(Locator.By.AccessibilityId, "895a0437-4663-4332-b438-b7e1e4d9919e");
    private Locator getAIValuePara1 = new Locator(Locator.By.AccessibilityId, "fd069358-94e4-4fbd-a3a8-cd6978b6a5e1");
    private Locator getAIValuePara2 = new Locator(Locator.By.AccessibilityId, "b6495f9f-ac86-442d-9cbc-fb9b3630f331");
    private Locator getAIValuePara3 = new Locator(Locator.By.AccessibilityId, "db8a446e-5ada-48b1-876d-226fbad95ad2");
    private Locator getAIValueResult = new Locator(Locator.By.AccessibilityId, "8c7dff07-d06d-4871-8ff2-b31936d9b7da");
    private Locator converStringPara1 = new Locator(Locator.By.AccessibilityId, "292b3c16-e9da-4f7d-b6e8-3b0a1fa96aef");
    private Locator converStringPara2 = new Locator(Locator.By.AccessibilityId, "14ae4947-d8db-4a36-b3ed-1a33f1a170b8");
    private Locator converStringPara3 = new Locator(Locator.By.AccessibilityId, "8fb038ce-a326-45da-b15f-34cf78110fc0");
    private Locator converStringResult = new Locator(Locator.By.AccessibilityId, "378e9280-5b71-43c6-a99b-47ab8a9ef4fa");
    private Locator urlEncodePara = new Locator(Locator.By.AccessibilityId, "34a3ba12-f6a6-4813-b229-8513c2f09f54");
    private Locator urlEncodeResult = new Locator(Locator.By.AccessibilityId, "dfe3e283-310e-4e51-b14a-4a332ada9f68");
    private Locator urlDecodePara = new Locator(Locator.By.AccessibilityId, "e9482aa5-f7ea-46c4-bd10-51c9b107b499");
    private Locator urlDecodeResult = new Locator(Locator.By.AccessibilityId, "0d3c0dbb-cf71-4464-89d5-1c726881a229");








    public UdfFunctionsWindow(WindowsDriver driver) {
        super(driver);

    }

    public void enterConcatenatePara1(String value) {
        enter(concatenatePara1, value);
    }

    public void enterConcatenatePara2(String value) {
        enter(concatenatePara2, value);
    }

    public void enterGetTextPara(String value) {
        enter(getTextPara, value);
    }

    public void enterGS1AddChecksumPara(String value) {
        enter(GS1AddChecksumPara, value);
    }

    public void enterLengthPara(String value) {
        enter(lengthPara, value);
    }

    public void enterLowerCasePara(String value) {
        enter(lowerCasePara, value);
    }

    public void enterUpperCasePara(String value) {
        enter(upperCasePara, value);
    }

    public void enterReplacePara1(String value) {
        enter(replacePapa1, value);
    }

    public void enterReplacePara2(String value) {
        enter(replacePara2, value);
    }

    public void enterReplacePara3(String value) {
        enter(replacePara3, value);
    }

    public void enterTrimPara1(String value) {
        enter(trimPara1, value);
    }

    public void enterTrimPara2(String value) {
        enter(trimPara2, value);
    }

    public void enterTrimStartPara1(String value) {
        enter(trimStartPara1, value);
    }

    public void enterTrimStartPara2(String value) {
        enter(trimStartPara2, value);
    }

    public void enterTrimEndPara1(String value) {
        enter(trimEndPara1, value);
    }

    public void enterTrimEndPara2(String value) {
        enter(trimEndPara2, value);
    }

    public void enterSubStringPara1(String value) {
        enter(subStringPara1, value);
    }

    public void enterSubStringPara2(String number) {
        enter(subStringPara2, number);
    }

    public void enterSubStringPara3(String number) {
        enter(subStringPara3, number);
    }

    public void enterSplitPara1(String value) {
        enter(splitPara1, value);
    }

    public void enterSplitPara2(String value) {
        if (value.equals("[Space]")) {
            WebElement splitParam2 = findElementByLocator(splitPara2);
            splitParam2.clear();
            splitParam2.sendKeys(Keys.SPACE);
        } else {
            enter(splitPara2, value);
        }
    }

    public void enterPadPara1(String value) {
        enter(padPara1, value);
    }
    public void enterPadPara2(String value) {
        enter(padPara2, value);
    }
    public void enterPadPara3(String value){
        enter(padPara3, value);
    }

    public void enterIndexOfPara1(String value) {
        enter(indexOfPara1, value);
    }
    public void enterIndexOfPara2(String value) {
        enter(indexOfPara2, value);
    }

    public void enterByteArray(String value){
        enter(byteArrayPara, value);
    }

    public void enterCharPara(String value){
        enter(charPara, value);
    }

    public void enterASCPara(String value){
        enter(ascPara, value);
    }

    public void enterGetAIValuePara1(String value){
        enter(getAIValuePara1, value);
    }
    public void enterGetAIValuePara2(String value){
        enter(getAIValuePara2, value);
    }
    public void enterGetAIValuePara3(String value){
        enter(getAIValuePara3, value);
    }

    public void enterConverStringPara1(String value){
        enter(converStringPara1, value);
    }
    public void enterConverStringPara2(String value){
        enter(converStringPara2, value);
    }
    public void enterConverStringPara3(String value){
        enter(converStringPara3, value);
    }
    public void enterURLEncodePara(String value) {
        enter(urlEncodePara, value);
    }
    public void enterURLDecodePara(String value) {
        enter(urlDecodePara, value);
    }


    // Get function
    public String getTextConcatenateResult() {
        WebElement concatenate_result_text = findElementByLocator(concatenateResult);
        return concatenate_result_text.getText();
    }

    public String getTextGetTextResult() {
        WebElement getText_result_text = findElementByLocator(getTextResult);
        return getText_result_text.getText();
    }

    public String getTextLengthResult() {
        WebElement length_result_text = findElementByLocator(lengthResult);
        return length_result_text.getText();
    }

    public String getTextGS1AddChecksumResult() {
        WebElement gs1AddChecksum_result_text = findElementByLocator(GS1AddChecksumResult);
        return gs1AddChecksum_result_text.getText();
    }

    public String getTextLowerCaseResult() {
        WebElement lowerCase_result_text = findElementByLocator(lowerCaseResult);
        return lowerCase_result_text.getText();
    }

    public String getTextUpperCaseResult() {
        WebElement upperCase_result_text = findElementByLocator(upperCaseResult);
        return upperCase_result_text.getText();
    }

    public String getReplaceResult() {
        WebElement replace_result_text = findElementByLocator(replaceResult);
        return replace_result_text.getText();
    }

    public String getTrimResult() {
        WebElement trim_result_text = findElementByLocator(trimResult);
        return trim_result_text.getText();
    }

    public String getTrimStartResult() {
        WebElement trimStart_result_text = findElementByLocator(trimStartResult);
        return trimStart_result_text.getText();
    }

    public String getTrimEndResult() {
        WebElement trimEnd_result_text = findElementByLocator(trimEndResult);
        return trimEnd_result_text.getText();
    }

    public String getSubStringResult() {
        WebElement subString_result_text = findElementByLocator(subStringResult);
        return subString_result_text.getText();
    }

    public String getSplitResult() {
        WebElement split_result_text = findElementByLocator(splitResult);
        return split_result_text.getText();
    }

    public String getPaddingResult() {
        WebElement pad_result_text = findElementByLocator(padResult);
        return pad_result_text.getText();
    }

    public String getIndexOfResult() {
        WebElement indexOf_result_text = findElementByLocator(indexOfResult);
        return indexOf_result_text.getText();
    }

    public String getByteArrayResult() {
        WebElement byte_array_result_text = findElementByLocator(byteArrayResult);
        return byte_array_result_text.getText();
    }

    public String getCharResult() {
        WebElement char_result_text = findElementByLocator(charResult);
        return char_result_text.getText();
    }

    public String getASCResult() {
        WebElement asc_result_text = findElementByLocator(ascResult);
        return asc_result_text.getText();
    }
    public String getAIValueResult() {
        WebElement get_AI_Value_result_text = findElementByLocator(getAIValueResult);
        return get_AI_Value_result_text.getText();
    }

    public String getConvertStringResult() {
        WebElement get_convert_String_result_text = findElementByLocator(converStringResult);
        return get_convert_String_result_text.getText();
    }

    public String getURLEncodeResult() {
        WebElement get_url_encode_result_text = findElementByLocator(urlEncodeResult);
        return get_url_encode_result_text.getText();
    }
    public String getURLDecodeResult() {
        WebElement get_url_decode_result_text = findElementByLocator(urlDecodeResult);
        return get_url_decode_result_text.getText();
    }

}