-- Database: "BigFoot_Project"

-- DROP DATABASE "BigFoot_Project";

CREATE DATABASE "BigFoot_Project"
  WITH OWNER = postgres
       ENCODING = 'UTF8'
       TABLESPACE = pg_default
       LC_COLLATE = 'Portuguese_Brazil.1252'
       LC_CTYPE = 'Portuguese_Brazil.1252'
       CONNECTION LIMIT = -1;

--Criacao Tabela Calcado
CREATE TABLE public."Calcado"
(
  id integer DEFAULT nextval('calcado_sequence'::regclass),
  descricao text,
  genero text,
  preco double precision,
  categoria text,
  marca text,
  tamanho integer,
  imagem text
)
WITH (
  OIDS=FALSE
);
ALTER TABLE public."Calcado"
  OWNER TO postgres;

  ---Criacao da Sequence de Calcado
CREATE SEQUENCE "calcado_sequence"
 INCREMENT 1
 MINVALUE 1
 MAXVALUE 9223372036854775807
 START 1
 CACHE 1;
ALTER TABLE public."Calcado" ALTER COLUMN id SET DEFAULT NEXTVAL('calcado_sequence'::regclass);



--Criacao da Tabela Atendente
  CREATE TABLE public."Atendente"
(
   id integer, 
   nome text, 
   car_trabalho text, 
   cpf text, 
   rg text
) 
WITH (
  OIDS = FALSE
)
;

---Criacao da Sequence de Atendente( se quiser nesse caso pode inserir id direto no Insert,somente nessa tabela isso é possivel!)
CREATE SEQUENCE "atendente_sequence"
 INCREMENT 1
 MINVALUE 1
 MAXVALUE 9223372036854775807
 START 1
 CACHE 1;
ALTER TABLE public."Atendente" ALTER COLUMN id SET DEFAULT NEXTVAL('atendente_sequence'::regclass);


-- Insert em Atendentes(Temporario até que haja Insert de Atendentes ou nao kkkk)
INSERT INTO public."Atendente"(
             nome, car_trabalho, cpf, rg)
    VALUES ('Severino','10799906','39226830848','505692239');

    INSERT INTO public."Atendente"(
             nome, car_trabalho, cpf, rg)
    VALUES ('Peter Parker','20787306','3922203848','505692931');

    INSERT INTO public."Atendente"(
             nome, car_trabalho, cpf, rg)
    VALUES ('Ultron','10720306','20221500848','689692239');
