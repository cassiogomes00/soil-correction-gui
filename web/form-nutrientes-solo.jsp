<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%!int currentStep = 3;%>
<%!int totalSteps = 6;%>

<!DOCTYPE html>
<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Nutrientes no solo</title>
  </head>

  <body>
    <h1>Nutrientes no solo</h1>
    <p>Passo <%=currentStep%> de <%=totalSteps%></p>

    <form action="handle-nutrientes-solo-submit.jsp">
      <div>
        <label for="teor-fosforo">Teor de fósforo</label>
        <input type="number" name="teor-fosforo" id="teor-fosforo" placeholder="ex.: 4.8"/>
        <span id="span-teor-fosforo"></span>
      </div>

      <div>
        <label for="teor-potassio">Teor de potássio</label>
        <input type="number" name="teor-potassio" id="teor-potassio" placeholder="ex.: 4.8"/>
        <span id="span-teor-potassio"></span>
      </div>

      <div>
        <label for="teor-calcio">Teor de cálcio</label>
        <input type="number" name="teor-calcio" id="teor-calcio" placeholder="ex.: 4.8"/>
        <span id="span-teor-calcio"></span>
      </div>

      <div>
        <label for="teor-magnesio">Teor de magnésio</label>
        <input type="number" name="teor-magnesio" id="teor-magnesio" placeholder="ex.: 4.8"/>
        <span id="span-teor-magnesio"></span>
      </div>

      <div>
        <label for="teor-enxofre">Teor de enxofre</label>
        <input type="number" name="teor-enxofre" id="teor-enxofre" placeholder="ex.: 4.8"/>
        <span id="span-teor-enxofre"></span>
      </div>

      <div>
        <label for="teor-aluminio">Teor de aluminio</label>
        <input type="number" name="teor-aluminio" id="teor-aluminio" placeholder="ex.: 4.8"/>
        <span id="span-teor-aluminio"></span>
      </div>

      <div>
        <label for="teor-hal"> Teor de hAl</label>
        <input type="number" name="teor-hal" id="teor-hal" placeholder="ex.: 4.8"/>
        <span id="span-teor-hal"></span>
      </div>

      <div>
        <label for="teor-mo">Teor de MO</label>
        <input type="number" name="teor-mo" id="teor-mo" placeholder="ex.: 4.8"/>
        <span id="span-teor-mo"></span>
      </div>

      <input type="submit" value="Proximo passo"/>
    </form>
  </body>
</html>
