package model.CorrecaoRecuperacaoNutriente;

import java.util.ArrayList;

public class CorrecaoRecuperacaoFosforo {

  double teorObjetivo;
  int fonte;
  double eficiencia;
  FontesNutriente fontes;

  public CorrecaoRecuperacaoFosforo(double teorObjetivo, int fonte, double eficiencia) {
    this.teorObjetivo = teorObjetivo;
    this.fonte = fonte;
    this.eficiencia = eficiencia;
    this.fontes = new FontesNutriente(new ArrayList<FonteNutriente>());
    this.adicionarFontes();
  }

  public double getTeorObjetivo() {
    return teorObjetivo;
  }

  public void setTeorObjetivo(double teorObjetivo) {
    this.teorObjetivo = teorObjetivo;
  }

  public int getFonte() {
    return fonte;
  }

  public void setFonte(int fonte) {
    this.fonte = fonte;
  }

  public double getEficiencia() {
    return eficiencia;
  }

  public void setEficiencia(double eficiencia) {
    this.eficiencia = eficiencia;
  }

  public FontesNutriente getFontes() {
    return fontes;
  }

  public void setFontes(FontesNutriente fontes) {
    this.fontes = fontes;
  }

  public void adicionarFontes() {
    fontes.addFonte("Cloreto de Potássio", 0);
    fontes.addFonte("Sultado de Portássio", 0);
    fontes.addFonte("Sulf Potássio/Mag", 0);
  }

  public void editarValorFonte(int indice, double novoValor) {
    FonteNutriente fonte = this.fontes.getFontes().get(indice);

    fonte.setValor(novoValor);
    this.fontes.getFontes().set(indice, fonte);
  }

}
