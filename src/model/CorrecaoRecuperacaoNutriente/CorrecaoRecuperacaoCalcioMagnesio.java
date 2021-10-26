package model.CorrecaoRecuperacaoNutriente;

import java.util.ArrayList;

public class CorrecaoRecuperacaoCalcioMagnesio {

  double participacao;
  int fonte;
  double prnt;
  double teorCaOCorretivo;
  FontesNutriente fontes;

  public CorrecaoRecuperacaoCalcioMagnesio(double participacao, int fonte, double prnt, double teorCaOCorretivo) {
    this.participacao = participacao;
    this.fonte = fonte;
    this.prnt = prnt;
    this.teorCaOCorretivo = teorCaOCorretivo;
    this.fontes = new FontesNutriente(new ArrayList<FonteNutriente>());
    this.adicionarFontes();
  }

  public double getParticipacao() {
    return participacao;
  }

  public void setParticipacao(double participacao) {
    this.participacao = participacao;
  }

  public int getFonte() {
    return fonte;
  }

  public void setFonte(int fonte) {
    this.fonte = fonte;
  }

  public double getPrnt() {
    return prnt;
  }

  public void setPrnt(double prnt) {
    this.prnt = prnt;
  }

  public double getTeorCaOCorretivo() {
    return teorCaOCorretivo;
  }

  public void setTeorCaOCorretivo(double teorCaOCorretivo) {
    this.teorCaOCorretivo = teorCaOCorretivo;
  }

  public FontesNutriente getFontes() {
    return fontes;
  }

  public void setFontes(FontesNutriente fontes) {
    this.fontes = fontes;
  }

  public void adicionarFontes() {
    fontes.addFonte("Calcário Dolomítico", 0);
    fontes.addFonte("Calcário Calcítico", 0);
    fontes.addFonte("Calcário de Concha", 0);
    fontes.addFonte("Gesso Agrícola", 0);
    fontes.addFonte("Hidróxido de Cálcio", 0);
    fontes.addFonte("Calcário Magnesiano", 0);
  }

  public void editarValorFonte(int indice, double novoValor) {
    FonteNutriente fonte = this.fontes.getFontes().get(indice);

    fonte.setValor(novoValor);
    this.fontes.getFontes().set(indice, fonte);
  }
}
