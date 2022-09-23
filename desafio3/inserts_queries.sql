use ecommerce;
insert into clients (Fname, Minit, Lname, CPF, Address)
	values('Maria', 'M','Silva',123456789,'rua silva de prata 29, Carangola - Cidade das Flores'),
		  ('Matheus', 'O','Pimentel',987654321,'rua alameda289, Centro - Cidade das Flores'),
          ('Ricardo', 'F','Silva',456789123,'avenida vinha 21, Centro - Cidade das Flores'),
          ('Julia', 'S','França',321654987,'rua meira monte 15, Centro - Cidade das Flores'),
          ('Roberta', 'G','Assis',456789321,'praça firulin S/N, Centro - Cidade das Flores'),
          ('Isabela', 'M','Cruz',654789213,'rua garrote verde 665, Carangola - Cidade das Flores');
insert into product (Pname, classification_kids, category, evaluation, size)
	values('Fone de ouvido', false,'Eletrônico',4,null),
    ('Barbie Elsa', true,'Brinquedo',3,null),
    ('Body Carters', true,'Vestuário',5,null),
    ('Microfone Shure 507', false,'Eletrônico',5,null),
    ('Sofá retrátil', false,'Móveis',3,'3x57x80'),
    ('Farinha de arroz', false,'Alimento',2,null),
    ('Fire stick Amazon', false,'Eletrônico',3,null);
insert into payments (idPclient, typePayment, limitAvailable)
	values(1,'Boleto',500),
		  (1,'Dois cartões',870),
          (2,'Cartão',1200),
          (3,'Boleto',400),
          (4,'Dois cartões',500),
          (5,'Boleto',700),
          (6,'Cartão',1500),
          (6,'Cartão',900);
insert into orders (idOrderClient, orderStatus, orderDescription, sendValue, paymentCash, idOpayment)
	values(1,default,'compra via aplicativo',default,1,1),
		  (2,default,'compra via aplicativo',50,0,3),
          (3,'Confirmado',null,default,1,4),
          (4,default,'compra via website',150,0,5);
          select * from orders;
insert into productOrder(idPOproduct, idPOorder, poQuantity, poStatus)
	values(1,5,2,default),
		  (2,5,1,default),
          (3,6,1,default);
insert into productStorage (storageLocation, quantity) values
	('Rio de Janeiro',1000),
    ('Rio de Janeiro',1200),
    ('Rio de Janeiro',400),
    ('São Paulo',1300),
    ('São Paulo',1780),
    ('São Paulo',8000),
    ('São Paulo',17),
    ('Recife',1000),
    ('Santa Catarina',200);
insert into storageLocation (idLproduct, idLstorage, location) values
	(1,2,'RJ'),
    (2,5,'SP');
insert into supplier (SocialName, CNPJ, contact) values
	('Almeida e filhos',123654789654785,'98765432122'),
    ('Eletrônicos Silva',23145885478569,'52145874563'),
    ('Eletrônicos Valma',125547854125632,'44125489665');
insert into productSupplier (idPsSupplier, idPsProduct, quantity) values
	(1,1,500),
    (1,2,490),
    (2,4,633),
    (3,3,5),
    (2,5,10);
insert into seller (SocialName, AbstractName, CNPJ, CPF, location, contact) values
	('Tech electronics', null, 123654789654521, null, 'Maringá', '22548755469'),
    ('Botique Durgas', null, null, 321456987, 'Rio Claro', '11548879658'),
    ('Kids World', null, 548878965854412, null, 'Xerém', '81887458965');
insert into productSeller (idPseller, idPproduct, prodQuantity) values
	(1,6,80),
    (2,7,10);
    
-- queries
-- selecionar produtos infantis
select Pname, category, evaluation from product where classification_kids = true;
-- ordenar os limites de pagamento mostrando o nome completo do cliente
select concat(c.Fname,' ', c.Minit, '. ', c.Lname) as full_name, p.typePayment, p.limitAvailable 
	from clients as c inner join payments as p 
    where c.idClient = p.idPclient
    order by p.limitAvailable;
-- mostrar os depósitos com agrupados por cidade que tenham quantidade maior que 600, mas apenas de cidades com mais de um depósito
select * from productStorage
	where quantity > 600
    group by storageLocation
    having count(storageLocation) > 1;