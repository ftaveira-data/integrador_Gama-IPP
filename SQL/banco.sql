use projeto_gama;

create table dm_postos (
	id_posto int primary key auto_increment not null,
    razao_posto varchar(100) not null,
    cnpj_posto char(14) not null,
    endereco_posto varchar(100) not null,
    bairro_posto varchar(50) not null,
    cep_posto char(8) not null,
    uf_posto char(2) not null,
    munic_posto varchar(50),
    nota_posto float
);

create table dm_funcionarios (
	id_func int primary key auto_increment not null,
    nome_func varchar(50) not null,
    cargo_func varchar(30) not null,
    salario_func float not null,
    id_posto int,
    nota_func float
);

create table dm_data (
	id_data int primary key auto_increment not null,
    data_completa date,
    dia_data int,
    mes_data int,
    ano_data int,
    nome_mes_data varchar (20),
    trmst_data int,
    semst_data int
);

create table dm_combustiveis (
	id_registro int primary key auto_increment not null,
    id_comb int,
    id_data int,
    nome_comb varchar(50) not null,
    tipo_comb varchar(20) not null,
    custo_comb float,
    revenda_comb float
);

create table pr_vendas (
	id_venda int primary key auto_increment not null,
    id_data int,
    id_posto int,
    id_func int,
    id_comb int,
    qtd_lts float,
    valor_venda decimal(10,2)
);

select * from dm_combustiveis;
select * from dm_postos;
select * from dm_funcionarios;
select * from dm_data;
select * from pr_vendas order by id_data desc;
select * from dm_data where id_data between 366 and 699;