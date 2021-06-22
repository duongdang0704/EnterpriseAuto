package utilities;

import java.io.File;

public class FileHandler {

    public static boolean rename(String filePath, String newFilePath){
        File file = new File(filePath);
        File newFile = new File(newFilePath);
        boolean result = file.renameTo(newFile);
        return result;
    }
}
