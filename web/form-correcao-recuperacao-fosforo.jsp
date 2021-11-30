<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%!int currentStep = 4;%>
<%!int totalSteps = 6;%>

<!DOCTYPE html>
<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Correção/recuperação de fósforo</title>
  </head>

  <body>
    <h1>Correção/recuperação de fósforo</h1>
    <p>Passo <%=currentStep%> de <%=totalSteps%></p>

    <form action="handle-correcao-recuperacao-fosforo-submit.jsp">
      <div>
        <label for="teor-fosforo-atingir">Teor de fósforo a atingir</label>
        <input type="number" name="teor-fosforo-atingir" id="teor-fosforo-atingir" placeholder="ex.: 4.8"/>
      </div>

      <div>
        <label for="fonte-fosforo-utilizar">Fonte de fósforo a utilizar</label>
        <input type="number" name="fonte-fosforo-utilizar" id="fonte-fosforo-utilizar" placeholder="ex.: 4"/>
      </div>

      <div>
        <label for="valor-fonte-fosforo">Valor da fonte de fósforo</label>
        <input type="number" name="valor-fonte-fosforo" id="valor-fonte-fosforo" placeholder="ex.: 4000"/>
      </div>

      <div>
        <label for="eficiencia-fosforo">Eficiência do fósforo</label>
        <input type="number" name="eficiencia-fosforo" id="eficiencia-fosforo" placeholder="ex.: 4.8"/>
      </div>

      <input type="submit" value="Proximo passo"/>
    </form>
  </body>
</html>
