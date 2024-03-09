create database juridicosistema;
use juridicosistema;


CREATE TABLE Delegacia (
    Delegado VARCHAR(30) PRIMARY KEY,
    policial_ VARCHAR(50),
    perito_criminal VARCHAR(40),
    escrivao VARCHAR(50)
);

CREATE TABLE suspeito (
    nome VARCHAR(40) PRIMARY KEY,
    cpf INTEGER,
    codigo INTEGER
);

CREATE TABLE justica (
    juiz VARCHAR(30) PRIMARY KEY,
    desembargador VARCHAR(40),
    reu VARCHAR(40),
    testemunha VARCHAR(50)
);

CREATE TABLE defensoria (
    advogado VARCHAR(30) PRIMARY KEY,
    assistente_social VARCHAR(40),
    psicologa VARCHAR(50),
    promotor VARCHAR(40)
);

CREATE TABLE vitima (
    nome VARCHAR(40) PRIMARY KEY,
    dano VARCHAR(30),
    endereco VARCHAR(40)
);

CREATE TABLE custodia (
    fk_suspeito_nome VARCHAR(40),
    fk_justica_juiz VARCHAR(40)
);

CREATE TABLE assistencia_suspeito_defensoria_vitima (
    fk_suspeito_nome VARCHAR(30),
    fk_defensoria_advogado VARCHAR(50),
    fk_vitima_nome VARCHAR(50)
);

CREATE TABLE inquerito (
    fk_justica_juiz VARCHAR(30),
    fk_Delegacia_Delegado VARCHAR(40)
);

CREATE TABLE encaminha (
    fk_Delegacia_Delegado VARCHAR(40),
    fk_defensoria_advogado VARCHAR(40)
);
 
ALTER TABLE custodia ADD CONSTRAINT FK_custodia_1
    FOREIGN KEY (fk_suspeito_nome)
    REFERENCES suspeito (nome);
    
    ALTER TABLE custodia ADD CONSTRAINT FK_custodia_1
    FOREIGN KEY (fk_suspeito_nome)
    REFERENCES suspeito (nome)
    ON DELETE SET NULL;
 
ALTER TABLE custodia ADD CONSTRAINT FK_custodia_2
    FOREIGN KEY (fk_justica_juiz)
    REFERENCES justica (juiz)
    ON DELETE SET NULL;
 
ALTER TABLE assistencia_suspeito_defensoria_vitima ADD CONSTRAINT FK_assistencia_suspeito_defensoria_vitima_1
    FOREIGN KEY (fk_suspeito_nome)
    REFERENCES suspeito (nome)
    ON DELETE NO ACTION;
 
ALTER TABLE assistencia_suspeito_defensoria_vitima ADD CONSTRAINT FK_assistencia_suspeito_defensoria_vitima_2
    FOREIGN KEY (fk_defensoria_advogado)
    REFERENCES defensoria (advogado)
    ON DELETE NO ACTION;
 
ALTER TABLE assistencia_suspeito_defensoria_vitima ADD CONSTRAINT FK_assistencia_suspeito_defensoria_vitima_3
    FOREIGN KEY (fk_vitima_nome)
    REFERENCES vitima (nome)
    ON DELETE NO ACTION;
 
ALTER TABLE inquerito ADD CONSTRAINT FK_inquerito_1
    FOREIGN KEY (fk_justica_juiz)
    REFERENCES justica (juiz)
    ON DELETE SET NULL;
 
ALTER TABLE inquerito ADD CONSTRAINT FK_inquerito_2
    FOREIGN KEY (fk_Delegacia_Delegado)
    REFERENCES Delegacia (Delegado)
    ON DELETE SET NULL;
 
ALTER TABLE encaminha ADD CONSTRAINT FK_encaminha_1
    FOREIGN KEY (fk_Delegacia_Delegado)
    REFERENCES Delegacia (Delegado)
    ON DELETE SET NULL;
 
ALTER TABLE encaminha ADD CONSTRAINT FK_encaminha_2
    FOREIGN KEY (fk_defensoria_advogado)
    REFERENCES defensoria (advogado)
    ON DELETE SET NULL;
 
ALTER TABLE custodia ADD CONSTRAINT FK_custodia_2
    FOREIGN KEY (fk_justica_juiz)
    REFERENCES justica (juiz)
    ON DELETE SET NULL;
 
ALTER TABLE assistencia_suspeito_defensoria_vitima ADD CONSTRAINT FK_assistencia_suspeito_defensoria_vitima_1
    FOREIGN KEY (fk_suspeito_nome)
    REFERENCES suspeito (nome)
    ON DELETE NO ACTION;
 
ALTER TABLE assistencia_suspeito_defensoria_vitima ADD CONSTRAINT FK_assistencia_suspeito_defensoria_vitima_2
    FOREIGN KEY (fk_defensoria_advogado)
    REFERENCES defensoria (advogado)
    ON DELETE NO ACTION;
 
ALTER TABLE assistencia_suspeito_defensoria_vitima ADD CONSTRAINT FK_assistencia_suspeito_defensoria_vitima_3
    FOREIGN KEY (fk_vitima_nome)
    REFERENCES vitima (nome)
    ON DELETE NO ACTION;
 
ALTER TABLE inquerito ADD CONSTRAINT FK_inquerito_1
    FOREIGN KEY (fk_justica_juiz)
    REFERENCES justica (juiz)
    ON DELETE SET NULL;
 
ALTER TABLE inquerito ADD CONSTRAINT FK_inquerito_2
    FOREIGN KEY (fk_Delegacia_Delegado)
    REFERENCES Delegacia (Delegado)
    ON DELETE SET NULL;
 
ALTER TABLE encaminha ADD CONSTRAINT FK_encaminha_1
    FOREIGN KEY (fk_Delegacia_Delegado)
    REFERENCES Delegacia (Delegado)
    ON DELETE SET NULL;
 
ALTER TABLE encaminha ADD CONSTRAINT FK_encaminha_2
    FOREIGN KEY (fk_defensoria_advogado)
    REFERENCES defensoria (advogado)
    ON DELETE SET NULL;
    
    
    
insert into Delegacia(Delegado, policial, perito_criminal, escrivao) values
('Fabio Dias','joao', 'Cesar', 'Joana', 'Paula'),
('Paulo Freire', 'claudia', 'Carlos', 'Laura', 'Jonas');

SELECT * FROM Delegado WHERE BO = 'Casos' AND classificacao = 'resolvido';
SELECT  * FROM Delegacia;

insert into suspeito(nome, cpf, codigo) values
('Luan', '234.384.567-66', '157'),
("pedro", '456.467.654-98', '123');

SELECT * FROM suspeito WHERE delito = 'pena' AND classificacao = ' absorvido';
SELECT  * FROM suspeito;

insert into justica(juiz, desembargador, reu, testemunha) values
('Jose', 'enzo', 'gabriel', 'eric'),
('luan', 'otavio', 'ricardo', 'roberto');

SELECT * FROM jutica WHERE causa = 'concluida' AND classificacao = ' audiencia';
SELECT  * FROM justica;

insert into vitima (nome, dano, endereco) values
('Ziza', 'assaltada', 'rua monica andrade N123'),
('Ana', 'estelionatário', 'avenida Joaquim N34');

SELECT * FROM vitima WHERE dano = 'atendimento juridico' AND classificacao = 'caso resolvido';
SELECT  * FROM vitima;







    