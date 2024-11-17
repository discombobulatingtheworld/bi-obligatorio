from psycopg2 import connect
from dotenv import dotenv_values


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
        'circuits': 'datawarehouse/sql/staging.circuits.sql',
        'constructor_results': 'datawarehouse/sql/staging.constructor_results.sql',
        'constructor_standings': 'datawarehouse/sql/staging.constructor_standings.sql',
        'constructors': 'datawarehouse/sql/staging.constructors.sql',
        'driver_standings': 'datawarehouse/sql/staging.driver_standings.sql',
        'drivers': 'datawarehouse/sql/staging.drivers.sql',
        'lap_times': 'datawarehouse/sql/staging.lap_times.sql',
        'pit_stops': 'datawarehouse/sql/staging.pit_stops.sql',
        'qualifying': 'datawarehouse/sql/staging.qualifying.sql',
        'races': 'datawarehouse/sql/staging.races.sql',
        'results': 'datawarehouse/sql/staging.results.sql',
        'seasons': 'datawarehouse/sql/staging.seasons.sql',
        'sprint_results': 'datawarehouse/sql/staging.sprint_results.sql',
        'status': 'datawarehouse/sql/staging.status.sql'
    }

    pass

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

    conn.close()

def main():
    config = dotenv_values(".env")

    enforce_schema(config)

if __name__ == '__main__':
    main()