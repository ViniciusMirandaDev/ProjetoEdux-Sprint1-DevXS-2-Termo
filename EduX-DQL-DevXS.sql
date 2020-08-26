USE EduX;



--Soma todas as curtidas de um Post
SELECT SUM(Curtidas) AS Curtidas 
FROM Post
WHERE IdUsuario=1;

--Soma todas as notas de um aluno
SELECT SUM(Nota) AS Nota
FROM ObjetivoAluno
WHERE IdAlunoTurma=1;

--Usando o Left Join, seleciona a descrição do objetivo,  a data e a nota conquistada com o ID do aluno.
SELECT 
		Objetivo.Descricao,
		Objetivo.DataEntrega,
		ObjetivoAluno.Nota
		

FROM ObjetivoAluno

		LEFT JOIN Objetivo ON ObjetivoAluno.IdObjetivo = Objetivo.IdObjetivo

WHERE	IdAlunoTurma = 1;
	
--Usando o Full Outer Join, seleciona as Dicas postadas por um usuário por seu ID de usuário
SELECT
		Usuario.Nome,
		Dica.Descricao

FROM Dica
		FULL OUTER JOIN Usuario ON Dica.IdUsuario = Usuario.IdUsuario

WHERE Usuario.IdUsuario = 2;

--Usando o Right join, mostra a descrição objetivo e seu tipo de categoria de acordo com o ID da Categoria
SELECT
		Categoria.TipoCategoria,
		Objetivo.Descricao

FROM Objetivo
		RIGHT JOIN Categoria ON Objetivo.IdCategoria = Categoria.IdCategoria
		
WHERE Categoria.IdCategoria < 4

--Seleciona o IDs do curso, professor e do aluno por meio do ID da turma
SELECT 
		Turma.IdCurso,	
		Turma.IdProfessorTurma,
		Turma.IdAlunoTurma

FROM Turma

WHERE IdTurma = 1;
		

--Seleciona tudo da tabela em específico
SELECT * FROM AlunoTurma;
SELECT * FROM Categoria;
SELECT * FROM Curso;
SELECT * FROM Dica;
SELECT * FROM Instituicao;
SELECT * FROM Objetivo;
SELECT * FROM ObjetivoAluno;
SELECT * FROM Post;
SELECT * FROM ProfessorTurma;
SELECT * FROM TipoUsuario;
SELECT * FROM Turma;
SELECT * FROM Usuario;
		

