from psycopg2 import connect
from dotenv import dotenv_values
from os.path import abspath, join, dirname


def _create_schemas(conn, config):
    schemas = {
        'staging': config['POSTGRES_STAGING_SCHEMA'],
        'datawarehouse': config['POSTGRES_DATAWAREHOUSE_SCHEMA']
    }

    cursor = conn.cursor()

    for schema in schemas.values():
        cursor.execute(f"CREATE SCHEMA IF NOT EXISTS {schema}")

    conn.commit()
    cursor.close()

def _create_staging_tables(conn, config):
    table_script_files = {
        'circuits': 'staging.circuits.sql',
        'constructor_results': 'staging.constructor_results.sql',
        'constructor_standings': 'staging.constructor_standings.sql',
        'constructors': 'staging.constructors.sql',
        'driver_standings': 'staging.driver_standings.sql',
        'drivers': 'staging.drivers.sql',
        'lap_times': 'staging.lap_times.sql',
        'pit_stops': 'staging.pit_stops.sql',
        'qualifying': 'staging.qualifying.sql',
        'races': 'staging.races.sql',
        'results': 'staging.results.sql',
        'seasons': 'staging.seasons.sql',
        'sprint_results': 'staging.sprint_results.sql',
        'status': 'staging.status.sql'
    }

    cursor = conn.cursor()

    for table, script in table_script_files.items():
        with open(abspath(join(dirname(__file__), 'scripts', script)), 'r') as f:
            cursor.execute(f.read())

    conn.commit()
    cursor.close()

def _create_datawarehouse_tables(conn, config):

    pass

def enforce_schema(config):
    conn = connect(
        dbname=config['POSTGRES_DB'],
        user=config['POSTGRES_USER'],
        password=config['POSTGRES_PASS'],
        host=config['POSTGRES_HOST'],
        port=config['POSTGRES_PORT']
    )

    _create_schemas(conn, config)
    _create_staging_tables(conn, config)

    conn.close()

def main():
    config = dotenv_values(".env")

    enforce_schema(config)

if __name__ == '__main__':
    main()