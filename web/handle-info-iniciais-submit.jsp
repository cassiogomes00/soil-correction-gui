<%@ page import="java.text.SimpleDateFormat"%>
<%@ page import="java.util.Date"%>
<%@ page import="java.util.Properties"%>
<%@ page import="Control.PropertyFileControl.*"%>

<%
  String produtor = request.getParameter("produtor");
  String data = request.getParameter("data");
  String municipio = request.getParameter("municipio");
  String lote = request.getParameter("lote");
  String areaTotal = request.getParameter("area-total");
  String matriculaLote = request.getParameter("matricula-lote");
  String responsavelTecnico = request.getParameter("responsavel-tecnico");
  String resultadoAnaliseSolos  = request.getParameter("resultado-analise-solos");
  
//  Date data = strData == null ? new Date(): new SimpleDateFormat("yyyy-MM-dd").parse(strData);
//  int areaTotal = strAreaTotal == "" ? 0 : Integer.parseInt(strAreaTotal);
//  int resultadoAnaliseSolos = strResultadoAnaliseSolos == "" ? 0 : Integer.parseInt(strResultadoAnaliseSolos);
  
  Properties props = new Properties();
  PropertyFileController propertyFileControl = new PropertyFileController();
  String path = System.getProperties().getProperty("user.home") + "/record.properties";
  
  props.setProperty("produtor", produtor);
  props.setProperty("data", data);
  props.setProperty("municipio", municipio);
  props.setProperty("lote", lote);
  props.setProperty("areaTotal", areaTotal);
  props.setProperty("matriculaLote", matriculaLote);
  props.setProperty("responsavelTecnico", responsavelTecnico);
  props.setProperty("resultadoAnaliseSolos", resultadoAnaliseSolos);
  
  propertyFileControl.mergeProperties(path, props, true); 
  
  response.sendRedirect("form-amostra-solo.jsp");
  
//  String talhao = request.getParameter("talhao");
//  String areaTalhao = request.getParameter("area-talhao");
//  String texturaSolo = request.getParameter("textura-solo");
//  String sistemaCultivo = request.getParameter("sistema-cultivo");
//  String profundidadeAmostraSolos = request.getParameter("profundidade-amostra-solos");
//  
//  String teorFosforo = request.getParameter("teor-fosforo");
//  String teorPotassio = request.getParameter("teor-potassio");
//  String teorCalcio = request.getParameter("teor-calcio");
//  String teorMagnesio = request.getParameter("teor-magnesio");
//  String teorEnxofre = request.getParameter("teor-enxofre");
//  String teorAluminio = request.getParameter("teor-aluminio");
//  String teorHAl = request.getParameter("teor-hal");
//  String teorMO = request.getParameter("teor-mo");
//  
//  String teorFosforoAtingir = request.getParameter("teor-fosforo-atingir");
//  String fonteFosforoUtilizar = request.getParameter("fonte-fosforo-utilizar");
//  String valorFonteFosforo = request.getParameter("valor-fonte-fosforo");
//  String eficienciaFosforo = request.getParameter("eficiencia-fosforo");
//  
//  String participaçãoPotassioDesejada = request.getParameter("participacao-potassio-desejada");
//  String fontePotassioUtilizar = request.getParameter("fonte-potassio-utilizar");
//  String valorFontePotassio = request.getParameter("valor-fonte-potassio");
//  
//  String participacaoCalcioDesejada = request.getParameter("participacao-calcio-desejada");
//  String fonteCorretivoUtilizar = request.getParameter("fonte-corretivo-utilizar");
//  String prnt = request.getParameter("prnt");
//  String teorCaOCorretivo = request.getParameter("teor-cao-corretivo");
%>