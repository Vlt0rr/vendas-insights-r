
# 📊 Simulador de Vendas e Análise de Receita com R

Este projeto é um pipeline completo em R para **geração, tratamento, análise e visualização de dados de vendas**. Ele simula um cenário real de vendas entre diferentes produtos e marcas automotivas, prepara os dados, identifica o produto mais vendido e gera gráficos com análise temporal das receitas.

---

## 🚀 Visão Geral

Este projeto está dividido em dois scripts principais:

1. **Gerador e Limpador de Dados (`script_1.R`)**  
   - Gera um dataset fictício de vendas com base em categorias e produtos
   - Garante a consistência entre produtos e suas marcas
   - Remove duplicatas e valores ausentes
   - Salva o dataset limpo em `.csv`
   - Identifica o produto com maior receita acumulada

2. **Analisador e Visualizador de Vendas (`script_2.R`)**  
   - Carrega o dataset limpo
   - Calcula a receita total de cada venda
   - Agrupa os dados por mês
   - Gera um gráfico de tendência de receita com `ggplot2`

---

## 📂 Estrutura do Projeto

```
📦 projeto/
│
├── script_1.R               # Criação e limpeza de dados
├── script_2.R               # Análise e visualização
├── data_clean.csv           # Arquivo gerado com dados prontos para análise
```

---

## 📊 Exemplo de Gráfico Gerado

O gráfico mostra a tendência da **receita total ao longo do tempo**, útil para observar sazonalidades e crescimento:

- Eixo X: Mês/Ano
- Eixo Y: Receita total
- Pontos e linhas representam a performance mensal

---

## 🧠 Tecnologias e Pacotes Utilizados

- `dplyr` – Manipulação de dados
- `readr` – Leitura e escrita de arquivos
- `ggplot2` – Visualização de dados
- `lubridate` – Manipulação de datas
- `readxl` – Caso deseje adaptar para arquivos Excel (.xlsx)

---

## ▶️ Como Executar

1. **Execute o `script_1.R`**
   - Ele criará automaticamente um arquivo chamado `data_clean.csv`
   - Altere a variável `caminho_pasta` para o local desejado no seu computador

2. **Edite o caminho no `script_2.R`**
   - Substitua `"C:\coloque\o\caminho\da\pasta\aqui\nesse\formato"` pelo caminho onde salvou o `data_clean.csv`

3. **Execute o `script_2.R`**
   - Um gráfico com a receita total por mês será exibido

---

## 💼 Aplicações e Utilidade

- Treinamento em manipulação e limpeza de dados
- Simulação de dashboards de vendas
- Criação de gráficos com tendências reais de receita
- Projeto ideal para incluir em portfólios voltados a análise de dados com R

---

## 👨‍💻 Autor

Desenvolvido por **Vitor Alves**  
📧 vitoralves20112011@gmail.com  
💼 https://linkedin.com/in/vit0ralves

---

## 🔖 Sugestão de Título do Projeto

> **Análise de Vendas Simulada com R: Da Geração ao Gráfico Final**

Ou, se preferir um nome mais técnico:

> **Simulação e Análise Temporal de Receita com R**

Você pode escolher o título que melhor se encaixa ao seu portfólio ou objetivo de apresentação.

Se quiser, posso gerar o `README.md` em arquivo agora.
