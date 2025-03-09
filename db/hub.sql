create database if not exists 'hub';

crate table if not exists 'mpp_produto' {
    id int primary key not null auto_increment,
    codigo varchar(255)

};

crate table if not exists 'mpp_produto_sku' {
    id int primary key not null auto_increment,
    codigo varchar(255),
    id_mpp_produto int references mpp_produto(id)

};

create table if not exists 'mpp_armazem' {
    id int primary key not null auto_increment,

};

crate table if not exists 'mpp_produto_sku_armazem' {
    id int primary key not null auto_increment,
    saldo int,
    id_mpp_produto_sku int references mpp_produto_sku(id),
    id_mpp_armazem int references mpp_armazem(id)
};

create table if not exists 'mpp_entidade' {
    id int primary key not null auto_increment,
    id_entidade int,
    status varchar(255)
};

create table if not exists 'mpp_entidade_sinc' {
    id int primary key not null auto_increment,
    id_entidade int references mpp_entidade(id),
    status varchar(255),
};

create table if not exists 'mpp_iee' {
    id int primary key not null auto_increment,
    tabela_erp_pk int,
    tabela_erp varchar(255),
    tabela_hub_pk int,
    tabela_hub varchar(255)
};

-- TODO criar tabelas de preço e grade

insert into mpp_produto (codigo) values
('001'),
('002'),
('003'),
('004'),
('005'),
('006'),
('007'),
('007'),
('008'),
('009'),
('0010'),

insert into mpp_produto (codigo) values
('001'),
('002'),
('003'),
('004'),
('005'),
('006'),
('007'),
('007'),
('008'),
('009'),
('0010'),

insert into mpp_produto_sku (codigo) values


create user admin with password 'marcelo321';
grant all privileges on hub to admin;