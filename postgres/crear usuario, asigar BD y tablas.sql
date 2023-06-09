-- Creo el usuario y le asigno una clave
CREATE USER iasimmo WITH PASSWORD 'immo4862';

-- Asigno todos los privilegios de una BD a un usuario específico
GRANT ALL PRIVILEGES ON DATABASE ias_immobilien TO iasimmo;

-- Cambio el propietario de las tablas asignandocelas a un usuario específico
ALTER TABLE public.django_migrations OWNER TO iasimmo;
ALTER TABLE public.django_session OWNER TO iasimmo;
ALTER TABLE public.django_admin_log OWNER TO iasimmo;
ALTER TABLE public.django_content_type OWNER TO iasimmo;

ALTER TABLE public.auth_user OWNER TO iasimmo;
ALTER TABLE public.auth_group OWNER TO iasimmo;
ALTER TABLE public.auth_group_permissions OWNER TO iasimmo;
ALTER TABLE public.auth_permission OWNER TO iasimmo;
ALTER TABLE public.auth_user_groups OWNER TO iasimmo;
ALTER TABLE public.auth_user_user_permissions OWNER TO iasimmo;