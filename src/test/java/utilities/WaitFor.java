package utilities;

import io.appium.java_client.windows.WindowsDriver;

import java.nio.file.Files;
import java.nio.file.Path;

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

    public static void fileExists(String filePath){
        int i = 0;
        while(i < 10){
            if(!Files.exists(Path.of(filePath))){
                try{
                    Thread.sleep(1000);
                }catch (Exception e){
                    e.printStackTrace();
                }
                i++;
            } else {
                break;
            }
        }
    }
}
