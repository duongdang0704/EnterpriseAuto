package config;

import utilities.DataReader;

public class AppConfig {

    public static String ROOT_PATH;
    public static String EXE_PATH;
    public static String PROJECT_PATH;
    public static String LOG_PRINTING_PATH;
    public static String TEST_DATA;
    public static String LOG_APPLICATION;

    public static void loadConfig(DataReader config){
        ROOT_PATH = config.getProperty("ROOT_PATH");
        EXE_PATH = ROOT_PATH + "CodeIT.exe";
        PROJECT_PATH = ROOT_PATH + config.getProperty("PROJECT_NAME") + "\\";
        LOG_PRINTING_PATH = ROOT_PATH + "Log\\Printing\\";
        LOG_APPLICATION = ROOT_PATH + "Log\\Application\\";
        TEST_DATA = ROOT_PATH + "TestData\\";
    }

}
