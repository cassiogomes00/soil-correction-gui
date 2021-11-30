<%@ page import="java.text.SimpleDateFormat"%>
<%@ page import="java.util.Date"%>
<%@ page import="java.util.Properties"%>
<%@ page import="Control.PropertyFileControl.*"%>

<%
  String participacaoCalcioDesejada = request.getParameter("participacao-calcio-desejada");
  String fonteCorretivoUtilizar = request.getParameter("fonte-corretivo-utilizar");
  String prnt = request.getParameter("prnt");
  String teorCaOCorretivo = request.getParameter("teor-cao-corretivo");

  Properties props = new Properties();
  PropertyFileController propertyFileControl = new PropertyFileController();
  String path = System.getProperties().getProperty("user.home") + "/record.properties";
  
  props.setProperty("participacaoCalcioDesejada", participacaoCalcioDesejada);
  props.setProperty("fonteCorretivoUtilizar", fonteCorretivoUtilizar);
  props.setProperty("prnt", prnt);
  props.setProperty("teorCaOCorretivo", teorCaOCorretivo);
  
  propertyFileControl.mergeProperties(path, props, false); 

  out.println("pronto");



%>