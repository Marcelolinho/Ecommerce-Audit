create database "erp";

create table if not exists "produtos" (
    codigo varchar(255),
    descricao varchar(255),
    preco decimal,
    ecommerce boolean
)

create table if not exists "grades" (
    escala varchar(255),
    grade1 varchar(255),
    grade2 varchar(255),
    grade3 varchar(255),
    grade4 varchar(255),
    grade5 varchar(255)
);

create table if not exists "estoques" (
    produto varchar(255),
    empresa varchar(255),
    quantidade int
);

-- TODO criar tabelas de vendas

insert into produtos (codigo, descricao, preco, ecommerce) values 
('001', 'Camisa Esportiva', 49.90, true),
('002', 'Bola de Futebol', 79.90, true),
('003', 'Chuteira Profissional', 199.90, true),
('004', 'Calção Esportivo', 29.90, false),
('005', 'Meião de Futebol', 19.90, true),
('006', 'Luvas de Goleiro', 89.90, false),
('007', 'Garrafa Squeeze', 14.90, true),
('008', 'Coletes de Treino', 39.90, false),
('009', 'Apito para Árbitro', 9.90, true),
('010', 'Caneleira Profissional', 24.90, false);

insert into grades (escala, grade1, grade2, grade3, grade4, grade5) values
('ROUPA', 'PP', 'P', 'M', 'G', 'GG'),
('TENIS', '38', '39', '40', '41', '42');

insert into grades (escala, grade1) values
    ('UNICO', 'U')

insert into estoques (produto, empresa, quantidade) values
('001PP', '01', 10),
('001P', '01', 15),
('001M', '01', 5),
('001G', '01', 2),
('001GG', '01', 1),
('002U', '01', 12),
('00338', '01', 3),
('00339', '01', 4),
('00340', '01', 4),
('00341', '01', 3),
('00342', '01', 1),
('007U', '01', 2),
('009U', '01', 5),
('0010U', '01', 6)

create user admin with password 'marcelo123';
grant all privileges on public to admin;