<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%!int currentStep = 6;%>
<%!int totalSteps = 6;%>

<!DOCTYPE html>
<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Correção/recuperação de cálcio/magnésio</title>
  </head>

  <body>
    <h1>Correção/recuperação de cálcio/magnésio</h1>
    <p>Passo <%=currentStep%> de <%=totalSteps%></p>

    <form action="handle-correcao-recuperacao-calcio-magnesio-submit.jsp">
      <div>
        <label for="participacao-calcio-desejada">Participação de cálcio desejada</label>
        <input type="number" name="participacao-calcio-desejada" id="participacao-calcio-desejada" placeholder="ex.: 4.8"/>
      </div>

      <div>
        <label for="fonte-corretivo-utilizar">Fonte de corretivo a utilizar</label>
        <input type="number" name="fonte-corretivo-utilizar" id="fonte-corretivo-utilizar" placeholder="ex.: 4"/>
      </div>

      <div>
        <label for="prnt">PRNT</label>
        <input type="number" name="prnt" id="prnt" placeholder="ex.: 4000"/>
      </div>

      <div>
        <label for="teor-cao-corretivo">Teor de CaO do corretivo</label>
        <input type="number" name="teor-cao-corretivo" id="teor-cao-corretivo" placeholder="ex.: 4.8"/>
      </div>

      <input type="submit" value="Terminar"/>
    </form>
  </body>
</html>
