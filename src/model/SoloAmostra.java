package model;

import java.util.ArrayList;

public class SoloAmostra {

  int talhao;
  double areaTalhao;
  int texturaSolo;
  int sistemaCultivo;
  int profundidadeAmostraSolos;
  ArrayList<String> texturasSolo;
  ArrayList<String> sistemasCultivo;

  public SoloAmostra(int talhao, double areaTalhao, int texturaSolo, int sistemaCultivo, int profundidadeAmostraSolos) {
    this.talhao = talhao;
    this.areaTalhao = areaTalhao;
    this.texturaSolo = texturaSolo;
    this.sistemaCultivo = sistemaCultivo;
    this.profundidadeAmostraSolos = profundidadeAmostraSolos;

    this.texturasSolo = new ArrayList<String>();

    this.texturasSolo.add("Argiloso");
    this.texturasSolo.add("Text media");

    this.sistemasCultivo = new ArrayList<String>();

    this.sistemasCultivo.add("Plantio direto");
    this.sistemasCultivo.add("Convencional");

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

  public String getTextura() {
    if (this.texturaSolo == 0) {
      return "";
    }

    return this.texturasSolo.get(this.texturaSolo - 1);
  }

  public String getCultivo() {
    if (this.sistemaCultivo == 0) {
      return "";
    }

    return this.sistemasCultivo.get(this.sistemaCultivo - 1);
  }

}
