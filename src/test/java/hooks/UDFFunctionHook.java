package hooks;

import cucumber.TestContext;
import io.cucumber.java.After;
import io.cucumber.java.Before;
import pages.BaseWindow;
import pages.OverviewWindow;
import testrunner.UDFFunctionRunner;

public class UDFFunctionHook extends UDFFunctionRunner {

    private TestContext testContext;
    private BaseWindow baseWindow;
    private OverviewWindow overviewWindow;

    public UDFFunctionHook(TestContext testContext){
        this.testContext = testContext;
        testContext.setDriver(driver);
        overviewWindow = new OverviewWindow(driver);
    }

    @Before
    public void setupHook(){

    }
    @After
    public void tearDownHook(){

    }

}
