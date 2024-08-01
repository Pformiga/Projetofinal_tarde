-- DDL (Data Definition Language)
-- Linguagem de Definição de Dados
-- CREATE
-- DROP
-- ALTER

-- DML (Data Manipulation Language)
-- Linguagem de Manipulação de Dados


-- DQL (Data Query Language)
-- Linguagem de Pesquisa de dados
    -- SELECT
    -- WHERE
    -- FROM
    -- > <   >= = AND
    


-- DCL (Data Control Language)
  -- Linguagem de controle de dados
  -- CRIAR USUÁRIOS
  -- Tarefas de ADMIN
  -- Grant
  -- Revoke
  
  
-- DTL (Data Transaction Language)
   -- Transacões 
   
   -- BEGIN TRAN (OU BEGIN TRANSACTION
   
   -- DDL: CREATE DATABASE (criar um banco de dados)
   CREATE DATABASE schooltracker;
   -- Selecionar o banco de dados desejado
   USE schooltracker;
   -- Mostrar tabelas
   SHOW tables;
   
   CREATE TABLE Aluno (
    Id Int PRIMARY KEY auto_increment,
    rg Char(8) NOT NULL
);
-- Alterar tabela adicionando a constraint UNIQUE no rg.
ALTER TABLE aluno ADD CONSTRAINT constraint_name UNIQUE(rg);
DESCRIBE aluno;
-- Pesquisa todos os campos (*) da tabela aluno
select * from aluno;
-- DELETE registros da tabela aluno quando id = 4
DELETE FROM aluno WHERE id = 4;
-- Mostra toda a estrutura da tabela
DESCRIBE aluno;
-- INSERT
insert into aluno(rg)values('00034548');
insert into aluno(rg)values('00034549');
insert into aluno(rg)values('00034550');
insert into aluno(rg)values('00034551');
insert into aluno(rg)values('00034552');
insert into aluno(rg)values('00034553');
insert into aluno(rg)values('00034554');
insert into aluno(rg)values('00034555');
insert into aluno(rg)values('00034556');
insert into aluno(rg)values('00034557');
insert into aluno(rg)values('00034558');
insert into aluno(rg)values('00034559');
insert into aluno(rg)values('00034560');
insert into aluno(rg)values('00034561');
insert into aluno(rg)values('00034562');
insert into aluno(rg)values('00034563');
insert into aluno(rg)values('00034564');
insert into aluno(rg)values('00034565');
insert into aluno(rg)values('00034566');
insert into aluno(rg)values('00034567');
insert into aluno(rg)values('00034568');
insert into aluno(rg)values('00034569');
insert into aluno(rg)values('00034570');
insert into aluno(rg)values('00034571');
insert into aluno(rg)values('00034572');
insert into aluno(rg)values('00034573');
insert into aluno(rg)values('00034574');
insert into aluno(rg)values('00034575');
insert into aluno(rg)values('00034576');
insert into aluno(rg)values('00034577');
insert into aluno(rg)values('00034578');
insert into aluno(rg)values('00034579');
insert into aluno(rg)values('00034580');
insert into aluno(rg)values('00034581');
insert into aluno(rg)values('00034582');
insert into aluno(rg)values('00034583');
insert into aluno(rg)values('00034584');
insert into aluno(rg)values('00034585');
insert into aluno(rg)values('00034586');
insert into aluno(rg)values('00034587');
insert into aluno(rg)values('00034588');
insert into aluno(rg)values('00034589');
insert into aluno(rg)values('00034590');
insert into aluno(rg)values('00034591');
insert into aluno(rg)values('00034592');
insert into aluno(rg)values('00034593');
insert into aluno(rg)values('00034594');
insert into aluno(rg)values('00034595');
insert into aluno(rg)values('00034596');
insert into aluno(rg)values('00034597');
insert into aluno(rg)values('00034598');
insert into aluno(rg)values('00034599');
select * from aluno;

CREATE TABLE Diariobordo (
    Id Int PRIMARY KEY auto_increment,
    texto text NOT NULL,
    datahora datetime NOT NULL,
    fk_Aluno_Id Int NOT NULL
    
 );
 show tables;
 

 
 select
    d.id,
    d.texto,
    d.datahora,
    a.rs as registro_academico
FROM
    diariobordo as d
join
    aluno AS a
ON
   d.fk_aluno_id = a.id;
-- Exercício - Agora você deve inserir o diário de bordo da aula de hoje.alter.alter. 
-- Qual o seu RA? Insira o seu RA no sistema e posteriormente crie 
-- O seu diário de bordo. 
-- Por último, faça um SELECT. 
-- Envie esse script para um novo repositório do github
-- Com o nome de projetofinal_tarde. 
-- Instrutor,romulo@gmail.com 

select * from
    diariobordo
    join
    aluno
    on diariobordo.fk_aluno_id = aluno.id; 
    
    -- Exercício 
    -- Modelo Conceitual - crie uma nova entidade chamada avaliação. 
    -- Modelo Lógico 
    -- Modelo Físico (brModelo)
    -- INSERTs de 5 alunos com as notas
    -- SELECT * FROM avaliação;
    -- SELECT JOIN : tabela aluno com tabela avaliação.
    
    CREATE TABLE Aluno (
    ID INT PRIMARY KEY,
    Nome VARCHAR(100)
);

CREATE TABLE Avaliação (
    ID INT PRIMARY KEY,
    ID_Aluno INT,
    Disciplina VARCHAR(100),
    Nota int(25),
    FOREIGN KEY (ID_Aluno) REFERENCES Aluno(ID)
);
-- Inserindo alunos
INSERT INTO Aluno (ID, Nome) VALUES (1, 'Maria Silva');
INSERT INTO Aluno (ID, Nome) VALUES (2, 'João Santos');
INSERT INTO Aluno (ID, Nome) VALUES (3, 'Ana Costa');
INSERT INTO Aluno (ID, Nome) VALUES (4, 'Carlos Souza');
INSERT INTO Aluno (ID, Nome) VALUES (5, 'Luisa Fernandes');

-- Inserindo avaliações
INSERT INTO Avaliação (ID, ID_Aluno, Disciplina, Nota) VALUES (1, 1, 'Matemática', 19);
INSERT INTO Avaliação (ID, ID_Aluno, Disciplina, Nota) VALUES (2, 2, 'Português', 20);
INSERT INTO Avaliação (ID, ID_Aluno, Disciplina, Nota) VALUES (3, 3, 'História', 15);
INSERT INTO Avaliação (ID, ID_Aluno, Disciplina, Nota) VALUES (4, 4, 'Ciências', 18);
INSERT INTO Avaliação (ID, ID_Aluno, Disciplina, Nota) VALUES (5, 5, 'Geografia', 25);

SELECT * FROM Avaliação;

SELECT Aluno.Nome, Avaliação.Disciplina, Avaliação.Nota
FROM Aluno
JOIN Avaliação ON Aluno.ID = Avaliação.ID_Aluno;




    