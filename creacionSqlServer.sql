/*

 * ER/Studio Data Architect SQL Code Generation

 * Project :      Model1.DM1

 *

 * Date Created : Monday, December 18, 2023 01:18:31

 * Target DBMS : Microsoft SQL Server 2019

 */



/* 

 * TABLE: ADQUISICION 

 */



CREATE TABLE ADQUISICION(

    idAdq          int             NOT NULL,

    transaccion    varchar(225)    NULL,

    presupuesto    int             NULL,

    fechaAdq       date            NULL,

    idProv         int             NOT NULL,

    estado         varchar(25)     NULL,

    idUsuario      int             NOT NULL,

    PRIMARY KEY NONCLUSTERED (idAdq)

)



go





IF OBJECT_ID('ADQUISICION') IS NOT NULL

    PRINT '<<< CREATED TABLE ADQUISICION >>>'

ELSE

    PRINT '<<< FAILED CREATING TABLE ADQUISICION >>>'

go



/* 

 * TABLE: ALIMENTA 

 */



CREATE TABLE ALIMENTA(

    idDoc        char(10)    NOT NULL,

    idEstV       int         NOT NULL,

    idUsuario    int         NOT NULL,

    PRIMARY KEY NONCLUSTERED (idDoc, idEstV, idUsuario)

)



go





IF OBJECT_ID('ALIMENTA') IS NOT NULL

    PRINT '<<< CREATED TABLE ALIMENTA >>>'

ELSE

    PRINT '<<< FAILED CREATING TABLE ALIMENTA >>>'

go



/* 

 * TABLE: AUTOR 

 */



CREATE TABLE AUTOR(

    idAutor            int             NOT NULL,

    ciAutor            int             NOT NULL,

    nombreAutor        varchar(225)    NULL,

    apePaternoAutor    varchar(225)    NULL,

    apeMaterno         varchar(225)    NULL,

    nacionalidad       varchar(225)    NULL,

    fechaNac           date            NULL,

    sexo               varchar(25)     NULL,

    PRIMARY KEY NONCLUSTERED (idAutor)

)



go





IF OBJECT_ID('AUTOR') IS NOT NULL

    PRINT '<<< CREATED TABLE AUTOR >>>'

ELSE

    PRINT '<<< FAILED CREATING TABLE AUTOR >>>'

go



/* 

 * TABLE: BIBLIOTECA 

 */



CREATE TABLE BIBLIOTECA(

    idBiblio        int             NOT NULL,

    nombreBib       varchar(225)    NOT NULL,

    numeroBib       varchar(25)     NOT NULL,

    capacidad       int             NULL,

    avenidaCalle    varchar(225)    NOT NULL,

    ciudad          varchar(250)    NOT NULL,

    pais            varchar(225)    NOT NULL,

    PRIMARY KEY NONCLUSTERED (idBiblio)

)



go





IF OBJECT_ID('BIBLIOTECA') IS NOT NULL

    PRINT '<<< CREATED TABLE BIBLIOTECA >>>'

ELSE

    PRINT '<<< FAILED CREATING TABLE BIBLIOTECA >>>'

go



/* 

 * TABLE: BIBLIOTECARIO 

 */



CREATE TABLE BIBLIOTECARIO(

    idUsuario       int            NOT NULL,

    fechaInicioC    date           NOT NULL,

    cargo           varchar(25)    NULL,

    fechaFinC       date           NOT NULL,

    PRIMARY KEY NONCLUSTERED (idUsuario)

)



go





IF OBJECT_ID('BIBLIOTECARIO') IS NOT NULL

    PRINT '<<< CREATED TABLE BIBLIOTECARIO >>>'

ELSE

    PRINT '<<< FAILED CREATING TABLE BIBLIOTECARIO >>>'

go



/* 

 * TABLE: CATEGORIA 

 */



CREATE TABLE CATEGORIA(

    idCate             int             NOT NULL,

    nombreCate         varchar(225)    NULL,

    descripcionCate    varchar(225)    NULL,

    PRIMARY KEY NONCLUSTERED (idCate)

)



go





IF OBJECT_ID('CATEGORIA') IS NOT NULL

    PRINT '<<< CREATED TABLE CATEGORIA >>>'

ELSE

    PRINT '<<< FAILED CREATING TABLE CATEGORIA >>>'

go



/* 

 * TABLE: CONTIENE 

 */



CREATE TABLE CONTIENE(

    idDoc    char(10)    NOT NULL,

    idAdq    int         NOT NULL,

    PRIMARY KEY NONCLUSTERED (idDoc, idAdq)

)



go





IF OBJECT_ID('CONTIENE') IS NOT NULL

    PRINT '<<< CREATED TABLE CONTIENE >>>'

ELSE

    PRINT '<<< FAILED CREATING TABLE CONTIENE >>>'

go



/* 

 * TABLE: DOCUMENTO 

 */



CREATE TABLE DOCUMENTO(

    idDoc               char(10)        NOT NULL,

    titulo              varchar(50)     NOT NULL,

    descripcion         varchar(250)    NULL,

    fechaPublicacion    date            NULL,

    idEst               int             NOT NULL,

    idIdioma            int             NOT NULL,

    PRIMARY KEY NONCLUSTERED (idDoc)

)



go





IF OBJECT_ID('DOCUMENTO') IS NOT NULL

    PRINT '<<< CREATED TABLE DOCUMENTO >>>'

ELSE

    PRINT '<<< FAILED CREATING TABLE DOCUMENTO >>>'

go



/* 

 * TABLE: escritoPor 

 */



CREATE TABLE escritoPor(

    idAutor    int         NOT NULL,

    idDoc      char(10)    NOT NULL,

    PRIMARY KEY NONCLUSTERED (idAutor, idDoc)

)



go





IF OBJECT_ID('escritoPor') IS NOT NULL

    PRINT '<<< CREATED TABLE escritoPor >>>'

ELSE

    PRINT '<<< FAILED CREATING TABLE escritoPor >>>'

go



/* 

 * TABLE: ESTANTERIA 

 */



CREATE TABLE ESTANTERIA(

    idEst           int    NOT NULL,

    capacidadEst    int    NOT NULL,

    nroPasillo      int    NOT NULL,

    idSec           int    NOT NULL,

    PRIMARY KEY NONCLUSTERED (idEst)

)



go





IF OBJECT_ID('ESTANTERIA') IS NOT NULL

    PRINT '<<< CREATED TABLE ESTANTERIA >>>'

ELSE

    PRINT '<<< FAILED CREATING TABLE ESTANTERIA >>>'

go



/* 

 * TABLE: ESTANTERIAVIRTUAL 

 */



CREATE TABLE ESTANTERIAVIRTUAL(

    idEstV        int             NOT NULL,

    tipoEstV      varchar(25)     NOT NULL,

    nombreEstV    varchar(225)    NOT NULL,

    idUsuario     int             NOT NULL,

    PRIMARY KEY NONCLUSTERED (idEstV)

)



go





IF OBJECT_ID('ESTANTERIAVIRTUAL') IS NOT NULL

    PRINT '<<< CREATED TABLE ESTANTERIAVIRTUAL >>>'

ELSE

    PRINT '<<< FAILED CREATING TABLE ESTANTERIAVIRTUAL >>>'

go



/* 

 * TABLE: IDIOMA 

 */



CREATE TABLE IDIOMA(

    idIdioma        int            NOT NULL,

    nombreIdioma    varchar(25)    NOT NULL,

    codigoISO       int            NULL,

    PRIMARY KEY NONCLUSTERED (idIdioma)

)



go





IF OBJECT_ID('IDIOMA') IS NOT NULL

    PRINT '<<< CREATED TABLE IDIOMA >>>'

ELSE

    PRINT '<<< FAILED CREATING TABLE IDIOMA >>>'

go



/* 

 * TABLE: LECTOR 

 */



CREATE TABLE LECTOR(

    idUsuario       int            NOT NULL,

    fechaFinMem     date           NOT NULL,

    categoriaMem    varchar(25)    NULL,

    PRIMARY KEY NONCLUSTERED (idUsuario)

)



go





IF OBJECT_ID('LECTOR') IS NOT NULL

    PRINT '<<< CREATED TABLE LECTOR >>>'

ELSE

    PRINT '<<< FAILED CREATING TABLE LECTOR >>>'

go



/* 

 * TABLE: PENALIZACION 

 */



CREATE TABLE PENALIZACION(

    idPena               int     NOT NULL,

    duracion             int     NOT NULL,

    fechaFinalizacion    date    NOT NULL,

    fechaImposicion      date    NOT NULL,

    idPrest              int     NOT NULL,

    idUsuario            int     NOT NULL,

    PRIMARY KEY NONCLUSTERED (idPena)

)



go





IF OBJECT_ID('PENALIZACION') IS NOT NULL

    PRINT '<<< CREATED TABLE PENALIZACION >>>'

ELSE

    PRINT '<<< FAILED CREATING TABLE PENALIZACION >>>'

go



/* 

 * TABLE: perteneceA 

 */



CREATE TABLE perteneceA(

    idCate    int         NOT NULL,

    idDoc     char(10)    NOT NULL,

    PRIMARY KEY NONCLUSTERED (idCate, idDoc)

)



go





IF OBJECT_ID('perteneceA') IS NOT NULL

    PRINT '<<< CREATED TABLE perteneceA >>>'

ELSE

    PRINT '<<< FAILED CREATING TABLE perteneceA >>>'

go



/* 

 * TABLE: PRESTAMO 

 */



CREATE TABLE PRESTAMO(

    idPrest            int            NOT NULL,

    estado             varchar(25)    NOT NULL,

    fechaDevolucion    date           NOT NULL,

    fechaPrestamo      date           NOT NULL,

    idUsuario          int            NOT NULL,

    idDoc              char(10)       NULL,

    PRIMARY KEY NONCLUSTERED (idPrest)

)



go





IF OBJECT_ID('PRESTAMO') IS NOT NULL

    PRINT '<<< CREATED TABLE PRESTAMO >>>'

ELSE

    PRINT '<<< FAILED CREATING TABLE PRESTAMO >>>'

go



/* 

 * TABLE: PROVEEDOR 

 */



CREATE TABLE PROVEEDOR(

    idProv               int             NOT NULL,

    fechaRegistroProv    date            NULL,

    ciudadProv           varchar(225)    NULL,

    telefonoProv         int             NULL,

    paisProv             varchar(225)    NULL,

    nombreProv           varchar(225)    NOT NULL,

    PRIMARY KEY NONCLUSTERED (idProv)

)



go





IF OBJECT_ID('PROVEEDOR') IS NOT NULL

    PRINT '<<< CREATED TABLE PROVEEDOR >>>'

ELSE

    PRINT '<<< FAILED CREATING TABLE PROVEEDOR >>>'

go



/* 

 * TABLE: SECCION 

 */



CREATE TABLE SECCION(

    idSec            int            NOT NULL,

    nombreSeccion    varchar(50)    NOT NULL,

    idBiblio         int            NOT NULL,

    PRIMARY KEY NONCLUSTERED (idSec)

)



go





IF OBJECT_ID('SECCION') IS NOT NULL

    PRINT '<<< CREATED TABLE SECCION >>>'

ELSE

    PRINT '<<< FAILED CREATING TABLE SECCION >>>'

go



/* 

 * TABLE: USUARIO 

 */



CREATE TABLE USUARIO(

    idUsuario        int             NOT NULL,

    ci               int             NOT NULL,

    celular          char(10)        NOT NULL,

    pais             varchar(225)    NOT NULL,

    ciudad           varchar(225)    NOT NULL,

    avenidaCalle     varchar(25)     NOT NULL,

    numeroCasa       char(10)        NOT NULL,

    nombre           varchar(25)     NOT NULL,

    apePaterno       varchar(25)     NOT NULL,

    apeMaterno       varchar(25)     NOT NULL,

    fechaRegistro    date            NOT NULL,

    PRIMARY KEY NONCLUSTERED (idUsuario)

)



go





IF OBJECT_ID('USUARIO') IS NOT NULL

    PRINT '<<< CREATED TABLE USUARIO >>>'

ELSE

    PRINT '<<< FAILED CREATING TABLE USUARIO >>>'

go



