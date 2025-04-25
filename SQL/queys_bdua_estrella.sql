USE BDUA_estrella;
-- Dimensión de afiliados
CREATE TABLE dim_afiliados (
    id INT AUTO_INCREMENT PRIMARY KEY,
    genero VARCHAR(50),
    grupo_etario VARCHAR(50),
    grupo_poblacional VARCHAR(50)
);

-- Dimensión de lugar
CREATE TABLE dim_lugar (
    id INT AUTO_INCREMENT PRIMARY KEY,
    departamento VARCHAR(50),
    municipio VARCHAR(50),
    zona VARCHAR(50)
);

-- Dimensión de tipo de afiliado
CREATE TABLE dim_tipo_afiliado (
    id INT AUTO_INCREMENT PRIMARY KEY,
    tipo VARCHAR(50),
    estado VARCHAR(50)
);

-- Dimensión de entidad
CREATE TABLE dim_entidad (
    id INT AUTO_INCREMENT PRIMARY KEY,
    codigo VARCHAR(10),
    nombre VARCHAR(100)
);

-- Dimensión de condición del beneficiario
CREATE TABLE condicion_beneficiario (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(100)
);

-- Dimensión de régimen
CREATE TABLE regimen (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(50)
);

-- Tabla de hechos
CREATE TABLE hechos_afiliados (
    id INT AUTO_INCREMENT PRIMARY KEY,
    dim_afiliados_id INT,
    dim_lugar_id INT,
    dim_tipo_afiliado_id INT,
    dim_entidad_id INT,
    condicion_beneficiario_id INT,
    regimen_id INT,
    cantidad INT,
    FOREIGN KEY (dim_afiliados_id) REFERENCES dim_afiliados(id),
    FOREIGN KEY (dim_lugar_id) REFERENCES dim_lugar(id),
    FOREIGN KEY (dim_tipo_afiliado_id) REFERENCES dim_tipo_afiliado(id),
    FOREIGN KEY (dim_entidad_id) REFERENCES dim_entidad(id),
    FOREIGN KEY (condicion_beneficiario_id) REFERENCES condicion_beneficiario(id),
    FOREIGN KEY (regimen_id) REFERENCES regimen(id)
);
