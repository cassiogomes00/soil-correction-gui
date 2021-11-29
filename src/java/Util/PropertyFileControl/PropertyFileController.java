package Util.PropertyFileControl;

import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.util.Properties;

public class PropertyFileController {

  FileController fileController;

  public PropertyFileController() {
    fileController = new FileController();
  }

  public Properties getProperties(String path) throws IOException, Exception {
    FileInputStream fileInputStream = fileController.getFileInputStream(path);
    Properties props = new Properties();

    props.load(fileInputStream);

    return props;
  }

  public void saveProperties(String path, Properties props) throws FileNotFoundException, IOException {
    FileOutputStream fileOutputStream = new FileOutputStream(path);

    fileController.createFileIfNotExists(path);
    props.store(fileOutputStream, null);
  }
}
