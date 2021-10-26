package model.CorrecaoRecuperacaoNutriente;

import java.util.ArrayList;

public class FontesNutriente {

  ArrayList<FonteNutriente> fontes;

  public FontesNutriente(ArrayList<FonteNutriente> fontes) {
    this.fontes = fontes;
  }

  public ArrayList<FonteNutriente> getFontes() {
    return fontes;
  }

  public void setFontes(ArrayList<FonteNutriente> fontes) {
    this.fontes = fontes;
  }

  public void addFonte(String nome, double valor) {
    FonteNutriente fonte = new FonteNutriente(nome, valor);
    this.fontes.add(fonte);
  }

}
