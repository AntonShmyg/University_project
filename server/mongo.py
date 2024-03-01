from pymongo import MongoClient
import configparser

config = configparser.ConfigParser()
config.read('server/config.ini')

def connect():
    client = MongoClient(config['MongoDB']['host'], 
                         int(config['MongoDB']['port']))
