from redis.client import Redis
import configparser

config = configparser.ConfigParser()
config.read('server/config.ini')

def connect():
    client = Redis(host=config['Redis']['host'], 
                   port=config['Redis']['port'])
