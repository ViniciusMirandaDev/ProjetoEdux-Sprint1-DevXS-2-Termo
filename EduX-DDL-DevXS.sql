CREATE DATABASE EduX;

USE EduX; 

CREATE TABLE Usuario(
	IdUsuario INT PRIMARY KEY IDENTITY NOT NULL,
	Nome VARCHAR (100) NOT NULL,
	Email VARCHAR (100) NOT NULL,
	Senha VARCHAR (150) NOT NULL,
	DataNascimento DATETIME NOT NULL,
	Telefone VARCHAR (20)
);

CREATE TABLE Categoria(
	IdCategoria INT PRIMARY KEY IDENTITY NOT NULL,
	TipoCategoria VARCHAR (15)

);

CREATE TABLE Dica (
	IdDica INT PRIMARY KEY IDENTITY NOT NULL,
	Descricao VARCHAR (255),
	DataDica DATETIME,

	--FK
	IdUsuario INT FOREIGN KEY REFERENCES Usuario (IdUsuario)
);

CREATE TABLE TipoUsuario(
	IdTipoUsuario INT PRIMARY KEY IDENTITY NOT NULL,
	Permissao VARCHAR (10),
	
	--FK
	IdUsuario INT FOREIGN KEY REFERENCES Usuario (IdUsuario)
);

CREATE TABLE Instituicao(
	IdInstituicao INT PRIMARY KEY IDENTITY NOT NULL,
	Descricao VARCHAR (80),
	Nome VARCHAR (80),
	Logradouro VARCHAR (100),
	CEP VARCHAR (10),
	UF CHAR (2),
	Cidade VARCHAR (80),

	--FK
	IdUsuario INT FOREIGN KEY REFERENCES Usuario (IdUsuario)
);

CREATE TABLE Post(
	IdPost INT PRIMARY KEY IDENTITY NOT NULL,
	Curtidas INT DEFAULT 0 NULL,
	Descricao VARCHAR (255),
	DataPost DATETIME,

	--FK
	IdUsuario INT FOREIGN KEY REFERENCES Usuario (IdUsuario)
);

CREATE TABLE Objetivo(
	IdObjetivo INT PRIMARY KEY IDENTITY NOT NULL,
	Descricao VARCHAR (100),
	DataInicio DATETIME,
	DataEntrega DATETIME,

	--FK
	IdCategoria INT FOREIGN KEY REFERENCES Categoria (IdCategoria)
);

CREATE TABLE ProfessorTurma(
	IdProfessorTurma INT PRIMARY KEY IDENTITY NOT NULL,
	Descricao VARCHAR(255),
	RegistroTrabalho VARCHAR (20),
	CargaHoraria VARCHAR(2),

	--FK
	IdUsuario INT FOREIGN KEY REFERENCES Usuario (IdUsuario)
);

CREATE TABLE AlunoTurma(
	IdAlunoTurma INT PRIMARY KEY IDENTITY NOT NULL,
	RA VARCHAR (15),
	RM VARCHAR (10),

	--FK
	IdUsuario INT FOREIGN KEY REFERENCES Usuario (IdUsuario)
);

CREATE TABLE ObjetivoAluno(
	IdObjetivoAluno INT PRIMARY KEY IDENTITY NOT NULL,
	DataEntrega DATETIME,
	Nota FLOAT DEFAULT 0 NULL,

	--FK
	IdAlunoTurma INT FOREIGN KEY REFERENCES AlunoTurma (IdAlunoTurma),
	IdObjetivo INT FOREIGN KEY REFERENCES Objetivo (IdObjetivo)
);

CREATE TABLE Curso(
	IdCurso INT PRIMARY KEY IDENTITY NOT NULL,
	Descricao VARCHAR (255)
);




CREATE TABLE Turma(
	IdTurma INT PRIMARY KEY IDENTITY NOT NULL,
	Descricao VARCHAR(100),

	--FK
	IdCurso INT FOREIGN KEY REFERENCES Curso (IdCurso),
	IdAlunoTurma INT FOREIGN KEY REFERENCES AlunoTurma (IdAlunoTurma),
	IdProfessorTurma INT FOREIGN KEY REFERENCES ProfessorTurma (IdProfessorTurma)
);

ALTER TABLE ProfessorTurma ADD IdTurma INT FOREIGN KEY REFERENCES Turma (IdTurma);
ALTER TABLE AlunoTurma ADD IdTurma INT FOREIGN KEY REFERENCES Turma (IdTurma);
ALTER TABLE Curso ADD IdTurma INT FOREIGN KEY REFERENCES Turma (IdTurma);


