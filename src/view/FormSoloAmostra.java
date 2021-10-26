package view;

import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;
import java.awt.event.KeyAdapter;
import java.awt.event.KeyEvent;
import javax.swing.JButton;
import javax.swing.JLabel;
import javax.swing.JTextField;
import model.Formulario;

public class FormSoloAmostra extends ParentFrame implements ActionListener {

  int talhao;
  double areaTalhao;
  int texturaSolo;
  int sistemaCultivo;
  int profundidadeAmostraSolos;

  private Formulario formulario;

  private JLabel labelTalhao;
  private JLabel labelAreaTalhao;
  private JLabel labelTexturaSolo;
  private JLabel labelTexturaSoloRes;
  private JLabel labelSistemaCultivo;
  private JLabel labelSistemaCultivoRes;
  private JLabel labelProfundidadeAmostraSolos;

  private JTextField tfTalhao;
  private JTextField tfAreaTalhao;
  private JTextField tfTexturaSolo;
  private JTextField tfSistemaCultivo;
  private JTextField tfProfundidadeAmostraSolos;

  private JButton buttonVoltar;
  private JButton buttonCancelar;
  private JButton buttonProximo;

  public FormSoloAmostra(Formulario form) {
    super("Solo e Amostra", 3);

    this.formulario = form;

    this.createElements();
    this.addListeners();
    this.addElements();

    this.setVisible(true);
  }

  public void createElements() {
    this.labelTalhao = new JLabel();
    this.labelAreaTalhao = new JLabel();
    this.labelTexturaSolo = new JLabel();
    this.labelTexturaSoloRes = new JLabel();
    this.labelSistemaCultivo = new JLabel();
    this.labelSistemaCultivoRes = new JLabel();
    this.labelProfundidadeAmostraSolos = new JLabel();

    this.tfTalhao = new JTextField();
    this.tfAreaTalhao = new JTextField();
    this.tfTexturaSolo = new JTextField();
    this.tfSistemaCultivo = new JTextField();
    this.tfProfundidadeAmostraSolos = new JTextField();

    this.buttonVoltar = new JButton();
    this.buttonCancelar = new JButton();
    this.buttonProximo = new JButton();
  }

  public void addListeners() {

    this.tfTexturaSolo.addKeyListener(new KeyAdapter() {
      public void keyReleased(KeyEvent event) {
        System.out.println(event.getKeyChar());
      }
    });

    //    this.tfSistemaCultivo 
    this.buttonVoltar.addActionListener(this);
    this.buttonCancelar.addActionListener(this);
    this.buttonProximo.addActionListener(this);

  }

  public void addElements() {

    this.add(labelTalhao);
    this.add(tfTalhao);
    this.add(new JLabel(""));

    this.add(labelAreaTalhao);
    this.add(tfAreaTalhao);
    this.add(new JLabel(""));

    this.add(labelTexturaSolo);
    this.add(tfTexturaSolo);
    this.add(labelTexturaSoloRes);

    this.add(labelSistemaCultivo);
    this.add(tfSistemaCultivo);
    this.add(labelSistemaCultivoRes);

    this.add(labelProfundidadeAmostraSolos);
    this.add(tfProfundidadeAmostraSolos);
    this.add(new JLabel(""));

    this.add(buttonVoltar);
    this.add(buttonCancelar);
    this.add(buttonProximo);

  }

  public void actionPerformed(ActionEvent event) {
    String action = event.getActionCommand().toLowerCase();

    switch (action) {
      case "voltar":
        this.dispose();
        break;
      case "cancelar":
        this.dispose();
        break;
      case "proximo": {

      }

      break;

      default:
        System.out.println(action);
    }
  }
}
