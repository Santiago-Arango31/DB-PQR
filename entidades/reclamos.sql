-- Table: public.Reclamo

-- DROP TABLE IF EXISTS public."Reclamo";

CREATE TABLE IF NOT EXISTS public."Reclamo"
(
    id_reclamo bigint NOT NULL DEFAULT nextval('"Reclamo_id_reclamo_seq"'::regclass),
    id_radicado bigint NOT NULL,
    reclamo character varying(255) COLLATE pg_catalog."default" NOT NULL,
    fecha_creacion date NOT NULL,
    CONSTRAINT "Reclamo_pkey" PRIMARY KEY (id_reclamo),
    CONSTRAINT radicado_reclamo FOREIGN KEY (id_radicado)
        REFERENCES public."RadicadosPQ" (id_radicado) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION
        NOT VALID
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS public."Reclamo"
    OWNER to postgres;