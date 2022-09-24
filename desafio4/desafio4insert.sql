use oficina;
insert into costumer(first_name, last_name, street, add_number, add_information, cpf) values
	('Pedro','Ferreira','Rua Monte Alegre',37,'B','54896523158'),
    ('Gerônimo','Duarte','Rua Feixe de Luz',null,'S/N','11488565232'),
    ('Alissa','Gualter','Avenida dos Praieiros',255,null,'98988744563'),
    ('Mingus','Blascek','Alameda do Purga',115,'fundos','02154455866'),
    ('Aleida','Duarte','Rua Feixe de Luz',null,'S/N','54441124587'),
    ('Hans','Schwartz','Alameda Fiorentina',18,null,'14225488701');
insert into vehicle(license, model, v_year, color, v_owner) values
	('JFH54D2', 'Prius', 2001, 'cinza',1),
    ('HDH78A3', 'Gol bola', 2011, 'preto',2),
    ('JLA24D4', 'Fusca', 1977, 'azul bebê',1),
    ('CDZ9A59', 'Jetta', 2020, 'prata',3),
    ('KOF97L8', 'Versa', 2019, 'verde',4),
    ('PQP7F68', 'Celta', 2014, 'vermelho',5),
    ('NOB6M66', 'Ka', 2022, 'preto',6),
    ('HEL7L85', 'Strada', 2018, 'laranja',5);
insert into staff(s_first_name, s_last_name, s_street, s_add_number, s_add_information, position) values
	('Clebson','Moreira','Rua da Amargura',15,'A','Funilaria'),
    ('Vânia','da Costa','Rua Simão Rosa',58,null,'Manutenção'),
    ('Denilson','Mendez','Rua Velha Doze',11,'Bloco 12','Interno'),
    ('Charles','Valério','Avenida Traçalá',1513,null,'Interno'),
    ('Neiva','Celeste','Rua do Banco',447,null,'Supervisor');
insert into assessment(ass_vehicle, ass_staff) values
	(1,2),
    (1,5),
    (3,3),
    (5,4),
    (5,1),
    (6,2);
insert into work_order(total_cost, wo_status, start_date, finish_date, from_assessment) values
	(124.41, 'Em progresso', '2022-09-20','2022-09-30',3),
    (518.70, default, '2022-09-22','2022-10-05',1),
    (424.16, 'Completo', '2022-09-14','2022-09-21',6),
    (218.80, default, '2022-09-22','2022-10-04',4);
insert into part(p_name, price, stock) values
	('Carburador G3-DDL', 200, default),
    ('Paleta', 15.59, 14),
    ('Aromatizante', 1.50, 18),
    ('Porta esquerda', 380, default);
insert into part_in_work_order(code_part, code_wo) values
	(2,1),
    (3,1),
    (4,3);
insert into service(serv_name, cost) values
	('Manutenção simples', 80.50),
    ('Manutenção premium', 117.88),
    ('Manutenção promoção', null),
    ('Desamassar', 200.00),
    ('Trocar peça', 140.17),
    ('Pintura', 117.46),
    ('Balanceamento de rodas', 219.78);
insert into service_in_work_order(code_service, code_wo) values
	(1,2),
    (7,3),
    (2,3),
    (4,4),
    (7,1),
    (6,1),
    (5,2);