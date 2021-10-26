package model.CorrecaoRecuperacaoNutriente;

public class FonteNutriente {

  String nome;
  double valor;

  public FonteNutriente(String nome, double valor) {
    this.nome = nome;
    this.valor = valor;
  }

  public String getNome() {
    return nome;
  }

  public void setNome(String nome) {
    this.nome = nome;
  }

  public double getValor() {
    return valor;
  }

  public void setValor(double valor) {
    this.valor = valor;
  }

}
