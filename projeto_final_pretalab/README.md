# Projeto Final de Análise de Dados

## Contexto  
Este projeto consiste na análise das **Infrações de Trânsito ocorridas nas rodovias federais da Bahia em 2023**.  

## Etapas do projeto:
1. **Selecionar a Base de Dados** [Escolher e explorar a base de dados relevante ao tema.]
2. **Definir Objetivo e Perguntas**  [Estabelecer o objetivo e formular perguntas-chave com base nas variáveis disponíveis.]
3. **Realizar Análise Exploratória**  [Identificar correlações, padrões e outliers nos dados.]
4. **Gerar Base Final**  [Limpar e estruturar os dados para a visualização.]
5. **Criar Visualizações com a biblioteca Matplotlib/Seaborn**  [Desenvolver gráficos que sintetizem os principais insights.]
6. **Estruturar a Documentação em PDF**  [Detalhar os insights extraídos dos dados.]

---

## Base Escolhida 
- **Base:** MULTAS: Sistema de Gestão de Infrações SERPRO e RENACOM, [PRF](https://www.gov.br/prf/pt-br/acesso-a-informacao/dados-abertos/dados-abertos-da-prf)
- **Transformação da Base de Dados com Python:** [Tratamento da base de dados](https://github.com/bsjamile/on35-python-s17-s18-projeto-final/blob/main/material/projeto_infracoes-de-transito-BA-2023.ipynb)
## Arquivos:
- **Arquivos para download:** [Infrações de Trânsito 2023](https://drive.google.com/file/d/19ytlVs332DVxBgBbWUSFGBtgY46sx94b/view)
- **Arquivo Base Final:** [Infrações de Trânsito BA 2023](https://drive.google.com/file/d/1ZekmeioEv9i2RDwlCvx5KG1pNxEirWFr/view?usp=sharing)
## DataViz:
- **Visualizações - Matplotlib/Seaborn:** [Visualizações](https://github.com/bsjamile/on35-python-s17-s18-projeto-final/blob/main/material/projeto_infracoes-de-transito-BA-2023.ipynb)
- **Visualizações - Tableu:** [Dashboards](https://public.tableau.com/app/profile/jamile.barroso/viz/infracoes_transito_BA_2023/Story1_1)
- **Documentação em PDF:** [Análise das Infrações de Trânsito BA 2023](https://github.com/bsjamile/pretalab-exerc/blob/main/projeto_final_pretalab/infracoes_transito_pretalab_BA_2023.pdf)

A base de dados selecionada contém informações detalhadas sobre as infrações de trânsito ocorridas nas rodovias federais da Bahia no ano de 2023. 

As principais características da base de dados tratada são:

1. **Abrangência temporal:** A base cobre todas as infrações registradas ao longo do ano de 2023, permitindo análises mensais e sazonais.

2. **Abrangência geográfica:** A base foca nas infrações ocorridas em diferentes municípios do estado da Bahia, com dados específicos sobre a rodovia federal (BR) onde ocorreram as infrações.

3. **Colunas e variáveis:**

- Data da Infração: Informa o dia exato em que a infração foi cometida.
- Mês: Permite a análise sazonal, identificando os meses com mais infrações.
- Município: Identifica o local exato da infração.
- BR Infração: Especifica a rodovia federal (BR) em que a infração ocorreu.
- Turno: Informa se a infração ocorreu de manhã, tarde, noite ou madrugada.
- Indicador de Abordagem: Diferencia infrações com abordagem direta de um agente de trânsito das sem abordagem.
- Tipo Veículo: Classifica o tipo de veículo envolvido na infração (carro, moto, caminhão, etc.).
- Descrição Infração: Fornece uma breve descrição da infração cometida.
- Medição Infração: Detalha o tipo específico de medição envolvida, como excesso de peso ou alcoolemia.
- Qtde Infrações: Quantifica o número de infrações registradas para aquela instância.

4. **Tipo de dados:** A base contém dados estruturados, com variáveis categóricas (ex: tipo de veículo, turno, município) e quantitativa (ex: quantidade de infrações).

---
 
## Objetivo Geral:
Realizar uma análise dos dados com o objetivo de **realizar análise detalhada dos padrões de infrações em termos de local, tempo, tipo de veículo e tipo de infração, com o intuito de fornecer subsídios para políticas públicas de prevenção e segurança no trânsito**.  

### As perguntas norteadoras deste projeto são:  
**[Perguntas exploratórias]** - Quais insights podem ser extraídos a partir dos padrões identificados nos dados?

1. Qual é o município com a maior quantidade de infrações em 2023?
2. Qual turno apresenta a maior incidência de infrações de trânsito?
3. Em qual BR ocorrem mais infrações nas rodovias federais da Bahia?
4. Qual é a diferença entre a quantidade de infrações com abordagem e sem abordagem?
5. Quais tipos de veículos são mais frequentemente infracionados?
6. Quais são as maiores causas de infração de trânsito?
7. Qual mês apresentou o maior número de infrações de trânsito?

---

## Ferramentas Utilizadas  
- **Python (Jupyter Notebook)**: Para a análise exploratória de dados utilizando bibliotecas como Pandas, Seaborn, Matplotlib, etc.  
- **Tableau**: Para criar as visualizações finais e apresentar os insights gerados.  
- **GitHub**: Para versionamento do projeto e documentação.  
