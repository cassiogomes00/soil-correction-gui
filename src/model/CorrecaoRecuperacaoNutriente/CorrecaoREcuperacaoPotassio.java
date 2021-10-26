package model.CorrecaoRecuperacaoNutriente;

import java.util.ArrayList;

public class CorrecaoREcuperacaoPotassio {

  double participacao;
  int fonte;
  FontesNutriente fontes;

  public CorrecaoREcuperacaoPotassio(double participacao, int fonte) {
    this.participacao = participacao;
    this.fonte = fonte;
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

  public FontesNutriente getFontes() {
    return fontes;
  }

  public void setFontes(FontesNutriente fontes) {
    this.fontes = fontes;
  }

  public void adicionarFontes() {
    fontes.addFonte("Superfostato Simples", 0);
    fontes.addFonte("Superfosfato Triplo", 0);
    fontes.addFonte("MAP", 0);
    fontes.addFonte("DAP", 0);
    fontes.addFonte("Yoorin", 0);
    fontes.addFonte("Fosfato Arad", 0);
    fontes.addFonte("Fosfato Gafsa", 0);
    fontes.addFonte("Fosfato Daoui", 0);
    fontes.addFonte("Fosf Patos Minas", 0);
    fontes.addFonte("Escória de Thomas", 0);
    fontes.addFonte("Ácido Fosfórico", 0);
    fontes.addFonte("Multif Magnesiano", 0);
  }

  public void editarValorFonte(int indice, double novoValor) {
    FonteNutriente fonte = this.fontes.getFontes().get(indice);

    fonte.setValor(novoValor);
    this.fontes.getFontes().set(indice, fonte);
  }

}
