USE projeto_gama;

CREATE TABLE dm_postos (
    id_posto INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
    razao_posto VARCHAR(100) NOT NULL,
    cnpj_posto CHAR(14) NOT NULL,
    endereco_posto VARCHAR(100) NOT NULL,
    bairro_posto VARCHAR(50) NOT NULL,
    cep_posto CHAR(8) NOT NULL,
    uf_posto CHAR(2) NOT NULL,
    munic_posto VARCHAR(50),
    nota_posto FLOAT
);

CREATE TABLE dm_funcionarios (
    id_func INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
    nome_func VARCHAR(50) NOT NULL,
    cargo_func VARCHAR(30) NOT NULL,
    salario_func FLOAT NOT NULL,
    id_posto INT,
    nota_func FLOAT
);

CREATE TABLE dm_data (
    id_data INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
    data_completa DATE,
    dia_data INT,
    mes_data INT,
    ano_data INT,
    nome_mes_data VARCHAR(20),
    trmst_data INT,
    semst_data INT
);

CREATE TABLE dm_combustiveis (
    id_registro INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
    id_comb INT,
    id_data INT,
    nome_comb VARCHAR(50) NOT NULL,
    tipo_comb VARCHAR(20) NOT NULL,
    custo_comb FLOAT,
    revenda_comb FLOAT
);

CREATE TABLE pr_vendas (
    id_venda INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
    id_data INT,
    id_posto INT,
    id_func INT,
    id_comb INT,
    qtd_lts FLOAT,
    valor_venda DECIMAL(10 , 2 )
);



ALTER TABLE dm_funcionarios ADD CONSTRAINT fk_posto FOREIGN KEY (id_posto) REFERENCES dm_postos (id_posto);
ALTER TABLE dm_combustiveis ADD CONSTRAINT fk_comb_data FOREIGN KEY (id_data) REFERENCES dm_data(id_data);
ALTER TABLE pr_vendas ADD CONSTRAINT fk_venda_data FOREIGN KEY (id_data) REFERENCES dm_data (id_data);
ALTER TABLE pr_vendas ADD CONSTRAINT fk_venda_posto FOREIGN KEY (id_posto) REFERENCES dm_postos (id_posto);
ALTER TABLE pr_vendas ADD CONSTRAINT fk_venda_func FOREIGN KEY (id_func) REFERENCES dm_funcionarios (id_func);
ALTER TABLE pr_vendas ADD CONSTRAINT fk_venda_comb FOREIGN KEY (id_comb) REFERENCES dm_combustiveis (id_registro);
