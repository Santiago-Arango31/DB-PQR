-- Table: public.reclamos

-- DROP TABLE IF EXISTS public.reclamos;

CREATE TABLE IF NOT EXISTS public.reclamos
(
    id_reclamo bigint NOT NULL DEFAULT nextval('"Reclamo_id_reclamo_seq"'::regclass),
    id_radicado bigint NOT NULL,
    reclamo character varying(255) COLLATE pg_catalog."default" NOT NULL,
    fecha_creacion date NOT NULL,
    CONSTRAINT "Reclamo_pkey" PRIMARY KEY (id_reclamo),
    CONSTRAINT reclamos_id_radicado_key UNIQUE (id_radicado),
    CONSTRAINT radicado_reclamo FOREIGN KEY (id_radicado)
        REFERENCES public.radicadospq (id_radicado) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION
        NOT VALID
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS public.reclamos
    OWNER to postgres;