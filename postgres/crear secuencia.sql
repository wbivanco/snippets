-- Sequence: public.proveedores_devolucion_id_seq

-- DROP SEQUENCE public.proveedores_devolucion_id_seq;

-- Creo la secuencia
CREATE SEQUENCE public.proveedores_devolucion_id_seq
  INCREMENT 1
  MINVALUE 1
  MAXVALUE 9223372036854775807
  START 1
  CACHE 1;
ALTER TABLE public.proveedores_devolucion_id_seq
  OWNER TO postgres;

-- Asigno una secuencia a una tabla específica
ALTER TABLE proveedores_devolucion ALTER COLUMN id SET DEFAULT nextval('proveedores_devolucion_id_seq');