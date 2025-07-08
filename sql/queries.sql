-- Consulta 1
SELECT Categoria.Nome_Categoria, COUNT(Tarefa.ID_Tarefa) AS Total_Concluidas
FROM Tarefa
JOIN Categoria ON Tarefa.Nome_Categoria = Categoria.Nome_Categoria
WHERE Tarefa.Status = 'Concluída'
GROUP BY Categoria.Nome_Categoria;

-- Consulta 2
SELECT Tarefa.Titulo, Usuario.Nome, Categoria.Nome_Categoria
FROM Tarefa
JOIN Usuario ON Tarefa.Nome_Usuario = Usuario.Nome
JOIN Categoria ON Tarefa.Nome_Categoria = Categoria.Nome_Categoria;

-- Consulta 3
SELECT Tarefa.Titulo, Comentario.Conteudo
FROM Tarefa
JOIN Comentario ON Tarefa.ID_Tarefa = Comentario.ID_Tarefa;
