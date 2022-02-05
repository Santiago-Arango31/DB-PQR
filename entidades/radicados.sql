-- Table: public.RadicadosPQ

-- DROP TABLE IF EXISTS public."RadicadosPQ";

CREATE TABLE IF NOT EXISTS public."RadicadosPQ"
(
    id_radicado bigint NOT NULL DEFAULT nextval('"RadicadosPQ_id_radicado_seq"'::regclass),
    id_usuario bigint NOT NULL,
    tipo character varying(100) COLLATE pg_catalog."default" NOT NULL,
    fecha_creacion date NOT NULL,
    fecha_modificacion date NOT NULL,
    CONSTRAINT "RadicadosPQ_pkey" PRIMARY KEY (id_radicado),
    CONSTRAINT "usuario_radicadoPQ" FOREIGN KEY (id_usuario)
        REFERENCES public."Usuarios" (id_usuario) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS public."RadicadosPQ"
    OWNER to postgres;