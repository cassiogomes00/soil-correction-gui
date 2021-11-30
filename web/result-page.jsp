<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.util.Properties"%>
<%@page import="Control.PropertyFileControl.PropertyFileController"%>
<%@page import="Util.nutrienteTextura.*"%>
<%@page import="Util.EquilibrioCorrecaoCTC.EquilibrioCorrecaoCTC"%>
<%@page import="Util.conversores.*"%>

<%!String path = System.getProperties().getProperty("user.home") + "/record.properties";%>
<%!Properties props = new PropertyFileController().getProperties(path);%>

<%!NutrientesCTC valorIdeal = props.getProperty("texturaSolo").equals("1") ? new TexturaSolo().ARGILOSO.calculaValorIdeal() : props.getProperty("texturaSolo").equals("2") ? new TexturaSolo().TEXTURA_MEDIA.calculaValorIdeal() : null; %>

<%!double valorIdealFosforo = valorIdeal.fosforo();%>
<%!double valorIdealPotassio = valorIdeal.potassio();%>
<%!double valorIdealCalcio = valorIdeal.calcio();%>
<%!double valorIdealMagnesio = valorIdeal.magnesio();%>
<%!double valorIdealEnxofre = valorIdeal.enxofre();%>
<%!double valorIdealHAl = valorIdeal.aluminioHidrogenio();%>

<%!double scmol = new EquilibrioCorrecaoCTC().calculaSCmol(Double.parseDouble(props.getProperty("teorPotassio")), Double.parseDouble(props.getProperty("teorCalcio")), Double.parseDouble(props.getProperty("teorMagnesio")));%>
<%!double ctccmol = new EquilibrioCorrecaoCTC().calculaCTCCmol(Double.parseDouble(props.getProperty("teorPotassio")), Double.parseDouble(props.getProperty("teorCalcio")), Double.parseDouble(props.getProperty("teorMagnesio")),Double.parseDouble(props.getProperty("teorHAl")));%>
<%!double vPercentual = new EquilibrioCorrecaoCTC().calculaVPercentual(scmol, ctccmol);%>
<%!double moPercentual = new EquilibrioCorrecaoCTC().calculaMOPercentual(Double.parseDouble(props.getProperty("teorMO")));%>
<%!double carbono = new EquilibrioCorrecaoCTC().calculaCarbono(moPercentual);%>

<%!double teorFosforoAdicionar = new ConverteKgHaEmP2O5().converte(new ConverteMgDm3EmKgHa().converte(valorIdealFosforo - Double.parseDouble(properties.getProperty(teorFosforo))));%>

<%!double necessidadeFosforo = new CorrecaoFosforo().calculaEficienciaNutriente(teorFosforoAdicionar, Double.parseDouble(props.getProperty(eficienciaFosforo)))%>
<%!%>
<%!%>
<%!%>
<%!%>
<%!%>
<%!%>
<%!%>
<%!%>
<%!%>
<%!%>

<!DOCTYPE html>
<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Resultado da análise</title>
  </head>
  <body>
    <h1>Resultado da análise</h1>

    <p>Valor ideal de fósforo: <%=valorIdealFosforo%></p>
    <p>Valor ideal de potassio: <%=valorIdealPotassio%></p>
    <p>Valor ideal de cálcio: <%=valorIdealCalcio%></p>
    <p>Valor ideal de magnesio <%=valorIdealMagnesio%></p>
    <p>Valor ideal de enxofre <%=valorIdealEnxofre%></p>
    <p>Valor ideal de HAl <%=valorIdealHAl%></p>

    <p>Scmol: <%=scmol%></p>
    <p>CTCcmol: <%=ctccmol%></p>
    <p>V%: <%=vPercentual%></p>
    <p>MO%: <%=moPercentual%></p>
    <p>Carbono: <%=carbono%></p>
    <p>: <%=%></p>
    <p>: <%=%></p>
    <p>: <%=%></p>
    <p>: <%=%></p>
    <p>: <%=%></p>
    <p>: <%=%></p>
    <p>: <%=%></p>
    <p>: <%=%></p>
    <p>: <%=%></p>
    <p>: <%=%></p>

  </body>
</html>
