# Hago copia de los datos de la tabla "provincia" que esta dentro de la app "administracion" y guardo en la ruta indicada con >
python3 manage.py dumpdata administracion.provincia --format=json --indent=4 > apps/administracion/fixtures/provincias.json

# Restauro la copia buscando el archivo json dentro de los fixtures que tenga en mi proyecto
python3 manage.py loaddata localidades.json