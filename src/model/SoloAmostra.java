package model;

public class SoloAmostra {

  int talhao;
  double areaTalhao;
  int texturaSolo;
  int sistemaCultivo;
  int profundidadeAmostraSolos;

  public SoloAmostra(int talhao, double areaTalhao, int texturaSolo, int sistemaCultivo, int profundidadeAmostraSolos) {
    this.talhao = talhao;
    this.areaTalhao = areaTalhao;
    this.texturaSolo = texturaSolo;
    this.sistemaCultivo = sistemaCultivo;
    this.profundidadeAmostraSolos = profundidadeAmostraSolos;
  }

  public int getTalhao() {
    return talhao;
  }

  public void setTalhao(int talhao) {
    this.talhao = talhao;
  }

  public double getAreaTalhao() {
    return areaTalhao;
  }

  public void setAreaTalhao(double areaTalhao) {
    this.areaTalhao = areaTalhao;
  }

  public int getTexturaSolo() {
    return texturaSolo;
  }

  public void setTexturaSolo(int texturaSolo) {
    this.texturaSolo = texturaSolo;
  }

  public int getSistemaCultivo() {
    return sistemaCultivo;
  }

  public void setSistemaCultivo(int sistemaCultivo) {
    this.sistemaCultivo = sistemaCultivo;
  }

  public int getProfundidadeAmostraSolos() {
    return profundidadeAmostraSolos;
  }

  public void setProfundidadeAmostraSolos(int profundidadeAmostraSolos) {
    this.profundidadeAmostraSolos = profundidadeAmostraSolos;
  }

}
