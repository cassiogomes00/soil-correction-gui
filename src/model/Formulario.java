package model;

import model.CorrecaoRecuperacaoNutriente.CorrecaoREcuperacaoPotassio;
import model.CorrecaoRecuperacaoNutriente.CorrecaoRecuperacaoCalcioMagnesio;
import model.CorrecaoRecuperacaoNutriente.CorrecaoRecuperacaoFosforo;

public class Formulario {

  private Cabecalho cabecalho;
  private SoloAmostra soloAmostra;
  private NutrientesSolo nutrientesSolo;
  private CorrecaoRecuperacaoFosforo correcaoRecuperacaoFosforo;
  private CorrecaoREcuperacaoPotassio correcaoRecuperacaoPotassio;
  private CorrecaoRecuperacaoCalcioMagnesio correcaoRecuperacaoCalcioMagnesio;

  public Formulario() {
    this.cabecalho = cabecalho;
    this.soloAmostra = soloAmostra;
    this.nutrientesSolo = nutrientesSolo;
    this.correcaoRecuperacaoFosforo = correcaoRecuperacaoFosforo;
    this.correcaoRecuperacaoPotassio = correcaoRecuperacaoPotassio;
    this.correcaoRecuperacaoCalcioMagnesio = correcaoRecuperacaoCalcioMagnesio;
  }

  public Cabecalho getCabecalho() {
    return cabecalho;
  }

  public void setCabecalho(Cabecalho cabecalho) {
    this.cabecalho = cabecalho;
  }

  public SoloAmostra getSoloAmostra() {
    return soloAmostra;
  }

  public void setSoloAmostra(SoloAmostra soloAmostra) {
    this.soloAmostra = soloAmostra;
  }

  public NutrientesSolo getNutrientesSolo() {
    return nutrientesSolo;
  }

  public void setNutrientesSolo(NutrientesSolo nutrientesSolo) {
    this.nutrientesSolo = nutrientesSolo;
  }

  public CorrecaoRecuperacaoFosforo getCorrecaoRecuperacaoFosforo() {
    return correcaoRecuperacaoFosforo;
  }

  public void setCorrecaoRecuperacaoFosforo(CorrecaoRecuperacaoFosforo correcaoRecuperacaoFosforo) {
    this.correcaoRecuperacaoFosforo = correcaoRecuperacaoFosforo;
  }

  public CorrecaoREcuperacaoPotassio getCorrecaoRecuperacaoPotassio() {
    return correcaoRecuperacaoPotassio;
  }

  public void setCorrecaoRecuperacaoPotassio(CorrecaoREcuperacaoPotassio correcaoRecuperacaoPotassio) {
    this.correcaoRecuperacaoPotassio = correcaoRecuperacaoPotassio;
  }

  public CorrecaoRecuperacaoCalcioMagnesio getCorrecaoRecuperacaoCalcioMagnesio() {
    return correcaoRecuperacaoCalcioMagnesio;
  }

  public void setCorrecaoRecuperacaoCalcioMagnesio(CorrecaoRecuperacaoCalcioMagnesio correcaoRecuperacaoCalcioMagnesio) {
    this.correcaoRecuperacaoCalcioMagnesio = correcaoRecuperacaoCalcioMagnesio;
  }

}
