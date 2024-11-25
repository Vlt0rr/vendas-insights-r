-- Consulta 1
SELECT 
    Produto, 
    Categoria, 
    SUM(Quantidade * Preco) AS Total_Vendas
FROM 
    data_clean
GROUP BY 
    Produto, Categoria
ORDER BY 
    Total_Vendas DESC;


-- Consulta 2
SELECT 
    Produto, 
    Categoria, 
    SUM(Quantidade * Preco) AS Total_Vendas_Junho
FROM 
    data_clean
WHERE 
    Data BETWEEN '2023-06-01' AND '2023-06-30'
              
GROUP BY 
    Produto, Categoria
ORDER BY 
    Total_Vendas_Junho ASC