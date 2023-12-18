--

-- ER/Studio Data Architect SQL Code Generation

-- Project :      Model1.DM1

--

-- Date Created : Monday, December 18, 2023 05:13:47

-- Target DBMS : PostgreSQL 10.x-12.x

--



-- 

-- TABLE: "ADQUISICION" 

--



CREATE TABLE "ADQUISICION"(

    "idAdq"        integer         NOT NULL,

    transaccion    varchar(225),

    presupuesto    integer,

    "fechaAdq"     date,

    "idProv"       integer         NOT NULL,

    estado         varchar(25),

    "idUsuario"    integer         NOT NULL,

    PRIMARY KEY ("idAdq")

)

;







-- 

-- TABLE: "ALIMENTA" 

--



CREATE TABLE "ALIMENTA"(

    "idDoc"      character(10)    NOT NULL,

    "idEstV"     integer          NOT NULL,

    "idUsuario"  integer          NOT NULL,

    PRIMARY KEY ("idDoc", "idEstV", "idUsuario")

)

;







-- 

-- TABLE: "AUTOR" 

--



CREATE TABLE "AUTOR"(

    "idAutor"          integer         NOT NULL,

    "ciAutor"          integer         NOT NULL,

    "nombreAutor"      varchar(225),

    "apePaternoAutor"  varchar(225),

    "apeMaterno"       varchar(225),

    nacionalidad       varchar(225),

    "fechaNac"         date,

    sexo               varchar(25),

    PRIMARY KEY ("idAutor")

)

;







-- 

-- TABLE: "BIBLIOTECA" 

--



CREATE TABLE "BIBLIOTECA"(

    "idBiblio"      integer         NOT NULL,

    "nombreBib"     varchar(225)    NOT NULL,

    "numeroBib"     varchar(25)     NOT NULL,

    capacidad       integer,

    "avenidaCalle"  varchar(225)    NOT NULL,

    ciudad          varchar(250)    NOT NULL,

    pais            varchar(225)    NOT NULL,

    PRIMARY KEY ("idBiblio")

)

;







-- 

-- TABLE: "BIBLIOTECARIO" 

--



CREATE TABLE "BIBLIOTECARIO"(

    "idUsuario"     integer        NOT NULL,

    "fechaInicioC"  date           NOT NULL,

    cargo           varchar(25),

    "fechaFinC"     date           NOT NULL,

    PRIMARY KEY ("idUsuario")

)

;







-- 

-- TABLE: "CATEGORIA" 

--



CREATE TABLE "CATEGORIA"(

    "idCate"           integer         NOT NULL,

    "nombreCate"       varchar(225),

    "descripcionCate"  varchar(225),

    PRIMARY KEY ("idCate")

)

;







-- 

-- TABLE: "CONTIENE" 

--



CREATE TABLE "CONTIENE"(

    "idDoc"  character(10)    NOT NULL,

    "idAdq"  integer          NOT NULL,

    PRIMARY KEY ("idDoc", "idAdq")

)

;







-- 

-- TABLE: "DOCUMENTO" 

--



CREATE TABLE "DOCUMENTO"(

    "idDoc"             character(10)    NOT NULL,

    titulo              varchar(50)      NOT NULL,

    descripcion         varchar(250),

    "fechaPublicacion"  date,

    "idEst"             integer          NOT NULL,

    "idIdioma"          integer          NOT NULL,

    PRIMARY KEY ("idDoc")

)

;







-- 

-- TABLE: "escritoPor" 

--



CREATE TABLE "escritoPor"(

    "idAutor"  integer          NOT NULL,

    "idDoc"    character(10)    NOT NULL,

    PRIMARY KEY ("idAutor", "idDoc")

)

;







-- 

-- TABLE: "ESTANTERIA" 

--



CREATE TABLE "ESTANTERIA"(

    "idEst"         integer    NOT NULL,

    "capacidadEst"  integer    NOT NULL,

    "nroPasillo"    integer    NOT NULL,

    "idSec"         integer    NOT NULL,

    PRIMARY KEY ("idEst")

)

;







-- 

-- TABLE: "ESTANTERIAVIRTUAL" 

--



CREATE TABLE "ESTANTERIAVIRTUAL"(

    "idEstV"      integer         NOT NULL,

    "tipoEstV"    varchar(25)     NOT NULL,

    "nombreEstV"  varchar(225)    NOT NULL,

    "idUsuario"   integer         NOT NULL,

    PRIMARY KEY ("idEstV")

)

;







-- 

-- TABLE: "IDIOMA" 

--



CREATE TABLE "IDIOMA"(

    "idIdioma"      integer        NOT NULL,

    "nombreIdioma"  varchar(25)    NOT NULL,

    "codigoISO"     integer,

    PRIMARY KEY ("idIdioma")

)

;







-- 

-- TABLE: "LECTOR" 

--



CREATE TABLE "LECTOR"(

    "idUsuario"     integer        NOT NULL,

    "fechaFinMem"   date           NOT NULL,

    "categoriaMem"  varchar(25),

    PRIMARY KEY ("idUsuario")

)

;







-- 

-- TABLE: "PENALIZACION" 

--



CREATE TABLE "PENALIZACION"(

    "idPena"             integer    NOT NULL,

    duracion             integer    NOT NULL,

    "fechaFinalizacion"  date       NOT NULL,

    "fechaImposicion"    date       NOT NULL,

    "idPrest"            integer    NOT NULL,

    "idUsuario"          integer    NOT NULL,

    PRIMARY KEY ("idPena")

)

;







-- 

-- TABLE: "perteneceA" 

--



CREATE TABLE "perteneceA"(

    "idCate"  integer          NOT NULL,

    "idDoc"   character(10)    NOT NULL,

    PRIMARY KEY ("idCate", "idDoc")

)

;







-- 

-- TABLE: "PRESTAMO" 

--



CREATE TABLE "PRESTAMO"(

    "idPrest"          integer          NOT NULL,

    estado             varchar(25)      NOT NULL,

    "fechaDevolucion"  date             NOT NULL,

    "fechaPrestamo"    date             NOT NULL,

    "idUsuario"        integer          NOT NULL,

    "idDoc"            character(10),

    PRIMARY KEY ("idPrest")

)

;







-- 

-- TABLE: "PROVEEDOR" 

--



CREATE TABLE "PROVEEDOR"(

    "idProv"             integer         NOT NULL,

    "fechaRegistroProv"  date,

    "ciudadProv"         varchar(225),

    "telefonoProv"       integer,

    "paisProv"           varchar(225),

    "nombreProv"         varchar(225)    NOT NULL,

    PRIMARY KEY ("idProv")

)

;







-- 

-- TABLE: "SECCION" 

--



CREATE TABLE "SECCION"(

    "idSec"          integer        NOT NULL,

    "nombreSeccion"  varchar(50)    NOT NULL,

    "idBiblio"       integer        NOT NULL,

    PRIMARY KEY ("idSec")

)

;







-- 

-- TABLE: "USUARIO" 

--



CREATE TABLE "USUARIO"(

    "idUsuario"      integer          NOT NULL,

    ci               integer          NOT NULL,

    celular          character(10)    NOT NULL,

    pais             varchar(225)     NOT NULL,

    ciudad           varchar(225)     NOT NULL,

    "avenidaCalle"   varchar(25)      NOT NULL,

    "numeroCasa"     character(10)    NOT NULL,

    nombre           varchar(25)      NOT NULL,

    "apePaterno"     varchar(25)      NOT NULL,

    "apeMaterno"     varchar(25)      NOT NULL,

    "fechaRegistro"  date             NOT NULL,

    PRIMARY KEY ("idUsuario")

)

;







