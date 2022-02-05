-- Table: public.Respuesta_administrativa

-- DROP TABLE IF EXISTS public."Respuesta_administrativa";

CREATE TABLE IF NOT EXISTS public."Respuesta_administrativa"
(
    id_repuesta bigint NOT NULL DEFAULT nextval('"Respuesta_administrativa_id_repuesta_seq"'::regclass),
    id_radicado bigint NOT NULL,
    respuesta character varying(255) COLLATE pg_catalog."default",
    fecha_creacion date,
    CONSTRAINT "Respuesta_administrativa_pkey" PRIMARY KEY (id_repuesta),
    CONSTRAINT "radicado-respuesta" FOREIGN KEY (id_radicado)
        REFERENCES public."RadicadosPQ" (id_radicado) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS public."Respuesta_administrativa"
    OWNER to postgres;