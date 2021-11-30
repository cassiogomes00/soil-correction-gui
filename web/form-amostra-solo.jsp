<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%!int currentStep = 2;%>
<%!int totalSteps = 6;%>

<!DOCTYPE html>
<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Amostra/solo</title>
  </head>

  <body>
    <h1>Amostra/solo</h1>
    <p>Passo <%=currentStep%> de <%=totalSteps%></p>

    <form>
      <div>
        <label for="talhao">Talhão</label>
        <input type="number" name="talhao" id="talhao" placeholder="ex.: 1"/>
      </div>

      <div>
        <label for="area-talhao">Área do talhão</label>
        <input type="number" name="area-talhao" id="area-talhao" placeholder="ex.: 4.8"/>
      </div>

      <div>
        <label for="textura-solo">Textura do solo</label>
        <input type="number" name="textura-solo" id="textura-solo" placeholder="ex.: 1"/>
        <span id="span-textura-solo"></span>
      </div>

      <div>
        <label for="sistema-cultivo">Sistema de cultivo </label>
        <input type="number" name="sistema-cultivo" id="sistema-cultivo" placeholder="ex.: 1"/>
        <span id="span-sistema-cultivo"></span>
      </div>

      <div>
        <label for="profundidade-amostra-solos">Profundidade das amostras de solos </label>
        <input type="number" name="profundidade-amostra-solos" id="profundidade-amostra-solos" placeholder="ex.: 4.8"/>
      </div>

      <input type="submit" value="Proximo passo"/>
    </form>
  </body>
</html>
