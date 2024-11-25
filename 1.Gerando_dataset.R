library(dplyr)
library(readr)

# gerando uma seed para garantir a geração de numeros pseudoaleatorios consistentes sempre que executado
set.seed(123) 

# criando dataframe somente com os produtos e suas respecitivas categorias
##esse data frame foi criado para garantir que cada produto esteja dentro da categoria correta, mais a frente ficara mais claro
produtos_categorias <- data.frame(
  Produto = c("Civic", "Onix", "Cruze", "Golf", "Polo", "Gol"),
  Categoria = c("Honda", "Chevrolet", "Chevrolet", "Volkswagen", "Volkswagen", "Volkswagen")
)

# gerando o dataset de vendas(ainda sem as categorias), utilizei comando 'sample' para a randomização da distribuicao dos dados
dataset <- data.frame(
  ID = 1:50,
  Data = sample(seq.Date(from = as.Date("2023-01-01"), 
                         to = as.Date("2023-12-31"), 
                         by = "day"), 50, replace = TRUE),
  Produto = sample(produtos_categorias$Produto, 50, replace = TRUE),
  Quantidade = sample(1:20, 50, replace = TRUE),
  Preco = round(runif(50, 5, 100), 2)
)

# incluindo as categorias no dataset utilizando o 'left_join'(que combina dois dataframes com base em uma coluna em comum) para fazer asssociação das categorias a seus respectivos produtos
dataset <- dataset %>%
  left_join(produtos_categorias, by = "Produto")
# o trecho acima garante que, por exemplo, um civic não seja listado como sendo da chevrolet, ou um onix da Honda e etc...



###Abaixo inclui a tratativa de valores duplicados e valores vazios, caso haja
# remover duplicidades 
dataset <- unique(dataset)

# substituir valores vazios por NA
dataset[dataset == ""] <- NA

# remover linhas com valores ausentes (NAs)
dataset <- na.omit(dataset)

# salvando o arquivo no formato csv, no lugar de 'caminho_pasta' insira o caminho da pasta que deseja salvar o arquivo
write.csv(dataset, file = paste0("caminho_pasta", "\\data_clean.csv"), row.names = FALSE)


# gerando dataframe contendo o total de vendas por produtos
total_vendas <- dataset %>%
  group_by(Produto) %>% #agrupando pelo produto
  summarise(total = sum(Quantidade * Preco)) #resultado referente a soma*quantidade 

# printando o total de vendas por produto para visualização
print(total_vendas)

# Obtendo o índice do maior valor na coluna 'total' do dataframe total_vendas
indice_maior_valor <- which.max(total_vendas$total)

# selecionando o produto com o maior numero de vendas totais através do seu indice
produto_mais_vendido <- total_vendas[indice_maior_valor, 1]

# exibindo o produto mais vendido
print(paste("O produto mais vendido foi o", produto_mais_vendido[[1]]))





