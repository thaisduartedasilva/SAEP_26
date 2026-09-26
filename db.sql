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
    data_solicitacao date default current_timestamp,
    status enum('solicitado', 'em separação ou recebido', 'sendo soliciado o valor padrão'),
    id_funcionario INT,
    foreign key (id_funcionario) references funcionario(id)
);

insert into funcionario ('nome', 'email')
values 
('thais', 'thais@email.com'),
('henri', 'henri@email.com'),
('cebola', 'serenna@email.com');

insert into pedido ('nome_medicamento', 'quantidade_medicamento', 'categoria', 'urgencia', 'status') 
values
('Dorflex', '10', 'genérico', 'baixa', 'solicitado'),
('Esmeron', '15', 'controlado', 'alta','sendo soliciado o valor padrão'),
('Hydergine', '6', 'referência', 'média','em separação ou recebido');
