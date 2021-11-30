<%@ page import="java.text.SimpleDateFormat"%>
<%@ page import="java.util.Date"%>
<%@ page import="java.util.Properties"%>
<%@ page import="Control.PropertyFileControl.*"%>

<%
  String teorFosforoAtingir = request.getParameter("teor-fosforo-atingir");
  String fonteFosforoUtilizar = request.getParameter("fonte-fosforo-utilizar");
  String valorFonteFosforo = request.getParameter("valor-fonte-fosforo");
  String eficienciaFosforo = request.getParameter("eficiencia-fosforo");
  
  Properties props = new Properties();
  PropertyFileController propertyFileControl = new PropertyFileController();
  String path = System.getProperties().getProperty("user.home") + "/record.properties";
  
  props.setProperty("teorFosforoAtingir", teorFosforoAtingir);
  props.setProperty("fonteFosforoUtilizar", fonteFosforoUtilizar);
  props.setProperty("valorFonteFosforo", valorFonteFosforo);
  props.setProperty("eficienciaFosforo", eficienciaFosforo);
  
  propertyFileControl.mergeProperties(path, props, false); 

  response.sendRedirect("form-correcao-recuperacao-potassio.jsp");  


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