-- A base: `basedosdados.br_inpe_queimadas.microdados` contempla os dados disponíveis de 2003 a 2022
SELECT 
  *
FROM 
  `basedosdados.br_inpe_queimadas.microdados`;

-- Pergunta 1: Qual estado teve o maior número de focos de queimadas em 2023?
-- A base contempla os dados de 2003 a 2022. Assim, consultei o ano de 2022 ao invés de 2023
-- Em 2022 PA foi o estado com maior número de queimadas = 41.421
SELECT 
  ano,
  sigla_uf,
  COUNT(id_foco) AS qtd_queimadas
FROM 
  `basedosdados.br_inpe_queimadas.microdados`
WHERE 
  ano = 2022
GROUP BY
  ano,
  sigla_uf
ORDER BY
  qtd_queimadas DESC LIMIT 1;

-- Pergunta 2: Qual o ano com mais queimadas nos últimos 5 anos no Brasil?
-- A base contempla os dados de 2003 a 2022. Assim, consultei os últimos 5 anos da base = 2018 a 2022
-- Em 2020 foi o ano com o maior número de queimadas = 222.797
SELECT 
  ano,
  COUNT(id_foco) AS qtd_queimadas
FROM `basedosdados.br_inpe_queimadas.microdados`
WHERE 
  ano > 2017 AND ano <= 2022
GROUP BY
  ano
ORDER BY
  qtd_queimadas DESC LIMIT 1;

-- Pergunta 3: Qual foi o bioma mais afetado pelas queimadas em 2022?
-- Em 2022, Amazônia foi o bioma mais afetado com o número de queimadas = 115.033
SELECT 
  ano,
  bioma,
  COUNT(id_foco) AS qtd_queimadas
FROM `basedosdados.br_inpe_queimadas.microdados`
WHERE 
  ano = 2022
GROUP BY
  ano,
  bioma
ORDER BY
  qtd_queimadas DESC LIMIT 1;

-- Pergunta 4: Quantos Estados e anos tem? (Coloque de forma que Estados e Anos não se repita)
-- Há 27 estados e 20 anos (2003 a 2022)

SELECT 
  COUNT(DISTINCT sigla_uf) AS qtd_estados,
  COUNT(DISTINCT ano) AS qtd_ano
FROM `basedosdados.br_inpe_queimadas.microdados`;

-- Pergunta 5: Qual foi a média de focos de queimadas por estado no Brasil em 2020?
SELECT 
  ano,
  sigla_uf,
  AVG(num_queimadas) AS media_queimadas
FROM (
  SELECT 
    ano,
    sigla_uf,
    COUNT(id_foco) AS num_queimadas
  FROM `basedosdados.br_inpe_queimadas.microdados`
  WHERE 
    ano = 2020
  GROUP BY
    ano,
    sigla_uf
) AS subquery
GROUP BY
  ano,
  sigla_uf
ORDER BY
  media_queimadas DESC;

-- Pergunta 6: Qual município teve mais focos de queimadas em 2021 no bioma Mata Atlântica?
-- En 2021, no bioma Mata Atlântica, Almenara foi o municipio que teve mais focos de queimadas

SELECT 
  F.ano,
  F.bioma,
  F.id_municipio,
  M.nome_municipio,
  COUNT(F.id_foco) AS focos_queimadas 
FROM `basedosdados.br_inpe_queimadas.microdados` F
INNER JOIN `utility-destiny-434909-n4.base_municipio_ibge.municipios_ibge` M
ON F.id_municipio = M.codigo_ibge
WHERE 
  F.ano = 2021 AND F.bioma = 'Mata Atlântica'
GROUP BY
  F.ano,
  F.bioma,
  F.id_municipio,
  M.nome_municipio
ORDER BY
  focos_queimadas DESC LIMIT 1;

-- Pergunta 7: Qual a evolução anual do número de queimadas no Cerrado entre 2015 e 2022?
SELECT 
  ano,
  bioma,
  COUNT(id_foco) AS qtd_queimadas
FROM `basedosdados.br_inpe_queimadas.microdados`
WHERE 
  (ano > 2014 AND ano <= 2022) AND bioma = 'Cerrado'
GROUP BY
  ano,
  bioma
ORDER BY
  ano ASC;

-- Pergunta 8: Quantos focos de queimadas foram registrados por bioma no ano de 2005 no banco de dados do INPE?
SELECT 
  ano,
  bioma,
  COUNT(id_foco) AS foco_queimadas
FROM `basedosdados.br_inpe_queimadas.microdados`
WHERE 
  ano = 2005
GROUP BY
  ano,
  bioma
ORDER BY
  foco_queimadas DESC;
