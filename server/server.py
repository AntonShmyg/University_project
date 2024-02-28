from flask import Flask
from elasticsearch import Elasticsearch

import elastic_search

app=Flask(__name__)
elastic = Elasticsearch('http://localhost:9200')

# elastic_search.init(elastic)

ids = elastic_search.get_ids(elastic, 'анализ данных')
print(ids)

if __name__ == '__main__':
    app.run()