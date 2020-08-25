--DML

USE EduX;



INSERT INTO Usuario (Nome,Email,Senha,DataNascimento,Telefone) 
	
			VALUES
			('Vinícius','vinicius.miranda724@gmail.com','dev132','2004-06-24T10:00:00','40028922'),
			('Paulo','paulo.brandao724@gmail.com','dev132','1994-02-16T09:00:00','93150482');

	
INSERT INTO TipoUsuario (Permissao,IdUsuario)

			VALUES 
			('Professor',3),
			('Aluno',2);

INSERT INTO Dica (IdUsuario,Descricao,DataDica)
			
			VALUES
			(3,'LOREM IPSUM DICA','2004-06-24T10:00:00'),
			(3,'LOREM IPSUM DICA2','2005-02-14T10:00:00');


INSERT INTO Instituicao (IdUsuario,Descricao,Nome,Logradouro,CEP,UF,Cidade)
			
			VALUES
			(2,'Lorem ipsum dolor sit amet','SENAI Santa Cecilia',' Alameda Barão de Limeira, 539 - Santa Cecilia','01202-001','SP','São Paulo');


INSERT INTO Post (IdUsuario,Curtidas,Descricao,DataPost)
			
			VALUES
			(2,20,'Lorem ipsum dolor sit amet','2004-06-24T10:00:00');


SELECT * FROM Usuario;



INSERT INTO ProfessorTurma (IdUsuario,Descricao,RegistroTrabalho,CargaHoraria)
			
			VALUES
			(3,'Lorem ipsum dolor sit amet Lorem ipsum dolor sit amet','255-22','10');



UPDATE Turma
	SET IdCurso=1
	WHERE IdTurma=1;

INSERT INTO Turma (Descricao)
			
			VALUES
			('Lorem ipsum dolor sit amet');

INSERT INTO Curso (IdTurma,Descricao)
			
			VALUES
			(1,'Lorem ipsum');

INSERT INTO AlunoTurma (IdUsuario,IdTurma,RA,RM)
			
			VALUES
			(2,1,'25555','254658');

INSERT INTO ObjetivoAluno (IdAlunoTurma,DataEntrega,Nota)
			
			VALUES
			(1,'2020-06-24T10:00:00',9.2);


INSERT INTO Categoria (TipoCategoria)
	VALUES
	('Critico');


INSERT INTO Objetivo (IdCategoria,Descricao,DataEntrega,DataInicio)	
			
			VALUES
			(1,'Lorem ipsum','2020-06-24T10:00:00','2020-06-24T10:00:00');


UPDATE Turma
	SET IdAlunoTurma=1
	WHERE IdTurma=1;


SELECT * FROM Usuario;





