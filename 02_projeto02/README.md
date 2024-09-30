### Projeto 2 - Consulta Banco de Dados

Exercício Banco de dados - Tema 1:  Banco de Dados de Queimadas

A atividade pode ser encontrada no colab: https://colab.research.google.com/drive/19VsOAtHke3BcVU5ylInk-Hda1lXMGsFj?usp=sharing#scrollTo=UoSxfLGExhNq

### Base de dados

A base de dados utilizada foi da INEP (Instituto Nacional de Pesquisas Espaciais.)

Base de dados: https://basedosdados.org/dataset/f06f3cdc-b539-409b-b311-1ff8878fb8d9?table=a3696dc2-4dd1-4f7e-9769-6aa16a1556b8

Após acessar o ID do BigQuery, acessei o banco de dados com todas as tabelas necessárias para realizar as consultas.

### Consultas SQL

- consultas_foco_queimadas.sql
- municipio_ibge.sql

### Arquivo: consultas_foco_queimadas.sql

Neste arquivo podem ser encontradas todas as consultas em SQL que respondem as seguintes perguntas:

- Estado com o maior número de focos de queimadas em 2022;
- Ano com mais queimadas nos últimos 5 anos no Brasil;
- Bioma mais afetado pelas queimadas em 2022;
- Quantidade de Estados e anos analisados;
- Média de focos de queimadas por estado no Brasil em 2020;
- Município com mais focos de queimadas em 2021 no bioma Mata Atlântica;
- Evolução anual do número de queimadas no bioma Cerrado entre 2015 e 2023;
- Focos de queimadas registrados por bioma no ano de 2005;

### Arquivo: municipio_ibge.sql

Este arquivo foi criado com os codigo_ibge e o nome de cada município para realizar o JOIN com o id_municipio presente no banco de dados das queimadas. Assim, foi possível responder a pergunta 6 - Município com mais focos de queimadas em 2021 no bioma Mata Atlântica;