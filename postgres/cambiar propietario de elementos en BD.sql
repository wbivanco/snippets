-- Cambia el propietario de toda la BD --
ALTER DATABASE dbname OWNER TO newowner;

-- Cambia el propietario de los elementos de la BD seleccionada --
UPDATE pg_class SET relowner = (SELECT oid FROM pg_roles WHERE rolname = '$USER') 
WHERE relname IN (SELECT relname FROM pg_class, pg_namespace WHERE pg_namespace.oid = pg_class.relnamespace 
AND pg_namespace.nspname = 'public');ALTER DATABASE dbname OWNER TO newowner;

