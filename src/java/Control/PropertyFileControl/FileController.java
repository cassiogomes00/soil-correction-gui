package Control.PropertyFileControl;

import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;

public class FileController {

  public boolean fileEValido(File file) {
    if (file.exists() && !file.isDirectory()) {
      return true;
    }

    return false;
  }

  public void createFileIfNotExists(String path) throws IOException {
    File file = new File(path);

    if (!file.exists()) {
      file.createNewFile();
    }
  }

  public File getFile(String path) throws Exception {
    File file = new File(path);

    if (!fileEValido(file)) {
      throw new Exception("Arquivo nao valido");
    }

    return file;
  }

  public FileInputStream getFileInputStream(String path) throws Exception {
    File file = getFile(path);
    FileInputStream fileInputStream = new FileInputStream(file);

    return fileInputStream;
  }
}
