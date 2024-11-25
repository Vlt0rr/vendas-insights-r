library(readxl)
library(lubridate)
library(ggplot2)

# substitua abaixo pelo caminho do dataset
caminho_dataset <- "C:\\coloque\\o\\caminho\\da\\pasta\\aqui\\nesse\\formato"
dataset_limpo <- read_csv(caminho_dataset)

# garantindo que as datas realmente estão no formato correto
dataset_limpo$Data <- as.Date(dataset_limpo$Data)

# incluindo coluna referente a receita/total de vendas
dataset_limpo$Receita <- dataset_limpo$Quantidade * dataset_limpo$Preco


# criando uma coluna AnoMes(que transforma as datas para o inicio de cada mes, pois assim é possivel agrupar as datas) e calculando a receita total por mês
vendas_mensais <- dataset_limpo %>%
  mutate(AnoMes = floor_date(Data, unit = "month")) %>% #adicionando a coluna AnoMEs que indica o mes e ano de cada data
  group_by(AnoMes) %>% #agrupando pela coluna AnoMes criada
  summarise(Receita = sum(Receita, na.rm = TRUE)) #calcula a soma da receira para cada grupo de datas agrupadas

# criando o grafico
ggplot(vendas_mensais, aes(x = AnoMes, y = Receita)) + #iniciando o gráfico, informando da onde vem os dados e definindo a composicao dos eixos
  geom_line() + #adicionando linha ao grafico
  geom_point() + #adicionando pontos
  labs(                                
    title = "Tendência de Vendas",
    x = "Mês",
    y = "Receita"
  )   #definindo os rótulos
