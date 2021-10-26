package model;

public class NutrientesSolo {

  double fosforo;
  double potassio;
  double calcio;
  double magnesio;
  double enxofre;
  double aluminio;
  double hAl;
  double mo;

  public NutrientesSolo(double fosforo, double potassio, double calcio, double magnesio, double enxofre, double aluminio, double hAl, double mo) {
    this.fosforo = fosforo;
    this.potassio = potassio;
    this.calcio = calcio;
    this.magnesio = magnesio;
    this.enxofre = enxofre;
    this.aluminio = aluminio;
    this.hAl = hAl;
    this.mo = mo;
  }

  public double getFosforo() {
    return fosforo;
  }

  public void setFosforo(double fosforo) {
    this.fosforo = fosforo;
  }

  public double getPotassio() {
    return potassio;
  }

  public void setPotassio(double potassio) {
    this.potassio = potassio;
  }

  public double getCalcio() {
    return calcio;
  }

  public void setCalcio(double calcio) {
    this.calcio = calcio;
  }

  public double getMagnesio() {
    return magnesio;
  }

  public void setMagnesio(double magnesio) {
    this.magnesio = magnesio;
  }

  public double getEnxofre() {
    return enxofre;
  }

  public void setEnxofre(double enxofre) {
    this.enxofre = enxofre;
  }

  public double getAluminio() {
    return aluminio;
  }

  public void setAluminio(double aluminio) {
    this.aluminio = aluminio;
  }

  public double gethAl() {
    return hAl;
  }

  public void sethAl(double hAl) {
    this.hAl = hAl;
  }

  public double getMo() {
    return mo;
  }

  public void setMo(double mo) {
    this.mo = mo;
  }

}
