CREATE DATABASE escola;

USE escola;

CREATE TABLE professor (
id_professor INT not null PRIMARY KEY,
nome VARCHAR(100) not null,
especialidade VARCHAR (100),
salario DECIMAL (10,2),
uf CHAR(2)
);

CREATE TABLE disciplina(
id_diciplina INT AUTO_INCREMENT NOT NULL PRIMARY KEY,
nome VARCHAR(100) NOT NULL,
id_professor INT,
carga_horaria INT,
FOREIGN KEY (id_professor) REFERENCES professor(id_professor)
);

CREATE TABLE aluno(
id_aluno INT AUTO_INCREMENT NOT NULL PRIMARY KEY,
nome VARCHAR(100) NOT NULL,
sexo CHAR(1),
data_nascimento DATE,
nota_fiscal DECIMAL(4,2),
ativo BOOLEAN
);

CREATE TABLE curso(
id_curso INT AUTO_INCREMENT NOT NULL PRIMARY KEY,
nome VARCHAR (100)NOT NULL,
carga_horaria INT,
modalidade VARCHAR(50)
);

CREATE TABLE matricula(
id_matricula INT AUTO_INCREMENT NOT NULL PRIMARY KEY,
id_aluno INT,
id_curso INT,
data_matricula DATE,
FOREIGN KEY (id_aluno) REFERENCES aluno(id_aluno),
FOREIGN KEY (id_curso) REFERENCES curso(id_curso)
);

SHOW TABLES;
CREATE TABLE login(
id_login INT AUTO_INCREMENT NOT NULL PRIMARY KEY,
id_aluno INT,
data_hora DATETIME,
ip VARCHAR (40),
sucesso BOOLEAN,
FOREIGN KEY (id_aluno) REFERENCES aluno(id_aluno)
);


DROP TABLE aluno;
SHOW TABLES;

-- Insert dados professor
INSERT INTO professor(id_professor,nome,especialidade,salario,uf) VALUES
(1,'João da Silva','Banco de Dados',2500.00,'PR'),
(2,'Maria Luiza','Mobile', 2500.00,'SP'),
(3,'João De lima','Matematica',2500.00,'PR'),
(4,'Joana Souza', 'Portugues', 2300.00, 'SP'),
(5,'Aline Souza','Ingles', 2100.00, 'PR'),
(6,'Alice Oliveira','Historia', 2100.00, 'DF'),
(7,'Alisson','Quimica', 2100.00, 'SP'),
(8,'Maria Alice','Geografia', 2100.00, 'SP'),
(9,'Rafael Rodriges','Sociologia', 2100.00, 'SC'),
(10,'Caroline Vidal','Educação Financeira', 2100.00, 'SP');

-- Insert diciplinas
INSERT INTO diciplina(nome,id_professor,carga_horaria) VALUES
('Banco de Dados Iniciante',1, 60),
('Mobile GitHub',2, 60 ),
('Matematica função afim',3, 60 ),
('Portugues Poema',4, 60 ),
('Ingles Futuro com going to',5, 60 ),
('Historia Populismo na America Latina',6, 60 ),
('Quimica Classificação dos hidrocarbonetos',7, 60 ),
('Geografia Industrias',8, 60 ),
('Sociologia Movimentos Sociais ',9, 60 ),
('Educação financeira Consumo consciente',10, 60 );


-- Alunos
INSERT INTO aluno(nome,sexo,data_nascimento,nota_final,ativo) VALUES
('Mariele Floriano','F','2008-04-14',7.5, TRUE),
('Nicole Kozak','F','2007-04-12',10.0, TRUE),
('Natalia Schioff','F','2009-05-13',8.5, TRUE),
('Emanuelly Heerdt','F','2008-08-20',9.5, TRUE),
('João Victor','M','2009-09-30',8.8, TRUE),
('Victor Rodriges','M','2008-10-07',9.8, TRUE),
('Isabelly Silva','F','2009-08-09',10.0, TRUE),
('Gael Fernandes','M','2008-03-16',8.9, TRUE),
('Ravi Vidal','M','2008-06-19',9.9, TRUE),
('Théo Gomes','M','2007-11-03',9.0, TRUE);
