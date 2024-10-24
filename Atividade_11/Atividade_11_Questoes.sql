INSERT INTO Comanda (comanda_data, comanda_nr_mesa, comanda_nome_cliente) 
VALUES
('2024-01-01', 1, 'João Silva'),
('2024-01-02', 2, 'Maria Oliveira'),
('2024-01-03', 3, 'Pedro Santos'),
('2024-01-04', 4, 'Ana Costa'),
('2024-01-05', 5, 'Carlos Pereira'),
('2024-01-06', 6, 'Fernanda Lima'),
('2024-01-07', 7, 'Roberto Souza'),
('2024-01-08', 8, 'Juliana Alves'),
('2024-01-09', 9, 'Bruno Rocha'),
('2024-01-10', 10, 'Patrícia Menezes');

INSERT INTO Cardapio (cardapio_cafe_nome, cardapio_descricao, cardapio_preco_unitario) 
VALUES
('Café Espresso', 'Café forte e concentrado', 4.50),
('Cappuccino', 'Café com leite vaporizado e espuma de leite', 5.00),
('Latte', 'Café com bastante leite vaporizado', 5.50),
('Mocha', 'Café com chocolate e leite vaporizado', 6.00),
('Café Americano', 'Café diluído com água quente', 4.00),
('Macchiato', 'Café com uma pequena quantidade de leite vaporizado', 4.75),
('Affogato', 'Café com uma bola de sorvete', 6.50),
('Café Gelado', NULL, 5.25),
('Café com Creme', 'Café com uma camada de chantilly', 5.75),
('Café Turco', 'Café bem forte e não filtrado', 5.00);

INSERT INTO Item_comanda (item_quantidade, Comanda_comanda_id, Cardapio_cardapio_id) 
VALUES
(2, 1, 1),
(1, 2, 2),
(3, 3, 3),
(1, 4, 4),
(4, 5, 5),
(2, 6, 6),
(1, 7, 7),
(3, 8, 8),
(2, 9, 9),
(1, 10, 10);


-- 1. Faça uma listagem do cardápio ordenada por nome;
SELECT * FROM Cardapio ORDER BY cardapio_cafe_nome;

-- 2.  Apresente todas as comandas (código, data, mesa e nome do cliente) e os itens da comanda (código comanda, nome do café, descricão, quantidade, preço unitário e preço total do café) destas ordenados data e código da comanda e, também o nome do café;
SELECT c.comanda_id, c.comanda_data, c.comanda_nr_mesa, c.comanda_nome_cliente, 
       i.item_id, cd.cardapio_cafe_nome, cd.cardapio_descricao, 
       i.item_quantidade, cd.cardapio_preco_unitario, 
       (i.item_quantidade * cd.cardapio_preco_unitario) AS preco_total
FROM Comanda c
JOIN Item_comanda i ON c.comanda_id = i.Comanda_comanda_id
JOIN Cardapio cd ON i.Cardapio_cardapio_id = cd.cardapio_id
ORDER BY c.comanda_data, c.comanda_id, cd.cardapio_cafe_nome;

-- 3. Liste todas as comandas (código, data, mesa e nome do cliente) mais uma coluna com o valor total da comanda. Ordene por data esta listagem;
SELECT c.comanda_id, c.comanda_data, c.comanda_nr_mesa, c.comanda_nome_cliente, 
       SUM(i.item_quantidade * cd.cardapio_preco_unitario) AS valor_total
FROM Comanda c
JOIN Item_comanda i ON c.comanda_id = i.Comanda_comanda_id
JOIN Cardapio cd ON i.Cardapio_cardapio_id = cd.cardapio_id
GROUP BY c.comanda_id, c.comanda_data, c.comanda_nr_mesa, c.comanda_nome_cliente
ORDER BY c.comanda_data;

-- 4. Faça a mesma listagem das comandas da questão anterior (3), mas traga apenas as comandas que possuem mais do que um tipo de café na comanda;
SELECT c.comanda_id, c.comanda_data, c.comanda_nr_mesa, c.comanda_nome_cliente, 
       SUM(i.item_quantidade * cd.cardapio_preco_unitario) AS valor_total
FROM Comanda c
JOIN Item_comanda i ON c.comanda_id = i.Comanda_comanda_id
JOIN Cardapio cd ON i.Cardapio_cardapio_id = cd.cardapio_id
GROUP BY c.comanda_id, c.comanda_data, c.comanda_nr_mesa, c.comanda_nome_cliente
HAVING COUNT(DISTINCT i.Cardapio_cardapio_id) > 1
ORDER BY c.comanda_data;

-- 5. Qual o total de faturamento por data? ordene por data esta consulta.
SELECT c.comanda_data, SUM(i.item_quantidade * cd.cardapio_preco_unitario) AS faturamento_total
FROM Comanda c
JOIN Item_comanda i ON c.comanda_id = i.Comanda_comanda_id
JOIN Cardapio cd ON i.Cardapio_cardapio_id = cd.cardapio_id
GROUP BY c.comanda_data
ORDER BY c.comanda_data;