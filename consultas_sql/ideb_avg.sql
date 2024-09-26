SELECT * FROM `basedosdados.br_inep_ideb.uf` LIMIT 1000;

--analisar a evolucao do ideb ao longo dos anos em um determinado ESTADO
SELECT
  ano, 
  AVG(ideb) AS media_ideb
FROM
  `basedosdados.br_inep_ideb.uf`
WHERE
  sigla_uf = 'AL'
GROUP BY
  ano
ORDER BY
  ano;