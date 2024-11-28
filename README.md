# Proyecto en Datawarehouse

Este proeycto esta realizado dentro del marco del curso de Inteligencia de Negocio de la Universidad Católica del Uruguay durante el segundo semestre del 2024.

## Descripción

El datawarehouse esta conformado por dos areas principales, una de staging y otra del datawarehouse propio. Se utiliza pentaho para la carga de datos a ambas areas, y PowerBI para su visualización.

### Objetivos

Por consigna de la tarea se deben responder varias preguntas. Estas se encuentran junto a las decisiones de diseño en el archivo `docs/objetivos.md`.

Por referencia, la consigna se encuentra en el archivo `docs/consigna.pdf`.

### Modelo de datos

El modelo de datos esta conformado por las siguientes tablas de dimension y hechos:

![Modelo de datos](.\docs\datawarehouse_schema.png)

### Componentes

Declaramos un stack en docker compose con PostgreSQL y pgAdmin para la base de datos, Pentaho Data Integration para la carga de datos y PowerBI para la visualización de los mismos.

## Ejecución

### Requerimientos

- Docker
- Pentaho Data Integration (probado en `pdi-ce-9.4.0.0-343`)
- PowerBI

Opcional:

- Python (probado en 3.12)

### Configuración

Docker configura los contenedores en base a las variables de entorno definidas en el archivo `.env`. Se provee un archivo `.env.example` con las variables de entorno necesarias para la ejecución del stack.

### Inicialización

Se provee un script de powershell para inicializar el stack de docker en windows e inicialiar el esquema de la base de datos. Este es el archivo `init.ps1`. Para ejecución sencilla se puede simplemente correr `init.bat`.

En otros sistemas operativos o si se desea levantar manualmente, solo se debe realizar lo siguiente:

1. Levantar el stack de docker con `docker-compose up -d`
2. Crear el esquema de la base de datos. Dos posibles opciones:
    - Utilizar el script de Python `enforcedbschema.py` ubicado en la carpeta `datawarehouse` con el comando `python enforcedbschema.py`
    - Utilizar el script de SQL `todo.sql` ubicado en la carpeta `datawarehouse\scripts`.

### Carga de datos

La carga se realiza mediante Pentaho Data Integration. La carpeta etl contiene los archivos de trabajos y transformaciones necesarios para la carga de datos. El punto de entrada es el archivo `jobMain.kjb`.

Si se cambian los cambios en la configuración de la base de datos dentro del archivo `.env`, se debe modificar la conexión en el archivo `jobMain.kjb` bajo el nombre obligatorio.

#### Dump de base de datos pre-cargada

Se provee un dump de la base de datos pre-cargada en el archivo `dump.sql` dentro de la carpeta `datawarehouse\scripts` para cargar directamente en la base de datos.

### Visualización

La visualización de los datos se realiza mediante PowerBI. Se provee un archivo `visualizacion.pbix` dentro de la carpeta `visualizacion` con la visualización de los datos. Se debe tener consideración con los datos de conexión que en Pentaho.




