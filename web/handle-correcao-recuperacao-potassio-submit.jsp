<%@ page import="java.text.SimpleDateFormat"%>
<%@ page import="java.util.Date"%>
<%@ page import="java.util.Properties"%>
<%@ page import="Control.PropertyFileControl.*"%>

<%
 String participaçãoPotassioDesejada = request.getParameter("participacao-potassio-desejada");
  String fontePotassioUtilizar = request.getParameter("fonte-potassio-utilizar");
  String valorFontePotassio = request.getParameter("valor-fonte-potassio");

  Properties props = new Properties();
  PropertyFileController propertyFileControl = new PropertyFileController();
  String path = System.getProperties().getProperty("user.home") + "/record.properties";
  
  props.setProperty("participaçãoPotassioDesejada", participaçãoPotassioDesejada);
  props.setProperty("fontePotassioUtilizar", fontePotassioUtilizar);
  props.setProperty("valorFontePotassio", valorFontePotassio);
  
  propertyFileControl.mergeProperties(path, props, false); 

  response.sendRedirect("form-correcao-recuperacao-calcio-magnesio.jsp");  


//  
//  
//  
//  String participacaoCalcioDesejada = request.getParameter("participacao-calcio-desejada");
//  String fonteCorretivoUtilizar = request.getParameter("fonte-corretivo-utilizar");
//  String prnt = request.getParameter("prnt");
//  String teorCaOCorretivo = request.getParameter("teor-cao-corretivo");
%>