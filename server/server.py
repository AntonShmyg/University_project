from flask import Flask, render_template, request
from elasticsearch import Elasticsearch
import configparser
import datetime

import elastic_search
import postgre
import redis_db
import mongo

app=Flask(__name__, template_folder='../templates')
config = configparser.ConfigParser()
config.read('server/config.ini')
elastic = Elasticsearch(config['ElasticSearch']['host'])

elastic_search.init(elastic)

def execute_query(phrase, periodStart, periodEnd):
    ids = elastic_search.get_ids(elastic, phrase)

    # найти всех студентов, которые посещали занятия в заданном промежутке и материалы которых содержат заданный phrase
    query = f"""SELECT students.full_name, groups.group_code, specialities.naming, specialities.code
                FROM journal JOIN lessons ON lessons.id = journal.lesson_id, students
                JOIN groups ON groups.id = students.group_id
                JOIN specialities ON specialities.id = students.spec_id
                WHERE journal.lesson_id IN {tuple(ids)} AND lessons.date BETWEEN '{periodStart}' AND '{periodEnd}'
                GROUP BY students.id, groups.group_code, specialities.naming, specialities.code"""
    result = postgre.execute(query)

    return result

def is_valid_datetime(datetime_text):
    try:
        datetime.datetime.fromisoformat(datetime_text)
        return True
    except ValueError:
        return False

@app.route("/", methods = ["GET", "POST"])
def index():
    if request.method == "POST":
        phrase = request.form.get("phrase")
        periodStart = request.form.get("periodStart")
        periodEnd = request.form.get("periodEnd")

        if phrase and is_valid_datetime(periodStart) and is_valid_datetime(periodEnd):        
            result = execute_query(phrase, periodStart, periodEnd)
            return render_template("index.html", response=result)
        
    return render_template("index.html")

if __name__ == '__main__':
    app.run()