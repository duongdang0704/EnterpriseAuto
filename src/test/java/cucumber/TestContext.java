package cucumber;

import io.appium.java_client.windows.WindowsDriver;

public class TestContext {

    private WindowsDriver driver;
    public ScenarioContext scenarioContext;

    public TestContext() {
        scenarioContext = new ScenarioContext();
    }

    public void setDriver(WindowsDriver driver){
        this.driver = driver;
    }

    public WindowsDriver getDriver(){
        return driver;
    }

}
