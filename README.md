# Teste_Analytics_VitorAlves

Este repositório contém dois scripts desenvolvidos em R para geração, limpeza e análise de um dataset de vendas, incluindo a visualização de tendências de receita.

---

📂 Estrutura do Repositório
O repositório está organizado da seguinte forma:

/Teste_Analytics_VitorAlves

│
├── 1.Gerando_dataset.R       
├── 2.Grafico_tendencia.R     
├── README.md                
├── consultas_sql.sql         
└── relatorio_insights.pdf 




---

## 🛠️ Pré-requisitos

Certifique-se de que você tem o **R** e os pacotes necessários instalados:

### Pacotes necessários para `1.Gerando_dataset.R`:
- `dplyr`
- `readr`

### Pacotes necessários para `2.Grafico_tendencia.R`:
- `readxl`
- `lubridate`
- `ggplot2`

Para instalar os pacotes necessários, execute:
```R
Install.packages(c("dplyr", "readr", "readxl", "lubridate", "ggplot2"))

---
🚀 Como Executar os Scripts
1. Geração e Limpeza do Dataset (1.Gerando_dataset.R)
Este script gera um dataset fictício de vendas, realiza a limpeza dos dados e salva o resultado em um arquivo .csv.

Etapas realizadas:
Geração de dados fictícios (produtos, categorias, preços, quantidades).
Inclusão de categorias nos produtos.
Remoção de duplicidades e valores ausentes.
Salvamento do dataset limpo no formato .csv.
Cálculo do total de vendas por produto.
Identificação do produto mais vendido.
Execução:
Abra o script 1.Gerando_dataset.R.
Localize e substitua o trecho "caminho_pasta" pelo caminho onde deseja salvar o arquivo de saída, coloque somente o caminho da pasta dentro das aspas, substitua as barras "\" por "\\" após colar o caminho.
Execute o script.
O arquivo gerado será salvo como data_clean.csv no caminho especificado.

---

2. Análise e Visualização dos Dados (2.Grafico_tendencia.R)
Este script carrega o dataset limpo gerado pelo script anterior e realiza a análise de tendências mensais de vendas, gerando um gráfico de receita ao longo do tempo.

Etapas realizadas:
Leitura do arquivo data_clean.csv.
Transformação das datas para formato mensal.
Cálculo da receita total por mês.
Geração de um gráfico de linha com pontos representando a receita mensal.
Execução:
Abra o script 2.Grafico_tendencia.R.
Substitua caminho_dataset pelo caminho completo do arquivo data_clean.csv.
Execute o script.
Um gráfico será exibido mostrando a tendência de vendas ao longo dos meses.


