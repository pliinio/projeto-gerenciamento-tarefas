CREATE TABLE Usuario (
    Nome VARCHAR(50) NOT NULL UNIQUE PRIMARY KEY,
    Email VARCHAR(50) NOT NULL UNIQUE
);

CREATE TABLE Categoria (
    Nome_Categoria VARCHAR(50) PRIMARY KEY
);

CREATE TABLE Prioridade (
    Nivel_Prioridade INT PRIMARY KEY CHECK (Nivel_Prioridade IN (1, 2, 3, 4, 5))
);

CREATE TABLE Tarefa (
    ID_Tarefa INT AUTO_INCREMENT PRIMARY KEY,
    Titulo VARCHAR(100) NOT NULL,
    Descricao TEXT,
    Data_Criacao DATE NOT NULL,
    Data_Conclusao DATE,
    Status VARCHAR(50) NOT NULL CHECK (Status IN ('Pendente', 'Em andamento', 'Concluída')),
    Nome_Usuario VARCHAR(50),
    Nome_Categoria VARCHAR(50),
    Nivel_Prioridade INT,
    FOREIGN KEY (Nome_Usuario) REFERENCES Usuario(Nome) ON DELETE CASCADE,
    FOREIGN KEY (Nome_Categoria) REFERENCES Categoria(Nome_Categoria) ON DELETE SET NULL,
    FOREIGN KEY (Nivel_Prioridade) REFERENCES Prioridade(Nivel_Prioridade) ON DELETE SET NULL
);

CREATE TABLE Comentario (
    ID_Comentario INT AUTO_INCREMENT PRIMARY KEY,
    Conteudo TEXT NOT NULL,
    Data_Comentario DATE NOT NULL,
    ID_Tarefa INT,
    Nome_Usuario VARCHAR(50),
    FOREIGN KEY (ID_Tarefa) REFERENCES Tarefa(ID_Tarefa) ON DELETE CASCADE,
    FOREIGN KEY (Nome_Usuario) REFERENCES Usuario(Nome) ON DELETE CASCADE
);
