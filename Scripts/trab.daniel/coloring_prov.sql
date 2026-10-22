DROP SCHEMA if exists public CASCADE;
CREATE SCHEMA public;
SET search_path TO public;

-- Coloca a instância em um formato legível para o gbbs
CREATE TABLE gbbs_conv (
    id         INT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    conversor  VARCHAR(50),           
    input      VARCHAR(255),          
    output     VARCHAR(255),          
    data   TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP
);

-- Resolve o que o cara de cima gerou
CREATE TABLE gbbs_solve (
    id         INT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
	anterior   INT references gbbs_conv,
    conversor  VARCHAR(50),           
    argumentos VARCHAR(100),          
    input      VARCHAR(255),        
    output     VARCHAR(255),         
    correto    BOOLEAN,              
    data   TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP
);

-- Pega o número de cores usadas pelo gbbs, porque a saída dele não é confiável (っ╥﹏╥ς)
CREATE TABLE count_k (
    id         INT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
	anterior   INT references gbbs_solve,
    conversor  VARCHAR(50),         
    input      VARCHAR(255),         
    output     VARCHAR(255),         
    data   TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP
);

-- Gera o .cnf
CREATE TABLE sat_reduc (
    id         INT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
	anterior   INT references count_k,
    conversor  VARCHAR(50),          
    argumentos VARCHAR(100),         
    input      VARCHAR(255),      
    output     VARCHAR(255),       
    data   TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE sat_solve (
    id         INT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
	anterior   INT references sat_reduc,
    conversor  VARCHAR(50),         
    argumentos VARCHAR(100),        
    input      VARCHAR(255),      
    output     VARCHAR(255),     
    correto    BOOLEAN,              
    data   TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE gen_csv (
    id         INT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
	output  VARCHAR(50),
    data   TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE used_in_gen_csv (
    solver_id         INT references sat_solve,
    collector_id         INT references gen_csv,     
	PRIMARY KEY (solver_id, collector_id)
);

