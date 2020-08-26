--DML

USE EduX;

INSERT INTO Usuario (Nome,Email,Senha,DataNascimento,Telefone) 
	
			VALUES
			('Vinícius','vinicius.miranda724@gmail.com','dev132','2004-06-24T10:00:00','40028922'),
			('Paulo','paulo.brandao724@gmail.com','dev132','1994-02-16T09:00:00','93150482');

Select * from TipoUsuario;	

INSERT INTO TipoUsuario (Permissao,IdUsuario)

			VALUES 
			('Professor',2),
			('Aluno',1);

INSERT INTO Dica (IdUsuario,Descricao,DataDica)
			
			VALUES
			(2,'LOREM IPSUM DICA','2004-06-24T10:00:00'),
			(2,'LOREM IPSUM DICA2','2005-02-14T10:00:00');

INSERT INTO Instituicao (IdUsuario,Descricao,Nome,Logradouro,CEP,UF,Cidade)
			
			VALUES
			(1,'Lorem ipsum dolor sit amet','SENAI Santa Cecilia',' Alameda Barão de Limeira, 539 - Santa Cecilia','01202-001','SP','São Paulo');

INSERT INTO Post (IdUsuario,Curtidas,Descricao,DataPost)
			
			VALUES
			(1,400,'Lorem ipsum dolor sit amet','2004-06-24T10:00:00'),
			(1,100,'Lorem ipsum dolor sit amet','2020-06-24T10:00:00'),
			(2,200,'Lorem ipsum dolor sit amet','2020-03-24T10:00:00');

INSERT INTO ProfessorTurma (IdUsuario,Descricao,RegistroTrabalho,CargaHoraria)
			
			VALUES
			(2,'Lorem ipsum dolor sit amet Lorem ipsum dolor sit amet','255-22','10');


INSERT INTO Turma (Descricao)
			
			VALUES
			('Lorem ipsum dolor sit amet');

UPDATE ProfessorTurma
	SET IdTurma=1
	WHERE IdProfessorTurma=1;


INSERT INTO Curso (IdTurma,Descricao)
			
			VALUES
			(1,'Lorem ipsum');

INSERT INTO AlunoTurma (IdUsuario,IdTurma,RA,RM)
			
			VALUES
			(1,1,'25555','254658');

INSERT INTO ObjetivoAluno (IdAlunoTurma,DataEntrega,Nota)
			
			VALUES
			(1,'2020-06-24T10:00:00',9.2);

INSERT INTO Categoria (TipoCategoria)
	VALUES
	('Critico'),
	('Desejável'),
	('Oculto');
	
INSERT INTO Objetivo (IdCategoria,Descricao,DataEntrega,DataInicio)	
			
			VALUES
			(1,'Lorem ipsum','2020-06-24T10:00:00','2020-06-24T10:00:00'),
			(2,'Lorem ipsum','2020-06-24T10:00:00','2020-06-24T10:00:00'),
			(3,'Lorem ipsum','2020-06-24T10:00:00','2020-06-24T10:00:00');

UPDATE Turma
	SET IdAlunoTurma=1
	WHERE IdTurma=1;

UPDATE Turma
	SET IdCurso=1
	WHERE IdTurma=1;

UPDATE Turma
	SET IdProfessorTurma=1
	WHERE IdTurma=1;

UPDATE ObjetivoAluno
	SET IdObjetivo=1
	WHERE IdObjetivoAluno=1;

INSERT INTO ObjetivoAluno (IdAlunoTurma,DataEntrega,Nota,IdObjetivo)
			
			VALUES
			(1,'2020-06-24T10:00:00',8,2),
			(1,'2020-06-24T10:00:00',5.73,3);


