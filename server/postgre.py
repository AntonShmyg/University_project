import psycopg2
import configparser

config = configparser.ConfigParser()
config.read('server/config.ini')

def execute(query):
    connection = psycopg2.connect(dbname=config['PostgreSQL']['dbname'], 
                                  user=config['PostgreSQL']['user'], 
                                  password=config['PostgreSQL']['password'], 
                                  host=config['PostgreSQL']['host'], 
                                  port=config['PostgreSQL']['port'])
    connection.autocommit = True

    with connection.cursor() as cursor:
        cursor.execute(query)
        result = cursor.fetchall()
    connection.close()

    return result