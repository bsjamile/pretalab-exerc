SELECT * FROM `basedosdados.br_inep_ideb.uf` LIMIT 1000;

-- identificar as escolar com o maior IDEEB em um UF

SELECT
  rede,
  ideb
FROM
  `basedosdados.br_inep_ideb.uf`
WHERE
  sigla_uf = 'BA'
  and ano = 2023
order by
  ideb desc;


SELECT E.ano, E.sigla_uf, E.taxa_aprovacao,M.rede
FROM `basedosdados.br_inep_ideb.escola` E
INNER JOIN `basedosdados.br_inep_ideb.municipio` M
ON E.id_municipio = M.id_municipio;