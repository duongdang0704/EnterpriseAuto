package utilities;

import io.appium.java_client.windows.WindowsDriver;

public class WaitFor {

    private WindowsDriver driver;

    public WaitFor(WindowsDriver driver){
        this.driver = driver;
    }


    public static void pause(long seconds){
        try {
            Thread.sleep(1000 * seconds);
        } catch (InterruptedException e) {
            e.printStackTrace();
        }
    }
}
