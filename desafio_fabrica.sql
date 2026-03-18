create schema desafio;
use desafio;

 create table aluno(
 id_aluno int auto_increment primary key,
 nome varchar(40)  not null, 
 cpf varchar(11) unique not null,
 data_nasc date
 );
 
 insert into aluno( nome, cpf, data_nasc) 
 values ('joao silva', '11111111111', '2000-01-10'),
('Maria Souza', '22222222222', '1999-05-20'),
('Pedro Lima', '33333333333', '2001-03-15'),
('Ana Costa', '44444444444', '1998-07-30'),
('Lucas Alves', '55555555555', '2002-02-12'),
('Carla Mendes', '66666666666', '2000-11-25'),
('Bruno Rocha', '77777777777', '1997-09-18'),
('Juliana Dias', '88888888888', '2001-06-05'),
('Rafael Pinto', '99999999999', '1996-12-22'),
('Fernanda Gomes', '10101010101', '2003-04-14');
 
 create table professor (
  id_professor int auto_increment primary key,
 nome varchar(50)  not null, 
 cpf varchar(11) unique not null,
 especialidade varchar (50) 
 
 );
 
 alter table professor
add telefone varchar(15);

 insert into professor ( nome, cpf, especialidade, telefone)
 value ('joao roberto', 12345678, 'matematica','908126451'),
 ('farias silva', 87654321, 'ciencia','908123551'),
 ('juliano pereira', 12309878, 'geografia','10824451'),
 ('alazam sales', 12345123, 'biologia','902824451'),
 ('wesley safadao', 19865678, 'forrologia','448926451'),
 ('rey vaqueiro', 1342578, 'ciencias da natureza','903241451'),
 ('iguinho', 12325678, 'veterinaria','90825616'),
 ('lulinha', 12145885, 'anatomia','90890451'),
 ('ze vaqueiro', 1235878, 'locucao','90987121'),
  ('ze barreto', 12325878, 'vaquejada','97862429');
  
  create table curso (
  id_curso int auto_increment primary key ,
  nome_curso varchar (40) not null,
  carga_horaria int,
  id_professor int,
  foreign key (id_professor) references professor (id_professor)
  );
  
  insert into curso (nome_curso, carga_horaria, id_professor)
  value ('geometria', 30, 1),
  ('ciencias da computacao', 40, 2),
  ('estudos dos mapas', 50, 3),
  ('seres humanos tipo 2', 30, 4),
  ('pe de serra na safona', 35, 5),
  ('producao de alambique', 50, 6),
  ('fundamento de pega de boi', 40, 7),
  ('aprimoracao aguda e media', 45, 8),
  ('canto tipo 3', 20, 9),
   ('tecnicas em puxada tipo 3', 35, 10);
  
update curso
set carga_horaria = 60  -- mudei a carga horaria do curso 1 para 60 
where id_curso = 1;

select count(*) from curso; -- conta quantos curso existem

select avg(carga_horaria) from curso; -- media de horas que os cursos tem

select max(carga_horaria) from curso; -- o numero do curso com mais horas

select id_professor, count(*)
from curso
group by id_professor;  -- saber quantos curso cada professor tem

select curso.nome_curso, professor.nome
from curso
join professor
on curso.id_professor = professor.id_professor; -- me mostra o nome do curso e o nome do professor e junta os dois

  select * from aluno;
  select * from professor;
  select * from curso;
  