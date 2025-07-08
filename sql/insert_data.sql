INSERT INTO Categoria VALUES 
('Administração'),('Desenvolvimento'),('Design'),('Marketing'),('Vendas');

INSERT INTO Usuario VALUES 
('Ana Costa','ana.costa@email.com'),
('Carlos Souza','carlos.souza@email.com'),
('João Silva','joao.silva@email.com'),
('Maria Oliveira','maria.oliveira@email.com'),
('Pedro Lima','pedro.lima@email.com');

INSERT INTO Prioridade VALUES (1),(2),(3),(4),(5);

INSERT INTO Tarefa (ID_Tarefa, Titulo, Descricao, Data_Criacao, Data_Conclusao, Status, Nome_Usuario, Nome_Categoria, Nivel_Prioridade) VALUES
(31,'Criar página inicial do site','Desenvolver o layout e implementar a página inicial do site.','2025-03-01',NULL,'Em andamento','João Silva','Desenvolvimento',1),
(32,'Atualizar banco de dados','Implementar nova tabela de transações no banco de dados.','2025-03-02',NULL,'Pendente','Maria Oliveira','Design',2),
(33,'Corrigir bug na aplicação','Resolver o erro de login reportado pelos usuários.','2025-03-01',NULL,'Em andamento','Carlos Souza','Desenvolvimento',1),
(34,'Campanha de marketing','Planejar e executar campanha de marketing digital.','2025-03-02',NULL,'Pendente','Ana Costa','Marketing',2),
(35,'Treinamento de vendas','Organizar treinamento para a equipe de vendas.','2025-03-03','2025-03-20','Concluída','Pedro Lima','Vendas',3);

INSERT INTO Comentario (ID_Comentario, Conteudo, Data_Comentario, ID_Tarefa, Nome_Usuario) VALUES
(47,'Tarefa está bem encaminhada, mas precisa de mais ajustes no design.','2025-03-02',32,'Maria Oliveira'),
(48,'O erro de login foi parcialmente corrigido, mas precisamos revisar mais uma vez.','2025-03-01',33,'João Silva');
