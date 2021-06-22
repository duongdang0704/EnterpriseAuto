package stepsdef;

import cucumber.TestContext;
import io.appium.java_client.windows.WindowsDriver;
import io.cucumber.java.en.Then;
import io.cucumber.java.en.When;
import org.junit.Assert;
import pages.UdfFunctionsWindow;

import java.io.UnsupportedEncodingException;
import java.net.URI;
import java.net.URISyntaxException;
import java.net.URLDecoder;
import java.net.URLEncoder;
import java.nio.charset.StandardCharsets;
import java.util.regex.Pattern;


public class UdfFunctionsSteps {

    private WindowsDriver driver;
    private TestContext testContext;
    private UdfFunctionsWindow udfFunctionsWindow;

    public UdfFunctionsSteps(TestContext testContext) {
        this.testContext = testContext;
        driver = testContext.getDriver();
        udfFunctionsWindow = new UdfFunctionsWindow(driver);
    }

    @When("I enter Concatenate parameter value {string} and {string}")
    public void i_enter_concatenate_parameter_value_and(String string, String string2) {
        udfFunctionsWindow.enterConcatenatePara1(string);
        udfFunctionsWindow.enterConcatenatePara2(string2);
    }

    @Then("I should see correct {string} and {string} from Concatenate")
    public void i_should_see_correct_from_concatenate(String string, String string2) {
        String expectedResult = string.concat(string2);
        String actualResult = udfFunctionsWindow.getTextConcatenateResult();
        System.out.println(expectedResult);
        System.out.println(actualResult);
        Assert.assertEquals(expectedResult, udfFunctionsWindow.getTextConcatenateResult());
    }

    @When("I enter GetText parameter value {string}")
    public void i_enter_get_text_parameter_value(String string) {
        udfFunctionsWindow.enterGetTextPara(string);
    }

    @Then("I should see correct {string} from GetText")
    public void i_should_see_correct_from_get_text(String string) {
        Assert.assertEquals(string, udfFunctionsWindow.getTextGetTextResult());
    }

    @When("I enter GS1AddChecksum parameter value {string}")
    public void i_enter_gs1add_checksum_parameter_value(String string) {
        udfFunctionsWindow.enterGS1AddChecksumPara(string);
    }

    @Then("I should see correct {string} from GS1AddCheckSum")
    public void i_should_see_correct_from_gs1add_check_sum(String string) {
        //int inputAI =

        // Write code here that turns the phrase above into concrete actions
        throw new io.cucumber.java.PendingException();
    }

    @When("I enter Length parameter value {string}")
    public void i_enter_length_parameter_value(String string) {
        udfFunctionsWindow.enterLengthPara(string);
    }
    @Then("I should see the correct length of value {string} from Length")
    public void i_Should_See_The_Correct_Length_Of_Value_From_Length(String string) {
        Assert.assertEquals(string.valueOf(string.length()), udfFunctionsWindow.getTextLengthResult());
    }

    @When("I enter Lowercase parameter value {string}")
    public void i_enter_lowercase_parameter_value(String string) {
        udfFunctionsWindow.enterLowerCasePara(string);
    }

    @Then("I should see correct {string} from Lowercase")
    public void i_should_see_correct_from_lowercase(String string) {
        Assert.assertEquals(string.toLowerCase(), udfFunctionsWindow.getTextLowerCaseResult());
    }

    @When("I enter Uppercase parameter value {string}")
    public void i_enter_uppercase_parameter_value(String string) {
        udfFunctionsWindow.enterUpperCasePara(string);
    }

    @Then("I should see correct {string} from Uppercase")
    public void i_should_see_correct_from_uppercase(String string) {
        Assert.assertEquals(string.toUpperCase(), udfFunctionsWindow.getTextUpperCaseResult());
    }

    @When("I enter Replace parameter value {string}, {string}, and {string}")
    public void i_enter_replace_parameter_value_and(String string, String string2, String string3) {
        udfFunctionsWindow.enterReplacePara1(string);
        udfFunctionsWindow.enterReplacePara2(string2);
        udfFunctionsWindow.enterReplacePara3(string3);
    }

    @Then("I should see correct {string} from Replace")
    public void i_should_see_correct_from_replace(String string) {
        Assert.assertEquals(string, udfFunctionsWindow.getReplaceResult());
    }

    @When("I enter Trim parameter value {string} and {string}")
    public void i_enter_trim_parameter_value_and(String string, String string2) {
        udfFunctionsWindow.enterTrimPara1(string);
        udfFunctionsWindow.enterTrimPara2(string2);
    }

    @Then("I should see correct {string} from Trim")
    public void i_should_see_correct_from_trim(String string) {
        Assert.assertEquals(string.trim(), udfFunctionsWindow.getTrimResult());
    }

    @When("I enter TrimStart parameter value {string} and {string}")
    public void i_enter_trim_start_parameter_value_and(String string, String string2) {
        udfFunctionsWindow.enterTrimStartPara1(string);
        udfFunctionsWindow.enterTrimStartPara2(string2);
    }

    @Then("I should see correct {string} from TrimStart")
    public void i_should_see_correct_from_trim_start(String string) {
        Assert.assertEquals(string, udfFunctionsWindow.getTrimStartResult());
    }

    @When("I enter TrimEnd parameter value {string} and {string}")
    public void i_enter_trim_end_parameter_value_and(String string, String string2) {
        udfFunctionsWindow.enterTrimEndPara1(string);
        udfFunctionsWindow.enterTrimEndPara2(string2);
    }

    @Then("I should see correct {string} from TrimEnd")
    public void i_should_see_correct_from_trim_end(String string) {
        Assert.assertEquals(string, udfFunctionsWindow.getTrimEndResult());
    }

    @When("I enter SubString parameters value into {string}, {string} and {string}")
    public void i_enter_sub_string_parameters_value_into_and(String string, String string2, String string3) {
        udfFunctionsWindow.enterSubStringPara1(string);
        udfFunctionsWindow.enterSubStringPara2(string2);
        udfFunctionsWindow.enterSubStringPara3(string3);
    }

    @Then("I should see correct {string} from SubString")
    public void i_should_see_correct_from_sub_string(String string) {
        Assert.assertEquals(string, udfFunctionsWindow.getSubStringResult());
    }

    @When("I enter Split text and splitchar value into {string} and {string}")
    public void i_enter_split_text_and_splitchar_value_into_and(String string, String string2) {
        udfFunctionsWindow.enterSplitPara1(string);
        udfFunctionsWindow.enterSplitPara2(string2);
    }

    @Then("I should see the correct {string} from Split")
    public void i_should_see_the_correct_from_split(String string) {
        Assert.assertEquals(string, udfFunctionsWindow.getSplitResult());
    }

    @When("I enter Pad param into {string}, {string}, and {string}")
    public void i_Enter_Pad_Param(String string, String string2, String string3) throws InterruptedException {
        udfFunctionsWindow.enterPadPara1(string);
        udfFunctionsWindow.enterPadPara2(string2);
        udfFunctionsWindow.enterPadPara3(string3);
    }

    @Then("I should see the correct {string} from Pad Letf")
    public void i_should_see_the_correct_from_pad_letf(String string) {
        Assert.assertEquals(string, udfFunctionsWindow.getPaddingResult());
    }

    @When("I enter text and search text {string} and {string} into IndexOf")
    public void i_enter_Text_And_Search_Text_And_Into_IndexOf(String string, String string2) {
        udfFunctionsWindow.enterIndexOfPara1(string);
        udfFunctionsWindow.enterIndexOfPara2(string2);
    }
    @Then("I should see the correct IndexOf from {string} and {string}")
    public void iShouldSeeTheCorrectIndexOfFromAnd(String string, String string2) {
        Assert.assertEquals(String.valueOf(string.indexOf(string2)), udfFunctionsWindow.getIndexOfResult());
    }

    @When("I enter byte array text {string}")
    public void i_enter_ByteArray_Text(String string) {
        udfFunctionsWindow.enterByteArray(string);
    }
    @Then("I should see the correct {string} from ByteArray")
    public void i_Should_See_The_Correct_From_Byte_Array(String string) {
        byte[] arrayByte = string.getBytes();
        String result = "";
        for (int i = 0; i < arrayByte.length; i++){
            String item = arrayByte[i] + "#";
            result = result + item;
        }
        String expected = result + "¤";
        Assert.assertEquals(expected, udfFunctionsWindow.getByteArrayResult());
    }

    @When("I enter Ascii value {string}")
    public void i_enter_Ascii_Value_Into(String string) {
        udfFunctionsWindow.enterCharPara(string);
    }


    @Then("I should see the correct {string} from Char")
    public void i_Should_See_The_Correct_From_Char(String string) {
        Assert.assertEquals(string, udfFunctionsWindow.getCharResult());
    }


    @When("I enter ASC value {string}")
    public void i_Enter_ASC_Value(String string) {
        udfFunctionsWindow.enterASCPara(string);
    }

    @Then("I should see the correct {string} from ASC")
    public void i_Should_See_The_Correct_From_ASC(String string) {
        Assert.assertEquals(string, udfFunctionsWindow.getASCResult());
    }

    @When("I enter GetAIValue para {string}, {string}, {string}")
    public void i_Enter_GetAIValue_Para(String string, String string2, String string3) {
        udfFunctionsWindow.enterGetAIValuePara1(string);
        udfFunctionsWindow.enterGetAIValuePara2(string2);
        udfFunctionsWindow.enterGetAIValuePara3(string3);
    }

    @Then("I should see the correct {string} from GetAIValue")
    public void i_Should_See_The_Correct_From_GetAIValue(String string) {
        Assert.assertEquals(string, udfFunctionsWindow.getAIValueResult());
    }


    @When("I enter ConvertString para {string}, {string}, {string}")
    public void i_Enter_Convert_String_Para(String string, String string2, String string3) {
        udfFunctionsWindow.enterConverStringPara1(string);
        udfFunctionsWindow.enterConverStringPara2(string2);
        udfFunctionsWindow.enterConverStringPara3(string3);
    }

    @Then("I should see the correct {string} from ConvertString")
    public void i_Should_See_The_Correct_From_ConvertString(String string) {
        Assert.assertEquals(string, udfFunctionsWindow.getConvertStringResult());
    }
    @Then("I should see the correct {string} from URLEncode")
    public void i_Should_See_The_Correct_From_URL_Encode(String string) throws UnsupportedEncodingException, URISyntaxException {
        String text = "";
        String result = text;
        char[] character = string.toCharArray();
        for(int i = 0; i < string.length(); i++){
            if (Pattern.compile("[a-zA-Z]").matcher(Character.toString(character[i])).find()){
                text = URLEncoder.encode(String.valueOf(character[i]), String.valueOf(StandardCharsets.UTF_8));
            } else{
                text = URLEncoder.encode(String.valueOf(character[i]), String.valueOf(StandardCharsets.UTF_8)).toLowerCase();
            }
            result = result + text;
        }
        Assert.assertEquals(result, udfFunctionsWindow.getURLEncodeResult());
    }

    @When("I enter URLDecode para {string}")
    public void i_Enter_URL_Decode_Para(String string) {
        udfFunctionsWindow.enterURLDecodePara(string);
    }

    @Then("I should see the correct {string} from URLDecode")
    public void i_Should_See_The_Correct_From_URL_Decode(String string) throws UnsupportedEncodingException {
        String expected = URLDecoder.decode(string, String.valueOf(StandardCharsets.UTF_8)).toLowerCase();
        Assert.assertEquals(expected, udfFunctionsWindow.getURLDecodeResult());
    }

}
