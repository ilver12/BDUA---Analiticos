
USE BDUA;
CREATE TABLE Condicion_del_beneficiario (
    ID_Condicion_del_beneficiario INT PRIMARY KEY,
    Condicion_del_beneficiario VARCHAR(255)
);
CREATE TABLE Departamento (
    ID_Departamento INT PRIMARY KEY,
    Departamento VARCHAR(255)
);
CREATE TABLE Genero (
    ID_Genero INT PRIMARY KEY,
    Genero VARCHAR(255)
);
CREATE TABLE Grupo_poblacional_del_afiliado (
    ID_Grupo_poblacional_del_afiliado INT PRIMARY KEY,
    Grupo_poblacional_del_afiliado VARCHAR(255)
);
CREATE TABLE Municipio (
    ID_Municipio INT PRIMARY KEY,
    Municipio VARCHAR(255)
);
CREATE TABLE Nivel_del_sisben (
    ID_Nivel_del_Sisben INT PRIMARY KEY,
    Nivel_del_Sisben VARCHAR(255)
);
CREATE TABLE Tipo_de_afiliado (
    ID_Tipo_de_afiliado INT PRIMARY KEY,
    Tipo_de_afiliado VARCHAR(255)
);
CREATE TABLE Zona_de_afiliacion (
    ID_Zona_de_afiliacion INT PRIMARY KEY,
    Zona_de_afiliacion VARCHAR(255)
);
CREATE TABLE afiliados (
    grupo_etario TEXT,
    codigo_entidad TEXT,
    nombre_entidad TEXT,
    regimen TEXT,
    estado_afiliado TEXT,
    cantidad INTEGER,
    id_genero INTEGER,
    id_condicion_beneficiario INTEGER,
    id_zona_afiliacion INTEGER,
    id_departamento INTEGER,
    id_municipio INTEGER,
    id_nivel_sisben INTEGER,
    id_grupo_poblacional INTEGER,
    id_tipo_afiliado INTEGER,
    FOREIGN KEY (id_genero) REFERENCES Genero(ID_Genero),
    FOREIGN KEY (id_condicion_beneficiario) REFERENCES Condicion_del_beneficiario(ID_Condicion_del_beneficiario),
    FOREIGN KEY (id_zona_afiliacion) REFERENCES Zona_de_afiliacion(ID_Zona_de_afiliacion),
    FOREIGN KEY (id_departamento) REFERENCES Departamento(ID_Departamento),
    FOREIGN KEY (id_municipio) REFERENCES Municipio(ID_Municipio),
    FOREIGN KEY (id_nivel_sisben) REFERENCES Nivel_del_sisben(ID_Nivel_del_Sisben),
    FOREIGN KEY (id_grupo_poblacional) REFERENCES Grupo_poblacional_del_afiliado(ID_Grupo_poblacional_del_afiliado),
    FOREIGN KEY (id_tipo_afiliado) REFERENCES Tipo_de_afiliado(ID_Tipo_de_afiliado)
);
