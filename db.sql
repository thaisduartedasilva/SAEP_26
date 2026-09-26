CREATE DATABASE farmacia_sa;
USE farmacia_sa;

CREATE TABLE funcionario(
	id INT PRIMARY KEY AUTO_INCREMENT not null,
    nome VARCHAR(200) NOT NULL,
    email VARCHAR(200) NOT NULL
);

CREATE TABLE pedido(
	id INT primary KEY auto_increment not null,
    nome_medicamento varchar(200) not null,
    quantidade_medicamento INT NOT NULL,
    categoria ENUM('genérico', 'referência', 'controlado', 'higiene'),
    urgencia enum('baixa', 'média', 'alta'),
    data_solicitacao date not null,
    status enum('solicitado', 'em separação ou recebido', 'sendo soliciado o valor padrão'),
    id_funcionario INT,
    foreign key (id_funcionario) references funcionario(id)
);


