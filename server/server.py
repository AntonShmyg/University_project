from flask import Flask
from elasticsearch import Elasticsearch
import psycopg2

import elastic_search
import postgre

app=Flask(__name__)
elastic = Elasticsearch('http://localhost:9200')
pgsql = psycopg2.connect(dbname="University", 
                         user="postgres", 
                         password="tohi231", 
                         host="localhost", 
                         port="5432")

elastic_search.init(elastic)

phrase = 'анализ данных' # получить из view
periodStart = '2022' # получить из view
periodEnd = '2022' # получить из view

ids = elastic_search.get_ids(elastic, phrase)

# найти всех студентов, которые посещали занятия, материалы которых содержат заданный phrase
query = f"""SELECT DISTINCT students.full_name, groups.group_code, specialities.naming, specialities.code
            FROM journal, students
            JOIN groups ON groups.id = students.group_id
            JOIN specialities ON specialities.id = students.spec_id
            WHERE journal.lesson_id IN {tuple(ids)}"""
result = postgre.execute(pgsql, query)

for student in result:
    print(student)

if __name__ == '__main__':
    app.run()