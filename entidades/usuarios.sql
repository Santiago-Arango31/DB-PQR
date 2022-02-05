-- Table: public.Usuarios

-- DROP TABLE IF EXISTS public."Usuarios";

CREATE TABLE IF NOT EXISTS public."Usuarios"
(
    id_usuario bigint NOT NULL DEFAULT nextval('"Usuarios_id_usuario_seq"'::regclass),
    nombre character varying(255) COLLATE pg_catalog."default" NOT NULL,
    apellido character varying(255) COLLATE pg_catalog."default" NOT NULL,
    identificacion bigint NOT NULL,
    correo character varying(255) COLLATE pg_catalog."default" NOT NULL,
    CONSTRAINT "Usuarios_pkey" PRIMARY KEY (id_usuario),
    CONSTRAINT identificacion UNIQUE (identificacion)
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS public."Usuarios"
    OWNER to postgres;