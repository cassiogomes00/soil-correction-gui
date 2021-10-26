package view;

import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.swing.JButton;
import javax.swing.JLabel;
import javax.swing.JTextField;
import model.Formulario;

public class FormCabecalho extends ParentFrame implements ActionListener {

  Formulario formulario;

  private JLabel labelProdutor;
  private JLabel labelData;
  private JLabel labelMunicipio;
  private JLabel labelLote;
  private JLabel labelAreaTotal;
  private JLabel labelMatriculaLote;
  private JLabel labelResponsavelTecnico;
  private JLabel labelResultadoAnaliseSolos;

  private JTextField tfProdutor;
  private JTextField tfData;
  private JTextField tfMunicipio;
  private JTextField tfLote;
  private JTextField tfAreaTotal;
  private JTextField tfMatriculaLote;
  private JTextField tfResponsavelTecnico;
  private JTextField tfResultadoAnaliseSolos;

  private JButton buttonVoltar;
  private JButton buttonCancelar;
  private JButton buttonProximo;

  public FormCabecalho(Formulario form) {
    super("Cabecalho", 3);

    this.formulario = form;

    this.createElements();
    this.addListeners();
    this.addElements();

    this.setVisible(true);
  }

  public void createElements() {
    labelProdutor = new JLabel("Produtor");
    labelData = new JLabel("Data");
    labelMunicipio = new JLabel("Municipio");
    labelLote = new JLabel("Lote");
    labelAreaTotal = new JLabel("Area Total");
    labelMatriculaLote = new JLabel("Matricula do lote");
    labelResponsavelTecnico = new JLabel("Responsavel tecnico");
    labelResultadoAnaliseSolos = new JLabel("Resultado da analise de solos");

    tfProdutor = new JTextField();
    tfData = new JTextField();
    tfMunicipio = new JTextField();
    tfLote = new JTextField();
    tfAreaTotal = new JTextField();
    tfMatriculaLote = new JTextField();
    tfResponsavelTecnico = new JTextField();
    tfResultadoAnaliseSolos = new JTextField();

    buttonVoltar = new JButton("Voltar");
    buttonCancelar = new JButton("Cancelar");
    buttonProximo = new JButton("Proximo");
  }

  public void addListeners() {
    buttonVoltar.addActionListener(this);
    buttonCancelar.addActionListener(this);
    buttonProximo.addActionListener(this);
  }

  public void addElements() {

    this.add(labelProdutor);
    this.add(tfProdutor);
    this.add(new JLabel(""));

    this.add(labelData);
    this.add(tfData);
    this.add(new JLabel(""));

    this.add(labelMunicipio);
    this.add(tfMunicipio);
    this.add(new JLabel(""));

    this.add(labelLote);
    this.add(tfLote);
    this.add(new JLabel(""));

    this.add(labelAreaTotal);
    this.add(tfAreaTotal);
    this.add(new JLabel(""));

    this.add(labelMatriculaLote);
    this.add(tfMatriculaLote);
    this.add(new JLabel(""));

    this.add(labelResponsavelTecnico);
    this.add(tfResponsavelTecnico);
    this.add(new JLabel(""));

    this.add(labelResultadoAnaliseSolos);
    this.add(tfResultadoAnaliseSolos);
    this.add(new JLabel(""));

    this.add(buttonVoltar);
    this.add(buttonCancelar);
    this.add(buttonProximo);
  }

  public Date converterData(String strDate) throws ParseException {
    SimpleDateFormat format = new SimpleDateFormat("dd/MM/yyyy");

    return format.parse(strDate);
  }

  public void proximo() throws ParseException {
    String produtor = this.tfProdutor.getText();
    String data = this.tfData.getText();
    String municipio = this.tfMunicipio.getText();
    String lote = this.tfLote.getText();
    String areaTotal = this.tfAreaTotal.getText();
    String matriculaLote = this.tfMatriculaLote.getText();
    String responsavelTecnico = this.tfResponsavelTecnico.getText();
    String resultadoAnaliseSolos = this.tfResultadoAnaliseSolos.getText();

    this.formulario.getCabecalho().setProdutor(produtor);
    this.formulario.getCabecalho().setData(converterData(data));
    this.formulario.getCabecalho().setMunicipio(municipio);
    this.formulario.getCabecalho().setLote(lote);
    this.formulario.getCabecalho().setAreaTotal(Double.parseDouble(lote));
    this.formulario.getCabecalho().setMatriculaLote(matriculaLote);
    this.formulario.getCabecalho().setResponsavelTecnico(responsavelTecnico);
    this.formulario.getCabecalho().setResultadoAnaliseSolos(Integer.parseInt(resultadoAnaliseSolos));
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
        try {
          this.proximo();
          new FormSoloAmostra(formulario);
        } catch (ParseException ex) {
          Logger.getLogger(FormCabecalho.class.getName()).log(Level.SEVERE, null, ex);
        }
      }

      break;

      default:
        System.out.println(action);
    }
  }

}
