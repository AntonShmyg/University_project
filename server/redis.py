from redis.client import Redis

def connect():
    client = Redis(host='0.0.0.0', port=6379)
