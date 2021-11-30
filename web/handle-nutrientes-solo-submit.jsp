<%@ page import="java.text.SimpleDateFormat"%>
<%@ page import="java.util.Date"%>
<%@ page import="java.util.Properties"%>
<%@ page import="Control.PropertyFileControl.*"%>

<%
  String teorFosforo = request.getParameter("teor-fosforo");
  String teorPotassio = request.getParameter("teor-potassio");
  String teorCalcio = request.getParameter("teor-calcio");
  String teorMagnesio = request.getParameter("teor-magnesio");
  String teorEnxofre = request.getParameter("teor-enxofre");
  String teorAluminio = request.getParameter("teor-aluminio");
  String teorHAl = request.getParameter("teor-hal");
  String teorMO = request.getParameter("teor-mo");
  
  Properties props = new Properties();
  PropertyFileController propertyFileControl = new PropertyFileController();
  String path = System.getProperties().getProperty("user.home") + "/record.properties";
  
  props.setProperty("teorFosforo", teorFosforo);
  props.setProperty("teorPotassio", teorPotassio);
  props.setProperty("teorCalcio", teorCalcio);
  props.setProperty("teorMagnesio", teorMagnesio);
  props.setProperty("teorEnxofre", teorEnxofre);
  props.setProperty("teorAluminio", teorAluminio);
  props.setProperty("teorHAl", teorHAl);
  props.setProperty("teorMO", teorMO);
  
  propertyFileControl.mergeProperties(path, props, false); 

  response.sendRedirect("form-correcao-recuperacao-fosforo.jsp");  

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