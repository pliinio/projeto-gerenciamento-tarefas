UPDATE Tarefa 
SET Status = 'Concluída' 
WHERE ID_Tarefa = 40;

UPDATE Tarefa 
SET Status = 'Concluída', Data_Conclusao = '2025-03-20' 
WHERE Nome_Categoria = 'Vendas';

UPDATE Tarefa 
SET Status = 'Em andamento' 
WHERE Nome_Usuario = 'João Silva' 
AND Nivel_Prioridade = (
    SELECT MIN(Nivel_Prioridade) FROM Tarefa WHERE Nome_Usuario = 'João Silva'
);

DELETE FROM Comentario WHERE ID_Comentario = 46;
DELETE FROM Comentario WHERE ID_Tarefa = 38;
DELETE FROM Tarefa WHERE ID_Tarefa = 38;
DELETE FROM Comentario WHERE ID_Tarefa = 45;
DELETE FROM Tarefa WHERE ID_Tarefa = 45;
