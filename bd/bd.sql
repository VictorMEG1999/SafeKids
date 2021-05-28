
CREATE TABLE padre_table (
    Id_padre int(5) auto NOT NULL PRIMARY KEY,
    Nombre varchar(20) NOT NULL,
    Ap_paterno  varchar(50) NOT NULL,
    Ap_materno varchar(50) NOT NULL,
    Fecha_nacimineto date NOT NULL,
    Email varchar(50) UNIQUE NOT NULL,	
    Password varchar(50) NOT NULL
)
CREATE TABLE nino_table(
    Id_nino INT(5) AUTO_INCREMENT PRIMARY KEY NOT NULL,
    Nombre VARCHAR(20) NOT NULL,
    Ap_paterno VARCHAR(50) NOT NULL,
    Ap_materno VARCHAR(50) NOT NULL,
    Fecha_nacimineto DATE NOT NULL,
    Id_padre int(5)not null ,
    Id_pulsera INT(5) UNIQUE NOT NULL,
    FOREIGN KEy(Id_padre) REFERENCES padre_table (Id_padre),
    FOREIGN KEy(Id_pulsera) REFERENCES pulsera_table (Id_pulsera)
)

CREATE TABLE pulsera_table (
  Id_pulsera int(5) PRIMARY KEY NOT NULL
)


