from psycopg2 import connect
from dotenv import dotenv_values



def enforce_schema(config):
    conn = connect(
        dbname=config['POSTGRES_DB'],
        user=config['POSTGRES_USER'],
        password=config['POSTGRES_PASS'],
        host=config['POSTGRES_HOST'],
        port=config['POSTGRES_PORT']
    )

    schemas = {
        'staging': config['POSTGRES_STAGING_SCHEMA'],
        'datawarehouse': config['POSTGRES_DATAWAREHOUSE_SCHEMA']
    }

    cursor = conn.cursor()

    for schema in schemas.values():
        cursor.execute(f"CREATE SCHEMA IF NOT EXISTS {schema}")

    conn.commit()
    cursor.close()
    conn.close()

def main():
    config = dotenv_values(".env")

    enforce_schema(config)

if __name__ == '__main__':
    main()