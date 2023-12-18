--

-- ER/Studio Data Architect SQL Code Generation

-- Project :      Model1.DM1

--

-- Date Created : Monday, December 18, 2023 05:04:42

-- Target DBMS : MySQL 8.x

--



-- 

-- TABLE: ADQUISICION 

--



CREATE TABLE ADQUISICION(

    idAdq          INT             NOT NULL,

    transaccion    VARCHAR(225),

    presupuesto    INT,

    fechaAdq       DATE,

    idProv         INT             NOT NULL,

    estado         VARCHAR(25),

    idUsuario      INT             NOT NULL,

    PRIMARY KEY (idAdq)

)ENGINE=MYISAM

;







-- 

-- TABLE: ALIMENTA 

--



CREATE TABLE ALIMENTA(

    idDoc        CHAR(10)    NOT NULL,

    idEstV       INT         NOT NULL,

    idUsuario    INT         NOT NULL,

    PRIMARY KEY (idDoc, idEstV, idUsuario)

)ENGINE=MYISAM

;







-- 

-- TABLE: AUTOR 

--



CREATE TABLE AUTOR(

    idAutor            INT             NOT NULL,

    ciAutor            INT             NOT NULL,

    nombreAutor        VARCHAR(225),

    apePaternoAutor    VARCHAR(225),

    apeMaterno         VARCHAR(225),

    nacionalidad       VARCHAR(225),

    fechaNac           DATE,

    sexo               VARCHAR(25),

    PRIMARY KEY (idAutor)

)ENGINE=MYISAM

;







-- 

-- TABLE: BIBLIOTECA 

--



CREATE TABLE BIBLIOTECA(

    idBiblio        INT             NOT NULL,

    nombreBib       VARCHAR(225)    NOT NULL,

    numeroBib       VARCHAR(25)     NOT NULL,

    capacidad       INT,

    avenidaCalle    VARCHAR(225)    NOT NULL,

    ciudad          VARCHAR(250)    NOT NULL,

    pais            VARCHAR(225)    NOT NULL,

    PRIMARY KEY (idBiblio)

)ENGINE=MYISAM

;







-- 

-- TABLE: BIBLIOTECARIO 

--



CREATE TABLE BIBLIOTECARIO(

    idUsuario       INT            NOT NULL,

    fechaInicioC    DATE           NOT NULL,

    cargo           VARCHAR(25),

    fechaFinC       DATE           NOT NULL,

    PRIMARY KEY (idUsuario)

)ENGINE=MYISAM

;







-- 

-- TABLE: CATEGORIA 

--



CREATE TABLE CATEGORIA(

    idCate             INT             NOT NULL,

    nombreCate         VARCHAR(225),

    descripcionCate    VARCHAR(225),

    PRIMARY KEY (idCate)

)ENGINE=MYISAM

;







-- 

-- TABLE: CONTIENE 

--



CREATE TABLE CONTIENE(

    idDoc    CHAR(10)    NOT NULL,

    idAdq    INT         NOT NULL,

    PRIMARY KEY (idDoc, idAdq)

)ENGINE=MYISAM

;







-- 

-- TABLE: DOCUMENTO 

--



CREATE TABLE DOCUMENTO(

    idDoc               CHAR(10)        NOT NULL,

    titulo              VARCHAR(50)     NOT NULL,

    descripcion         VARCHAR(250),

    fechaPublicacion    DATE,

    idEst               INT             NOT NULL,

    idIdioma            INT             NOT NULL,

    PRIMARY KEY (idDoc)

)ENGINE=MYISAM

;







-- 

-- TABLE: escritoPor 

--



CREATE TABLE escritoPor(

    idAutor    INT         NOT NULL,

    idDoc      CHAR(10)    NOT NULL,

    PRIMARY KEY (idAutor, idDoc)

)ENGINE=MYISAM

;







-- 

-- TABLE: ESTANTERIA 

--



CREATE TABLE ESTANTERIA(

    idEst           INT    NOT NULL,

    capacidadEst    INT    NOT NULL,

    nroPasillo      INT    NOT NULL,

    idSec           INT    NOT NULL,

    PRIMARY KEY (idEst)

)ENGINE=MYISAM

;







-- 

-- TABLE: ESTANTERIAVIRTUAL 

--



CREATE TABLE ESTANTERIAVIRTUAL(

    idEstV        INT             NOT NULL,

    tipoEstV      VARCHAR(25)     NOT NULL,

    nombreEstV    VARCHAR(225)    NOT NULL,

    idUsuario     INT             NOT NULL,

    PRIMARY KEY (idEstV)

)ENGINE=MYISAM

;







-- 

-- TABLE: IDIOMA 

--



CREATE TABLE IDIOMA(

    idIdioma        INT            NOT NULL,

    nombreIdioma    VARCHAR(25)    NOT NULL,

    codigoISO       INT,

    PRIMARY KEY (idIdioma)

)ENGINE=MYISAM

;







-- 

-- TABLE: LECTOR 

--



CREATE TABLE LECTOR(

    idUsuario       INT            NOT NULL,

    fechaFinMem     DATE           NOT NULL,

    categoriaMem    VARCHAR(25),

    PRIMARY KEY (idUsuario)

)ENGINE=MYISAM

;







-- 

-- TABLE: PENALIZACION 

--



CREATE TABLE PENALIZACION(

    idPena               INT     NOT NULL,

    duracion             INT     NOT NULL,

    fechaFinalizacion    DATE    NOT NULL,

    fechaImposicion      DATE    NOT NULL,

    idPrest              INT     NOT NULL,

    idUsuario            INT     NOT NULL,

    PRIMARY KEY (idPena)

)ENGINE=MYISAM

;







-- 

-- TABLE: perteneceA 

--



CREATE TABLE perteneceA(

    idCate    INT         NOT NULL,

    idDoc     CHAR(10)    NOT NULL,

    PRIMARY KEY (idCate, idDoc)

)ENGINE=MYISAM

;







-- 

-- TABLE: PRESTAMO 

--



CREATE TABLE PRESTAMO(

    idPrest            INT            NOT NULL,

    estado             VARCHAR(25)    NOT NULL,

    fechaDevolucion    DATE           NOT NULL,

    fechaPrestamo      DATE           NOT NULL,

    idUsuario          INT            NOT NULL,

    idDoc              CHAR(10),

    PRIMARY KEY (idPrest)

)ENGINE=MYISAM

;







-- 

-- TABLE: PROVEEDOR 

--



CREATE TABLE PROVEEDOR(

    idProv               INT             NOT NULL,

    fechaRegistroProv    DATE,

    ciudadProv           VARCHAR(225),

    telefonoProv         INT,

    paisProv             VARCHAR(225),

    nombreProv           VARCHAR(225)    NOT NULL,

    PRIMARY KEY (idProv)

)ENGINE=MYISAM

;







-- 

-- TABLE: SECCION 

--



CREATE TABLE SECCION(

    idSec            INT            NOT NULL,

    nombreSeccion    VARCHAR(50)    NOT NULL,

    idBiblio         INT            NOT NULL,

    PRIMARY KEY (idSec)

)ENGINE=MYISAM

;







-- 

-- TABLE: USUARIO 

--



CREATE TABLE USUARIO(

    idUsuario        INT             NOT NULL,

    ci               INT             NOT NULL,

    celular          CHAR(10)        NOT NULL,

    pais             VARCHAR(225)    NOT NULL,

    ciudad           VARCHAR(225)    NOT NULL,

    avenidaCalle     VARCHAR(25)     NOT NULL,

    numeroCasa       CHAR(10)        NOT NULL,

    nombre           VARCHAR(25)     NOT NULL,

    apePaterno       VARCHAR(25)     NOT NULL,

    apeMaterno       VARCHAR(25)     NOT NULL,

    fechaRegistro    DATE            NOT NULL,

    PRIMARY KEY (idUsuario)

)ENGINE=MYISAM

;







