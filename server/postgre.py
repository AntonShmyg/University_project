def execute(connection, query):
    connection.autocommit = True

    with connection.cursor() as cursor:
        cursor.execute(query)
        result = cursor.fetchall()
    connection.close()

    return result