create database projeto_gama;
use projeto_gama;

create table dm_postos (
	id_posto int primary key auto_increment not null,
    nome_posto varchar(50) not null,
    latitude_posto varchar(50),
    longitude_posto varchar(50),
    uf_posto char(2)
);

create table dm_funcionarios (
	id_funcionario int primary key auto_increment not null,
    nome_funcionario varchar(50),
    dtadm_funcionario date,
    id_posto int not null,
    foreign key (id_posto) references dm_postos (id_posto)
);

create table dm_clientes (
	id_cliente int primary key auto_increment not null,
    nome_cliente varchar(50),
    dtcadastro_cliente date not null,
    id_funcionario_indicador int,
    foreign key (id_funcionario_indicador) references dm_funcionarios (id_funcionario)
);

create table dm_combustiveis (
	id_combustivel int primary key auto_increment not null,
    nome_combustivel varchar(50) not null,
    tp_comb varchar(50) not null,
    preco_combustivel float not null
);

create table pr_vendas (
	id_venda int primary key auto_increment not null,
    id_posto int not null,
    id_funcionario int not null,
    id_cliente int,
    id_combustivel int not null,
    data_venda date not null,
    volume_comb float not null,
    valor_venda float not null,
    foreign key (id_posto) references dm_postos (id_posto),
    foreign key (id_funcionario) references dm_funcionarios (id_funcionario),
    foreign key (id_cliente) references dm_clientes (id_cliente),
    foreign key (id_combustivel) references dm_combustiveis (id_combustivel)
);
