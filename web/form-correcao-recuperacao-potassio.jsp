<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%!int currentStep = 5;%>
<%!int totalSteps = 6;%>

<!DOCTYPE html>
<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Correção/recuperação de potássio</title>
  </head>

  <body>
    <h1>Correção/recuperação de potássio</h1>
    <p>Passo <%=currentStep%> de <%=totalSteps%></p>

    <form>
      <div>
        <label for="participacao-potassio-desejada">Participação de potássio desejada</label>
        <input type="number" name="participacao-potassio-desejada" id="participacao-potassio-desejada" placeholder="ex.: 4.8"/>
      </div>

      <div>
        <label for="fonte-potassio-utilizar">Fonte de potássio a utilizar</label>
        <input type="number" name="fonte-potassio-utilizar" id="fonte-potassio-utilizar" placeholder="ex.: 4"/>
      </div>

      <div>
        <label for="valor-fonte-potassio">Valor da fonte de potássio</label>
        <input type="number" name="valor-fonte-potassio" id="valor-fonte-potassio" placeholder="ex.: 4000"/>
      </div>

      <input type="submit" value="Proximo passo"/>
    </form>
  </body>
</html>
