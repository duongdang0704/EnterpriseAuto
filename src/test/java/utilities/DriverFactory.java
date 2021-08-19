package utilities;

import config.AppConfig;
import io.appium.java_client.windows.WindowsDriver;
import org.apache.commons.io.FileUtils;
import org.openqa.selenium.remote.DesiredCapabilities;

import java.awt.*;
import java.io.File;
import java.io.IOException;
import java.net.URL;
import java.nio.file.Files;
import java.nio.file.Path;
import java.util.HashMap;
import java.util.Map;
import java.util.concurrent.TimeUnit;

public class DriverFactory {

    private static Map<Long, WindowsDriver> driverMap = new HashMap();

    public static WindowsDriver createDriver(int waitForDriverStart) {
        WindowsDriver driver = null;
        try{
            DataReader config = new DataReader();
            config.loadFile(".\\src\\test\\config.properties");
            AppConfig.loadConfig(config);
            //Clear log files
            File logFolder = new File(AppConfig.LOG_APPLICATION);
            File[] logFiles = logFolder.listFiles();
            for (File logFile: logFiles
            ) {
                if(logFile.getName().endsWith(".xml")){
                    logFile.delete();
                }
            }

            Desktop.getDesktop().open(new File(AppConfig.EXE_PATH));
            WaitFor.pause(waitForDriverStart);

//            DesiredCapabilities capabilities = new DesiredCapabilities();
//            capabilities.setCapability("app", AppConfig.EXE_PATH);
//            capabilities.setCapability("platformName", "Windows");
//            capabilities.setCapability("deviceName", "WindowsPC");
            DesiredCapabilities capabilities = new DesiredCapabilities();
            capabilities.setCapability("platformName", "Windows");
            capabilities.setCapability("app", "Root");
            capabilities.setCapability("deviceName", "WindowsPC");

            driver = new WindowsDriver(new URL("http://127.0.0.1:4723"), capabilities);
            driver.manage().timeouts().implicitlyWait(5, TimeUnit.SECONDS);
            driverMap.put(Thread.currentThread().getId(), driver);
            WaitFor.pause(waitForDriverStart);
            //FileUtils.write(new File(AppConfig.ROOT_PATH + "pagesource.txt"), driver.getPageSource());
        }catch (Exception e){
            e.printStackTrace();
        }

        return driver;
    }

    static public synchronized WindowsDriver getDriver(int waitForDriverStart) {
        WindowsDriver currentDriver = driverMap.get(Thread.currentThread().getId());
        if(currentDriver == null) {
            WindowsDriver newDriver = DriverFactory.createDriver(waitForDriverStart);
            //driverMap.put(Thread.currentThread().getId(), newDriver);
            return newDriver;
        }
        return currentDriver;
    }

    static public synchronized void deleteDriver() {
        Long currentThread = Thread.currentThread().getId();
        WindowsDriver driver = driverMap.get(currentThread);
        if(driver != null) {
            driver.quit();
            driverMap.remove(currentThread);
        }
    }
}
