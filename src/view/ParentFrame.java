package view;

import java.awt.GridLayout;
import javax.swing.JFrame;

public class ParentFrame extends JFrame {

  public ParentFrame(String titulo, int cols) {
    super(titulo);

    this.setSize(700, 700);
    this.setLayout(new GridLayout(0, cols, 5, 5));
    this.setDefaultCloseOperation(JFrame.DISPOSE_ON_CLOSE);

  }
}
