package model;

import java.util.Date;

public class Cabecalho {

  String produtor;
  Date data;
  String municipio;
  String lote;
  double areaTotal;
  String matriculaLote;
  String responsavelTecnico;
  int resultadoAnaliseSolos;

  public Cabecalho(String produtor, Date data, String municipio, String lote, double areaTotal, String matriculaLote, String responsavelTecnico, int resultadoAnaliseSolos) {
    this.produtor = produtor;
    this.data = data;
    this.municipio = municipio;
    this.lote = lote;
    this.areaTotal = areaTotal;
    this.matriculaLote = matriculaLote;
    this.responsavelTecnico = responsavelTecnico;
    this.resultadoAnaliseSolos = resultadoAnaliseSolos;
  }

  public String getProdutor() {
    return produtor;
  }

  public void setProdutor(String produtor) {
    this.produtor = produtor;
  }

  public Date getData() {
    return data;
  }

  public void setData(Date data) {
    this.data = data;
  }

  public String getMunicipio() {
    return municipio;
  }

  public void setMunicipio(String municipio) {
    this.municipio = municipio;
  }

  public String getLote() {
    return lote;
  }

  public void setLote(String lote) {
    this.lote = lote;
  }

  public double getAreaTotal() {
    return areaTotal;
  }

  public void setAreaTotal(double areaTotal) {
    this.areaTotal = areaTotal;
  }

  public String getMatriculaLote() {
    return matriculaLote;
  }

  public void setMatriculaLote(String matriculaLote) {
    this.matriculaLote = matriculaLote;
  }

  public String getResponsavelTecnico() {
    return responsavelTecnico;
  }

  public void setResponsavelTecnico(String responsavelTecnico) {
    this.responsavelTecnico = responsavelTecnico;
  }

  public int getResultadoAnaliseSolos() {
    return resultadoAnaliseSolos;
  }

  public void setResultadoAnaliseSolos(int resultadoAnaliseSolos) {
    this.resultadoAnaliseSolos = resultadoAnaliseSolos;
  }

}
