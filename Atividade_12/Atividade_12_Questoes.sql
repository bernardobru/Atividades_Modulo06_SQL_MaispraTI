-- 1. Listar os dados dos alunos
SELECT * FROM Aluno;

-- 2. Listar os dados dos alunos e as turmas que eles estão matriculados
SELECT a.aluno_nome, t.turma_id, t.curso
FROM Aluno a
JOIN Matricula m ON a.aluno_id = m.Aluno_aluno_id
JOIN Turma t ON m.Turma_turma_id = t.turma_id;


-- 3. Listar os alunos que não possuem faltas
SELECT a.*, m.matricula_codigo
FROM Alunos a
JOIN Matriculas m ON a.aluno_id = m.Aluno_aluno_id
WHERE m.ausencias = 0;

-- 4. Listar os professores e a quantidade de turmas que cada um leciona
SELECT p.professor_nome, COUNT(t.turma_id) AS quantidade_turmas
FROM Professor p
JOIN Turma t ON p.professor_id = t.Professor_professor_id
GROUP BY p.professor_nome;

-- 5. Listar nome dos professores, um dos números de telefone, e os dados das turmas lecionadas com os alunos matriculados, ordenados
SELECT p.professor_nome, t.telefone_numero, t.turma_id, t.data_inicio, t.data_fim, t.horario, t.curso, a.aluno_nome AS aluno_nome
FROM Professor p
JOIN Telefone t ON p.professor_id = t.Professor_professor_id
JOIN Turmas t ON p.professor_id = t.Professor_professor_id
JOIN Matriculas m ON t.turma_id = m.Turma_turma_id
JOIN Alunos a ON m.Aluno_aluno_id = a.aluno_id
GROUP BY p.professor_nome, t.turma_id, a.aluno_nome
ORDER BY p.professor_nome, t.turma_id, a.aluno_nome;

-- 1. Alterar o nome de todos os professores para maiúsculo;
UPDATE Professor
SET professor_nome = UPPER(professor_nome);

-- 2. Colocar o nome de todos os alunos que estão na turma com o maior número de alunos em maiúsculo;
UPDATE Aluno
SET aluno_nome = UPPER(aluno_nome)
WHERE aluno_id IN (
    SELECT m.Aluno_aluno_id
    FROM Matricula m
    JOIN Turma t ON m.Turma_turma_id = t.turma_id
    WHERE t.qtd_alunos = (
        SELECT MAX(qtd_alunos)
        FROM Turma
    )
);

-- 3. Excluir as ausências dos alunos nas turmas que estes são monitores;
UPDATE Matricula
SET ausencias = NULL
WHERE aluno_id IN (
    SELECT Aluno_monitor_id
    FROM Turma
);
