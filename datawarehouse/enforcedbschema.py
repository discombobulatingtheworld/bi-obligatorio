from psycopg2 import connect
from dotenv import dotenv_values
from os.path import abspath, join, dirname, getsize
from os import listdir


def _create_schemas(conn, config):
    schemas = {
        'staging': config['POSTGRES_STAGING_SCHEMA'],
        'datawarehouse': config['POSTGRES_DATAWAREHOUSE_SCHEMA']
    }

    cursor = conn.cursor()

    for schema in schemas.values():
        print(f"Creating schema {schema}")
        cursor.execute(f"DROP SCHEMA IF EXISTS {schema} CASCADE")
        cursor.execute(f"CREATE SCHEMA {schema}")

    conn.commit()
    cursor.close()

def _create_tables(conn):
    cursor = conn.cursor()

    files = listdir(abspath(join(dirname(__file__), 'scripts')))

    for script in files:
        path = abspath(join(dirname(__file__), 'scripts', script))
        if getsize(path) == 0:
            print(f"Skipping {script} as it is empty")
            continue
        with open(path, 'r') as f:
            try:
                print(f"Creating table {script}")
                cursor.execute(f.read())
            except Exception as e:
                print(f"Error creating table {script}: {e}")
                break

    conn.commit()
    cursor.close()

def enforce_schema(config):
    conn = connect(
        dbname=config['POSTGRES_DB'],
        user=config['POSTGRES_USER'],
        password=config['POSTGRES_PASS'],
        host=config['POSTGRES_HOST'],
        port=config['POSTGRES_PORT']
    )

    _create_schemas(conn, config)
    _create_tables(conn)

    conn.close()

def main():
    config = dotenv_values(".env")

    enforce_schema(config)

if __name__ == '__main__':
    main()