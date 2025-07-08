# 📊 Projeto de Banco de Dados - Gerenciamento de Tarefas

Este projeto foi desenvolvido como parte da disciplina de Banco de Dados no Instituto Federal da Paraíba. Seu objetivo é simular um sistema de gerenciamento de tarefas internas, permitindo cadastro de usuários, categorização de tarefas, definição de prioridades, comentários e acompanhamento de status.

## 📁 Estrutura do Projeto

- **docs/Projeto_BD.pdf**: Documento acadêmico com todos os detalhes do projeto.
- **sql/create_tables.sql**: Script com a criação das tabelas do banco.
- **sql/insert_data.sql**: Script com os dados populando as tabelas.
- **sql/update_delete.sql**: Exemplos de atualizações e deleções.
- **sql/queries.sql**: Conjunto de 15 queries para análise de dados.

## 🧠 Conceitos Aplicados

- Modelo Entidade-Relacionamento
- Modelo Relacional (Lógico)
- Projeto Físico com MariaDB
- Integridade Referencial e Constraints
- Operações CRUD (Create, Read, Update, Delete)
- Consultas SQL com `JOIN`, `GROUP BY`, `HAVING`, `SUBQUERIES`

## 🧩 Entidades e Relacionamentos

- **Usuário** (Nome, Email)
- **Categoria** (Nome_Categoria)
- **Prioridade** (1 a 5)
- **Tarefa** (Título, Descrição, Datas, Status, FK para Usuário, Categoria e Prioridade)
- **Comentário** (Conteúdo, Data, FK para Tarefa e Usuário)

## 💻 Tecnologias

- SGBD: MariaDB 10.4
- Script SQL compatível com MySQL/MariaDB
- Dump realizado com MariaDB `mysqldump`

### 🚀 Como executar

1. Instale o MariaDB em sua máquina
2. Crie o banco de dados:

```sql
CREATE DATABASE projeto_db;
USE projeto_db;
```

3. Execute os scripts em `/sql` na seguinte ordem:
   - `create_tables.sql`
   - `insert_data.sql`
   - `update_delete.sql`
   - `queries.sql` (opcional, para testes)
