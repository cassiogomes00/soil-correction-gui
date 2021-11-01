<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Correção de solos</title>
  </head>

  <body>
    <h1>Correção de solos</h1>

    <form>
      <h2>Informações iniciais</h2>

      <label for="produtor">
        Produtor
        <input type="text" name="produtor" id="produtor" placeholder="ex.: João da Silva"/>
      </label>

      <br/>

      <label for="data">
        Data
        <input type="date" name="data" id="data" />
      </label>

      <br/>

      <label for="municipio">
        Município
        <input type="text" name="municipio" id="municipio" placeholder="ex.: Curitiba"/>
      </label>

      <br/>

      <label for="lote">
        Lote
        <input type="text" name="lote" id="lote" />
      </label>

      <br/>

      <label for="area-total">
        Área total (ha)
        <input type="number" name="area-total" id="area-total" placeholder="ex.: 23423"/>
      </label>

      <br/>

      <label for="matricula-lote">
        Matrícula do lote
        <input type=text"" name="matricula-lote" id="matricula-lote" placeholder=""/>
      </label>

      <br/>

      <label for="responsavel-tecnico">
        Responsável técnico
        <input type="text" name="responsavel-tecnico" id="responsavel-tecnico" placeholder="ex.: João da Silva"/>
      </label>

      <br/>

      <label for="resultado-analise-solos">
        Resultado da análise de solos
        <input type="number" name="resultado-analise-solos" id="resultado-analise-solos" placeholder="ex.: 786"/>
      </label>

      <br/>

      <h2>Amostra/solo</h2>

      <label for="talhao">
        Talhão
        <input type="number" name="talhao" id="talhao" placeholder="ex.: 1"/>
      </label>

      <br/>

      <label for="area-talhao">
        Área do talhão
        <input type="number" name="area-talhao" id="area-talhao" placeholder="ex.: 4.8"/>
      </label>

      <br/>

      <label for="textura-solo">
        Textura do solo
        <input type="number" name="textura-solo" id="textura-solo" placeholder="ex.: 1"/>
        <span id="span-textura-solo"></span>
      </label>

      <br/>

      <label for="sistema-cultivo">
        Sistema de cultivo
        <input type="number" name="sistema-cultivo" id="sistema-cultivo" placeholder="ex.: 1"/>
        <span id="span-sistema-cultivo"></span>
      </label>

      <br/>

      <label for="profundidade-amostra-solos">
        Profundidade das amostras de solos
        <input type="number" name="profundidade-amostra-solos" id="profundidade-amostra-solos" placeholder="ex.: 4.8"/>
      </label>

      <br/>

      <h2>Nutrientes no solo</h2>

      <label for="teor-fosforo">
        Teor de fósforo
        <input type="number" name="teor-fosforo" id="teor-fosforo" placeholder="ex.: 4.8"/>
        <span id="span-teor-fosforo"></span>
      </label>

      <br/>

      <label for="teor-potassio">
        Teor de potássio
        <input type="number" name="teor-potassio" id="teor-potassio" placeholder="ex.: 4.8"/>
        <span id="span-teor-potassio"></span>
      </label>

      <br/>

      <label for="teor-calcio">
        Teor de cálcio
        <input type="number" name="teor-calcio" id="teor-calcio" placeholder="ex.: 4.8"/>
        <span id="span-teor-calcio"></span>
      </label>

      <br/>

      <label for="teor-magnesio">
        Teor de magnésio
        <input type="number" name="teor-magnesio" id="teor-magnesio" placeholder="ex.: 4.8"/>
        <span id="span-teor-magnesio"></span>
      </label>

      <br/>

      <label for="teor-enxofre">
        Teor de enxofre
        <input type="number" name="teor-enxofre" id="teor-enxofre" placeholder="ex.: 4.8"/>
        <span id="span-teor-enxofre"></span>
      </label>

      <br/>

      <label for="teor-aluminio">
        Teor de aluminio
        <input type="number" name="teor-aluminio" id="teor-aluminio" placeholder="ex.: 4.8"/>
        <span id="span-teor-aluminio"></span>
      </label>

      <br/>

      <label for="teor-hal">
        Teor de hAl
        <input type="number" name="teor-hal" id="teor-hal" placeholder="ex.: 4.8"/>
        <span id="span-teor-hal"></span>
      </label>

      <br/>

      <label for="teor-mo">
        Teor de MO
        <input type="number" name="teor-mo" id="teor-mo" placeholder="ex.: 4.8"/>
        <span id="span-teor-mo"></span>
      </label>

      <br/>

      <h2>Correção/recuperação de fósforo</h2>

      <label for="teor-fosforo-atingir">
        Teor de fósforo a atingir
        <input type="number" name="teor-fosforo-atingir" id="teor-fosforo-atingir" placeholder="ex.: 4.8"/>
      </label>

      <br/>

      <label for="fonte-fosforo-utilizar">
        Fonte de fósforo a utilizar
        <input type="number" name="fonte-fosforo-utilizar" id="fonte-fosforo-utilizar" placeholder="ex.: 4"/>
      </label>

      <br/>

      <label for="valor-fonte-fosforo">
        Valor da fonte de fósforo
        <input type="number" name="valor-fonte-fosforo" id="valor-fonte-fosforo" placeholder="ex.: 4000"/>
      </label>

      <br/>

      <label for="eficiencia-fosforo">
        Eficiência do fósforo
        <input type="number" name="eficiencia-fosforo" id="eficiencia-fosforo" placeholder="ex.: 4.8"/>
      </label>

      <br/>

      <h2>Correção/recuperação de potássio</h2>

      <label for="participacao-potassio-desejada">
        Participação de potássio desejada
        <input type="number" name="participacao-potassio-desejada" id="participacao-potassio-desejada" placeholder="ex.: 4.8"/>
      </label>

      <br/>

      <label for="fonte-potassio-utilizar">
        Fonte de potássio a utilizar
        <input type="number" name="fonte-potassio-utilizar" id="fonte-potassio-utilizar" placeholder="ex.: 4"/>
      </label>

      <br/>

      <label for="valor-fonte-potassio">
        Valor da fonte de potássio
        <input type="number" name="valor-fonte-potassio" id="valor-fonte-potassio" placeholder="ex.: 4000"/>
      </label>

      <br/>

      <h2>Correção/recuperação de Cálcio e Magnésio</h2>

      <label for="participacao-calcio-desejada">
        Participação de cálcio desejada
        <input type="number" name="participacao-calcio-desejada" id="participacao-calcio-desejada" placeholder="ex.: 4.8"/>
      </label>

      <br/>

      <label for="fonte-corretivo-utilizar">
        Fonte de corretivo a utilizar
        <input type="number" name="fonte-corretivo-utilizar" id="fonte-corretivo-utilizar" placeholder="ex.: 4"/>
      </label>

      <br/>

      <label for="prnt">
        PRNT
        <input type="number" name="prnt" id="prnt" placeholder="ex.: 4000"/>
      </label>

      <br/>

      <label for="teor-cao-corretivo">
        Teor de CaO do corretivo
        <input type="number" name="teor-cao-corretivo" id="teor-cao-corretivo" placeholder="ex.: 4.8"/>
      </label>

      <br/>

      <input type="submit" value="Enviar"/>
    </form>
  </body>
</html>
