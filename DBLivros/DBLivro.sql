DROP TABLE Autor_Livro;
DROP TABLE Assunto_Livro;
DROP TABLE Editora_Livro;
DROP TABLE Editora_Livro_Autor;
DROP TABLE Autor;
DROP TABLE Livro;
DROP TABLE Assunto;
Drop TABLE Editora;

CREATE TABLE Autor
(Cod_Autor INTEGER CHECK (Cod_Autor > 0),
Nome_Autor VARCHAR(50) NOT NULL,
CONSTRAINT pk_autor PRIMARY KEY (Cod_Autor)
);

CREATE TABLE Livro
(Cod_Livro INTEGER CHECK (Cod_Livro > 0),
Nome_Livro VARCHAR(50) NOT NULL,
Ano_publicacao INTEGER NOT NULL,
Nmr_Edicao INTEGER NOT NULL,
CONSTRAINT pk_livro PRIMARY KEY(Cod_Livro)
);

CREATE TABLE Assunto
(Cod_Assunto Integer CHECK (Cod_Assunto > 0),
Assunto Varchar(25) NOT NULL,
CONSTRAINT pk_assunto PRIMARY KEY (Cod_Assunto)
);
 
CREATE TABLE Editora
(Cod_Editora INTEGER CHECK (Cod_Editora > 0),
Nome_Editora Varchar(50) not NULL, 
CONSTRAINT pk_editora PRIMARY KEY (Cod_Editora)
);

CREATE TABLE Autor_Livro
(Cod_Autor INTEGER,
Cod_Livro INTEGER,
CONSTRAINT pk_autor_livro PRIMARY KEY (Cod_Autor, Cod_Livro),
CONSTRAINT fk_autor_livro FOREIGN KEY (Cod_Autor) REFERENCES Autor(Cod_Autor),
CONSTRAINT fk_livro_autor FOREIGN KEY (Cod_Livro) REFERENCES Livro(Cod_Livro)
);

CREATE TABLE Assunto_Livro
(Cod_Assunto INTEGER,
Cod_Livro INTEGER,
CONSTRAINT pk_assunto_livro PRIMARY KEY (Cod_Assunto, Cod_Livro),
CONSTRAINT fk_assunto_livro FOREIGN KEY (Cod_Assunto) REFERENCES Assunto(Cod_Assunto),
CONSTRAINT fk_livro_assunto FOREIGN KEY (Cod_Livro) REFERENCES Livro(Cod_Livro)
);

CREATE TABLE Editora_Livro
(Cod_Editora INTEGER,
Cod_Livro INTEGER,
CONSTRAINT pk_editora_livro PRIMARY key (Cod_Editora, Cod_Livro),
CONSTRAINT fk_editora_livro FOREIGN KEY (Cod_Editora) REFERENCES Editora(Cod_Editora),
CONSTRAINT fk_livro_editora FOREIGN KEY (Cod_Livro) REFERENCES Livro(Cod_Livro)
);

CREATE TABLE Editora_Livro_Autor
(Cod_Editora INTEGER,
Cod_Livro INTEGER,
Cod_Autor INTEGER,
CONSTRAINT pk_editora_livro_autor PRIMARY KEY (Cod_Editora, Cod_Livro, Cod_Autor),
CONSTRAINT fk_editora_livro_autor FOREIGN KEY (Cod_Editora) REFERENCES Editora(Cod_Editora),
CONSTRAINT fk_editora_autor_livro FOREIGN KEY (Cod_Livro) REFERENCES Livro(Cod_Livro),
CONSTRAINT fk_autor_editora_livro FOREIGN KEY (Cod_Autor) REFERENCES Autor(Cod_Autor)
);

INSERT INTO Autor VALUES (1234, 'Carlos');
INSERT INTO Autor VALUES (4321, 'Jos??');
INSERT INTO Autor VALUES (2143, 'Maria');
INSERT INTO Autor VALUES (3214, 'Roberto');

INSERT INTO Livro VALUES (1, 'Mob', 1800, 1);
INSERT INTO Livro VALUES (2, 'Harry Potter', 2000, 2);
INSERT INTO Livro VALUES (3, 'Percy Jackson', 2005, 3);
INSERT INTO Livro VALUES (4, 'Piramide Vermelha', 2007, 4);


INSERT INTO Editora VALUES (10, 'Moderna');
INSERT INTO Editora VALUES (11, 'Neo');
INSERT INTO Editora VALUES (12, 'Saraiva');
INSERT INTO Editora VALUES (13, 'Forma');


INSERT INTO Assunto VALUES (21, 'Baleia');
INSERT INTO Assunto VALUES (22, 'Magia');
INSERT INTO Assunto VALUES (23, 'Deus Gregos');
INSERT INTO Assunto VALUES (24, 'Deus Egipicios');

INSERT INTO Autor_Livro VALUES(1234, 1);
INSERT INTO Autor_Livro VALUES(4321, 2);
INSERT INTO Autor_Livro VALUES(2143, 3);
INSERT INTO Autor_Livro VALUES(3214, 4);

INSERT INTO Assunto_Livro VALUES(21, 1);
INSERT INTO Assunto_Livro VALUES(22, 2);
INSERT INTO Assunto_Livro VALUES(23, 3);
INSERT INTO Assunto_Livro VALUES(24, 4);

INSERT INTO Editora_Livro VALUES(10, 1);
INSERT INTO Editora_Livro VALUES(11, 2);
INSERT INTO Editora_Livro VALUES(12, 3);
INSERT INTO Editora_Livro VALUES(13, 4);

INSERT INTO Editora_Livro_Autor VALUES(10, 1, 1234);
INSERT INTO Editora_Livro_Autor VALUES(11, 2, 4321);
INSERT INTO Editora_Livro_Autor VALUES(12, 3, 2143);
INSERT INTO Editora_Livro_Autor VALUES(13, 4, 3214);

SELECT COD_AUTOR , NOME_AUTOR  FROM Autor;

SELECT * FROM Livro;

SELECT COD_ASSUNTO , ASSUNTO  FROM Assunto;

SELECT COD_EDITORA , NOME_EDITORA  FROM Editora;

SELECT * FROM Autor_Livro;
SELECT * FROM Assunto_Livro;
SELECT * FROM Editora_Livro;
SELECT * FROM Editora_Livro_Autor;

SELECT Cod_Autor 
    FROM Autor_Livro;