package test;

import java.io.BufferedWriter;
import java.io.File;
import java.io.FileWriter;
import java.io.IOException;
import java.util.List;

/**
 * Created by vviital on 30.1.16.
 */
public class IRA {
    public static void main(String[] args) {
    }

    public static boolean some(List<String> items, String fileName) throws Exception{
        File file = new File(fileName);
        if (!file.exists()) {
            try {
                file.createNewFile();
            } catch (IOException e) {
                return false;
            }
        }

        BufferedWriter bufferedWriter = null;
        FileWriter fileWriter = new FileWriter(file, false);
        try {
            bufferedWriter = new BufferedWriter(fileWriter);
            for (String item : items) {
                bufferedWriter.write(item);
                bufferedWriter.newLine();
            }
            return true;
        } catch (Exception e) {
            return false;
        } finally {
            try {
                bufferedWriter.close();
            } catch (IOException e) {
                return false;
            }
        }

    }
}
