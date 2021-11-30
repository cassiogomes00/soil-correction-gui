<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%!int currentStep = 1;%>
<%!int totalSteps = 6;%>

<!DOCTYPE html>
<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Informações iniciais</title>
  </head>

  <body>
    <h1>Informações Iniciais</h1>
    <p>Passo <%=currentStep%> de <%=totalSteps%></p>

    <form>
      <div>
        <label for="produtor">Produtor</label>
        <input type="text" name="produtor" id="produtor" placeholder="ex.: João da Silva"/>
      </div>

      <div>
        <label for="data">Data</label>
        <input type="date" name="data" id="data" />
      </div>

      <div>
        <label for="municipio"> Município</label>
        <input type="text" name="municipio" id="municipio" placeholder="ex.: Curitiba"/>
      </div>

      <div>
        <label for="lote">Lote</label>
        <input type="text" name="lote" id="lote" />
      </div>

      <div>
        <label for="area-total">Área total (ha)</label>
        <input type="number" name="area-total" id="area-total" placeholder="ex.: 23423"/>
      </div>

      <div>
        <label for="matricula-lote">Matrícula do lote</label>
        <input type=text"" name="matricula-lote" id="matricula-lote" placeholder=""/>
      </div>

      <div>
        <label for="responsavel-tecnico">Responsável técnico</label>
        <input type="text" name="responsavel-tecnico" id="responsavel-tecnico" placeholder="ex.: João da Silva"/>
      </div>

      <div>
        <label for="resultado-analise-solos">Resultado da análise de solos</label>
        <input type="number" name="resultado-analise-solos" id="resultado-analise-solos" placeholder="ex.: 786"/>
      </div>

      <input type="submit" value="Proximo passo"/>
    </form>
  </body>
</html>
