from flask import Flask
from elasticsearch import Elasticsearch

app=Flask(__name__)
elastic = Elasticsearch('http://localhost:9200')
#@app.route("/")

elastic.index(index='lessons',
              id=1, 
              body={
                'lesson_id': 1,  
                'title': 'Информационные системы и технологии #1',   
                'text': 'Профилями этого направления стал целый ряд самостоятельных ранее специальностей специалитета. Новый учебный план включает в себя основные дисциплины из нескольких областей информатики. В число учебных предметов входят: теория информационных процессов и систем, информационные технологии, архитектура информационных систем, технологии программирования, управление данными, технологии обработки информации и др. В зависимости от профиля к этим курсам добавляются узкоспециализированные. Например, информационные технологии в машиностроении или медиаиндустрии',    
                'attachment': 'лекция1.pptx'
              })

elastic.index(index='lessons',
              id=2, 
              body={
                'lesson_id': 2,  
                'title': 'Архитектуры',   
                'text': 'Архитектура — искусство проектировать и строить здания и другие сооружения (также их комплексы), создающие материально организованную среду, необходимую людям для их жизни и деятельности, в соответствии с назначением, современными техническими возможностями и эстетическими воззрениями общества.',    
                'attachment': 'лекция_архитектуры.pptx'
              })

elastic.index(index='lessons',
              id=3, 
              body={
                'lesson_id': 3,  
                'title': 'Разработка безопасного ПО',   
                'text': 'Безопасное программное обеспечение - Программное обеспечение, разработанное с использованием совокупности мер, направленных на предотвращение появления и устранение уязвимостей программы.',    
                'attachment': 'безопасное_по.pptx'
              })

elastic.index(index='lessons',
              id=4, 
              body={
                'lesson_id': 4,  
                'title': 'Биотехнические интерфейсы #1',   
                'text': 'Разработка нескольких перспективных интерфейсов передачи информации в медицинских изделиях с наименьшими помехами и большими скоростями передачи данных',    
                'attachment': 'БИ1.pptx'
              })

elastic.index(index='lessons',
              id=5, 
              body={
                'lesson_id': 5,  
                'title': '"Методы системной инженерии"',   
                'text': 'Системная инженерия — это процесс, помогающий управлять сложностью больших систем. Это способ гарантировать бесперебойную и эффективную совместную работу всех различных частей системы. Системная инженерия существует уже много лет, и теперь есть несколько отличных инструментов и методов, которые помогут вам получить максимальную отдачу от этого подхода.',    
                'attachment': 'мси_лекция.pptx'
              })

elastic.index(index='lessons',
              id=6, 
              body={
                'lesson_id': 6,  
                'title': 'Информационные системы и технологии №2',   
                'text': 'Студенты изучают информатику, программирование, математические дисциплины, анализ данных, веб-технологии, сети, проектирование, создание и администрирование информационных систем, а также защиту информации.',    
                'attachment': 'ИСИТ_2_лек.pptx'
              })

elastic.index(index='lessons',
              id=7, 
              body={
                'lesson_id': 7,  
                'title': 'Биотехнические интерфейсы. Лекция 2',   
                'text': 'Объект исследования: методы передачи информации и интерфейсы. Методы исследования: моделирование электрических схем интерфейсов выполнено с использованием компьютерной программы Altium Designer 17.',    
                'attachment': 'БИ2.pptx'
              })

elastic.index(index='lessons',
              id=8, 
              body={
                'lesson_id': 8,  
                'title': '"Архитектуры". Лекция 2',   
                'text': 'Архитектура разработки программного обеспечения – это разработанная структура программы, которая включает в себя определение взаимодействия компонентов интерфейса с внутренними процессами программы.',    
                'attachment': 'архт_2.pptx'
              })

# result = elastic.search(index='lessons', body={'query': {'match': {'text': 'уязвимость'}}})
# result = elastic.search(index='lessons')
# print(result)

# elastic.indices.delete(index='lessons')




app.run()