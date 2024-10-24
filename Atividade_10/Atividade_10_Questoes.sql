INSERT INTO Turmas (turma_nome, turma_sala, turma_horario) VALUES
('Informática', 'Sala 101', '08:00:00'),
('Administração', 'Sala 102', '09:00:00'),
('Engenharia', 'Sala 103', '10:00:00'),
('Medicina', 'Sala 104', '11:00:00'),
('Direito', 'Sala 105', '12:00:00'),
('Arquitetura', 'Sala 106', '13:00:00'),
('Economia', 'Sala 107', '14:00:00'),
('Psicologia', 'Sala 108', '15:00:00'),
('Letras', 'Sala 109', '16:00:00'),
('Agronomia', 'Sala 110', '17:00:00'),
('Biologia', 'Sala 101', '18:00:00'),
('Química', 'Sala 102', '19:00:00'),
('Física', 'Sala 103', '20:00:00'),
('História', 'Sala 104', '21:00:00'),
('Geografia', 'Sala 105', '22:00:00'),
('Matemática', 'Sala 106', '23:00:00'),
('Filosofia', 'Sala 107', '00:00:00'),
('Educação Física', 'Sala 108', '01:00:00'),
('Enfermagem', 'Sala 109', '02:00:00'),
('Fisioterapia', 'Sala 110', '03:00:00'),
('Nutrição', 'Sala 101', '04:00:00'),
('Farmácia', 'Sala 102', '05:00:00'),
('Veterinária', 'Sala 103', '06:00:00'),
('Jornalismo', 'Sala 104', '07:00:00'),
('Publicidade', 'Sala 105', '08:30:00'),
('Relações Internacionais', 'Sala 106', '09:30:00'),
('Ciência da Computação', 'Sala 107', '10:30:00'),
('Administração Pública', 'Sala 108', '11:30:00'),
('Engenharia Civil', 'Sala 109', '12:30:00'),
('Design', 'Sala 110', '13:30:00');


INSERT INTO Alunos (aluno_nome, aluno_curso, aluno_nivel, aluno_idade)
VALUES
('Alice Silva', 'Informática', 'Ensino Médio Completo', 17),
('Bruno Oliveira', 'Administração', 'Ensino Superior Completo', 22),
('Carlos Pereira', 'Engenharia', 'Cursando Ensino Superior', 19),
('Daniela Costa', 'Medicina', 'Ensino Médio Completo', 18),
('Eduardo Santos', 'Direito', 'Cursando Ensino Superior', 20),
('Fernanda Lima', 'Arquitetura', 'Ensino Superior Completo', 21),
('Gustavo Almeida', 'Economia', 'Ensino Médio Completo', 17),
('Helena Rocha', 'Psicologia', 'Cursando Ensino Superior', 18),
('Isabela Ribeiro', 'Letras', 'Ensino Superior Completo', 23),
('João Fernandes', 'Agronomia', 'Cursando Ensino Superior', 19),
('Karina Martins', 'Biologia', 'Ensino Médio Completo', 16),
('Leonardo Souza', 'Química', 'Cursando Ensino Superior', 20),
('Mariana Duarte', 'Física', 'Ensino Superior Completo', 22),
('Nicolas Cardoso', 'História', 'Ensino Médio Completo', 17),
('Olivia Azevedo', 'Geografia', 'Cursando Ensino Superior', 21),
('Pedro Ramos', 'Matemática', 'Ensino Superior Completo', 23),
('Quésia Borges', 'Filosofia', 'Ensino Médio Completo', 16),
('Ricardo Barros', 'Educação Física', 'Cursando Ensino Superior', 19),
('Sofia Nunes', 'Enfermagem', 'Ensino Superior Completo', 24),
('Thiago Melo', 'Fisioterapia', 'Ensino Médio Completo', 18),
('Ursula Farias', 'Nutrição', 'Cursando Ensino Superior', 20),
('Vinícius Teixeira', 'Farmácia', 'Ensino Superior Completo', 22),
('Wesley Fonseca', 'Veterinária', 'Ensino Médio Completo', 17),
('Xavier Gonçalves', 'Jornalismo', 'Cursando Ensino Superior', 21),
('Yasmin Lopes', 'Publicidade', 'Ensino Superior Completo', 24),
('Zoe Cruz', 'Relações Internacionais', 'Ensino Médio Completo', 16),
('Adriana Silva', 'Ciência da Computação', 'Cursando Ensino Superior', 18),
('Bruna Lima', 'Administração Pública', 'Ensino Superior Completo', 22),
('Caio Martins', 'Engenharia Civil', 'Ensino Médio Completo', 17),
('Diego Oliveira', 'Design', 'Cursando Ensino Superior', 21),
('Elaine Costa', 'Moda', 'Ensino Superior Completo', 23);

INSERT INTO Matriculas (nota_1, nota_2, nota_3, nota_final, nr_faltas, Alunos_aluno_id, Turmas_turma_id)
VALUES
(8.5, 7.4, 9.1, 8.3, NULL, 1, 1),
(6.7, 8.8, 7.2, 7.6, 2, 2, 2),
(9.0, 8.5, 9.8, 9.1, 0, 3, 30),
(7.5, 8.2, 7.9, 7.9, 1, 4, 4),
(5.6, 6.8, 7.4, 6.6, NULL, 5, 5),
(8.9, 9.4, 8.7, 9.0, NULL, 6, 6),
(7.1, 6.5, 7.3, 7.0, 3, 7, 7),
(6.0, 7.2, 6.8, 6.7, 4, 8, 8),
(8.0, 7.9, 8.5, 8.1, 2, 9, 9),
(9.5, 8.9, 9.7, 9.4, 1, 10, 10),
(6.8, 7.7, 8.2, 7.6, NULL, 11, 11),
(7.9, 8.3, 8.6, 8.3, 2, 12, 12),
(8.4, 7.1, 8.9, 8.1, 0, 13, 30),
(6.5, 8.2, 7.7, 7.5, 1, 14, 14),
(9.2, 8.8, 9.3, 9.1, NULL, 15, 15),
(7.3, 6.9, 7.8, 7.3, 2, 16, 16),
(5.8, 7.0, 6.5, 6.4, NULL, 17, 17),
(9.1, 8.4, 9.5, 8.9, 3, 18, 18),
(7.6, 8.1, 7.2, 7.6, 4, 19, 19),
(8.7, 9.0, 8.6, 8.7, NULL, 20, 20),
(6.9, 7.3, 7.4, 7.2, 2, 21, 21),
(9.4, 8.6, 9.8, 9.3, 1, 22, 22),
(8.2, 7.5, 8.3, 8.0, NULL, 23, 30),
(6.1, 7.8, 6.7, 6.9, 3, 24, 24),
(8.6, 8.9, 8.8, 8.7, NULL, 25, 25),
(7.0, 7.4, 7.6, 7.3, 2, 26, 26),
(9.3, 8.7, 9.1, 8.9, 0, 27, 27),
(7.2, 6.8, 7.5, 7.2, 1, 28, 28),
(8.8, 9.1, 8.6, 8.8, NULL, 29, 29),
(6.4, 7.6, 6.9, 6.8, 4, 30, 30);

-- 1. Quais os nomes de todos os alunos?
SELECT aluno_nome FROM Alunos;

-- 2. Quais os números das matrículas dos alunos?
SELECT matricula_id FROM Matriculas;

-- 3. Quais os números das matrículas dos alunos que não estão matriculados em uma turma?
SELECT matricula_id 
FROM matriculas
LEFT JOIN turmas ON turma_id = Turmas_turma_id 
WHERE Turmas_turma_id IS NULL;

-- 4. Quais os números dos alunos matriculados em uma turma de número '30'?
SELECT Alunos_aluno_id 
FROM Matriculas
WHERE Turmas_turma_id = 30;

-- 5. Qual o horário da turma do aluno 'PATOLINO'?
SELECT turma_horario 
FROM Turmas 
JOIN Matriculas ON turma_id = Turmas_turma_id 
JOIN Alunos ON Alunos_aluno_id = aluno_id 
WHERE aluno_nome = 'PATOLINO';