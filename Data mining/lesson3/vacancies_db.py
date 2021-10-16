'''
1) Развернуть у себя на компьютере/виртуальной машине/хостинге MongoDB и реализовать функцию,
записывающую собранные вакансии в созданную БД
2) Написать функцию, которая производит поиск и выводит на экран вакансии с заработной платой больше введенной суммы.
Поиск по двум полям (мин и макс зарплату)
3) Написать функцию, которая будет добавлять в вашу базу данных только новые вакансии с сайта
'''

from hh import get_vacancies
from pymongo import MongoClient

def insert_vacancies(collection, vacancies):
    for v in vacancies:
        try:
            # Inserts vacancies one by one to avoid duplicates
            collection.insert_one(v)
        except:
            pass

def find_vacancy(collection, salary):
    return collection.find({'$or': [
        {
            'currency': 'руб.',
            '$or': [{'salary min': {'$gte': salary}}, {'salary max': {'$gte': salary}}]
        },
        # Let's just show all non-ruble salaries without calculations
        {'currency': {'$ne': 'руб.', '$ne': '-'}}
    ]})

client = MongoClient('localhost')
db = client['hh_db']
hh = db.hh
# Unique index to avoid duplicated inserts
hh.create_index("link", unique=True)

vacancy = 'data science'

while True:
    print(f'Search for {vacancy}. Press "q" to quit')
    pages_str = input('Enter pages to search: ')
    if pages_str.lower() == 'q':
        break
    else:
        insert_vacancies(hh, get_vacancies(vacancy, int(pages_str)))
        print(f'Documents count: {hh.count_documents({})}')
        salary_str = input('Enter salary in rubles: ')
        if salary_str.lower() == 'q':
            break
        else:
            vacancies = find_vacancy(hh, int(salary_str))
            for v in vacancies:
                print(v)
            print(f'{len(vacancies)} vacancies found')