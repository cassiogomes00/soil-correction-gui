package view;

import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;
import javax.swing.JButton;
import javax.swing.JFrame;
import model.Formulario;

public class Home extends ParentFrame implements ActionListener {

  private Formulario form;
  private JButton buttonFormulario = new JButton("Formulario");
  private JButton buttonResultados = new JButton("Resultados");

  public Home() {
    super("Home", 1);

    this.form = new Formulario();

    this.addActionListener();
    this.addElements();

    this.setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
    this.setVisible(true);
  }

  public void addActionListener() {
    this.buttonFormulario.addActionListener(this);
    this.buttonResultados.addActionListener(this);
  }

  public void addElements() {
    this.add(buttonFormulario);
    this.add(buttonResultados);
  }

  public void actionPerformed(ActionEvent event) {
    String action = event.getActionCommand().toLowerCase();

    switch (action) {
      case "formulario":
        new FormCabecalho(form);
        break;

      default:
        System.out.println(action);
    }
  }
}
