
CREATE TABLE ADQUISICION(

    idAdq          NUMBER(38, 0)    NOT NULL,

    transaccion    VARCHAR2(225),

    presupuesto    NUMBER(38, 0),

    fechaAdq       DATE,

    idProv         NUMBER(38, 0)    NOT NULL,

    estado         VARCHAR2(25),

    idUsuario      NUMBER(38, 0)    NOT NULL,

    PRIMARY KEY (idAdq)

)

;

CREATE TABLE ALIMENTA(

    idDoc        CHAR(10)         NOT NULL,

    idEstV       NUMBER(38, 0)    NOT NULL,

    idUsuario    NUMBER(38, 0)    NOT NULL,

    PRIMARY KEY (idDoc, idEstV, idUsuario)

)

;

CREATE TABLE AUTOR(

    idAutor            NUMBER(38, 0)    NOT NULL,

    ciAutor            NUMBER(38, 0)    NOT NULL,

    nombreAutor        VARCHAR2(225),

    apePaternoAutor    VARCHAR2(225),

    apeMaterno         VARCHAR2(225),

    nacionalidad       VARCHAR2(225),

    fechaNac           DATE,

    sexo               VARCHAR2(25),

    PRIMARY KEY (idAutor)

)

;

CREATE TABLE BIBLIOTECA(

    idBiblio        NUMBER(38, 0)    NOT NULL,

    nombreBib       VARCHAR2(225)    NOT NULL,

    numeroBib       VARCHAR2(25)     NOT NULL,

    capacidad       NUMBER(38, 0),

    avenidaCalle    VARCHAR2(225)    NOT NULL,

    ciudad          VARCHAR2(250)    NOT NULL,

    pais            VARCHAR2(225)    NOT NULL,

    PRIMARY KEY (idBiblio)

);

CREATE TABLE BIBLIOTECARIO(

    idUsuario       NUMBER(38, 0)    NOT NULL,

    fechaInicioC    DATE             NOT NULL,

    cargo           VARCHAR2(25),

    fechaFinC       DATE             NOT NULL,

    PRIMARY KEY (idUsuario)

);

CREATE TABLE CATEGORIA(

    idCate             NUMBER(38, 0)    NOT NULL,

    nombreCate         VARCHAR2(225),

    descripcionCate    VARCHAR2(225),

    PRIMARY KEY (idCate)

)

;


CREATE TABLE CONTIENE(

    idDoc    CHAR(10)         NOT NULL,

    idAdq    NUMBER(38, 0)    NOT NULL,

    PRIMARY KEY (idDoc, idAdq)

)

;


CREATE TABLE DOCUMENTO(

    idDoc               CHAR(10)         NOT NULL,

    titulo              VARCHAR2(50)     NOT NULL,

    descripcion         VARCHAR2(250),

    fechaPublicacion    DATE,

    idEst               NUMBER(38, 0)    NOT NULL,

    idIdioma            NUMBER(38, 0)    NOT NULL,

    PRIMARY KEY (idDoc)

)

;

CREATE TABLE escritoPor(

    idAutor    NUMBER(38, 0)    NOT NULL,

    idDoc      CHAR(10)         NOT NULL,

    PRIMARY KEY (idAutor, idDoc)

)

;


CREATE TABLE ESTANTERIA(

    idEst           NUMBER(38, 0)    NOT NULL,

    capacidadEst    NUMBER(38, 0)    NOT NULL,

    nroPasillo      NUMBER(38, 0)    NOT NULL,

    idSec           NUMBER(38, 0)    NOT NULL,

    PRIMARY KEY (idEst)

)

;
CREATE TABLE ESTANTERIAVIRTUAL(

    idEstV        NUMBER(38, 0)    NOT NULL,

    tipoEstV      VARCHAR2(25)     NOT NULL,

    nombreEstV    VARCHAR2(225)    NOT NULL,

    idUsuario     NUMBER(38, 0)    NOT NULL,

    PRIMARY KEY (idEstV)

)

;


CREATE TABLE IDIOMA(

    idIdioma        NUMBER(38, 0)    NOT NULL,

    nombreIdioma    VARCHAR2(25)     NOT NULL,

    codigoISO       NUMBER(38, 0),

    PRIMARY KEY (idIdioma)

)

;


CREATE TABLE LECTOR(

    idUsuario       NUMBER(38, 0)    NOT NULL,

    fechaFinMem     DATE             NOT NULL,

    categoriaMem    VARCHAR2(25),

    PRIMARY KEY (idUsuario)

)

;
CREATE TABLE PENALIZACION(

    idPena               NUMBER(38, 0)    NOT NULL,

    duracion             NUMBER(38, 0)    NOT NULL,

    fechaFinalizacion    DATE             NOT NULL,

    fechaImposicion      DATE             NOT NULL,

    idPrest              NUMBER(38, 0)    NOT NULL,

    idUsuario            NUMBER(38, 0)    NOT NULL,

    PRIMARY KEY (idPena)

)

;

CREATE TABLE perteneceA(

    idCate    NUMBER(38, 0)    NOT NULL,

    idDoc     CHAR(10)         NOT NULL,

    PRIMARY KEY (idCate, idDoc)

)

;

CREATE TABLE PRESTAMO(

    idPrest            NUMBER(38, 0)    NOT NULL,

    estado             VARCHAR2(25)     NOT NULL,

    fechaDevolucion    DATE             NOT NULL,

    fechaPrestamo      DATE             NOT NULL,

    idUsuario          NUMBER(38, 0)    NOT NULL,

    idDoc              CHAR(10),

    PRIMARY KEY (idPrest)

)

;

CREATE TABLE PROVEEDOR(

    idProv               NUMBER(38, 0)    NOT NULL,

    fechaRegistroProv    DATE,

    ciudadProv           VARCHAR2(225),

    telefonoProv         NUMBER(38, 0),

    paisProv             VARCHAR2(225),

    nombreProv           VARCHAR2(225)    NOT NULL,

    PRIMARY KEY (idProv)

)

;

CREATE TABLE SECCION(

    idSec            NUMBER(38, 0)    NOT NULL,

    nombreSeccion    VARCHAR2(50)     NOT NULL,

    idBiblio         NUMBER(38, 0)    NOT NULL,

    PRIMARY KEY (idSec)

)

;

CREATE TABLE USUARIO(

    idUsuario        NUMBER(38, 0)    NOT NULL,

    ci               NUMBER(38, 0)    NOT NULL,

    celular          CHAR(10)         NOT NULL,

    pais             VARCHAR2(225)    NOT NULL,

    ciudad           VARCHAR2(225)    NOT NULL,

    avenidaCalle     VARCHAR2(25)     NOT NULL,

    numeroCasa       CHAR(10)         NOT NULL,

    nombre           VARCHAR2(25)     NOT NULL,

    apePaterno       VARCHAR2(25)     NOT NULL,

    apeMaterno       VARCHAR2(25)     NOT NULL,

    fechaRegistro    DATE             NOT NULL,

    PRIMARY KEY (idUsuario)

)

;







