import requests
from bs4 import BeautifulSoup as bs
from pprint import pprint
import re

def get_text(item):
    return "-" if item==None else item.getText()

def get_salary(soup_item):
    if soup_item:
        text = soup_item.getText().replace(u'\xa0', '')
        numbers = re.findall('\d+', text)
        words = re.findall('\D+', text)
        min = max = "-"
        if len(numbers) == 2:
            min, max = numbers[0], numbers[1]
        elif len(numbers) == 1:
            if words[0] == 'от':
                min = numbers[0]
            elif words[0] == 'до':
                max = numbers[0]
            else:
                min = max = numbers[0]
        return f'от {min} до {max} {words[-1].strip() if not words[-1].isdecimal() else "-"}'
    else:
        return "-"

while True:
    vacancy_name = input('\nEnter vacancy to search (press "q" for exit): ')
    if vacancy_name.lower() == 'q':
        break
    else:
        hh_params = {
            'text': vacancy_name,
            'area': 113  # Russia
        }
        hh_headers = {
            'user-agent': 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.89 Safari/537.36'
        }

        hh_link = 'https://hh.ru/search/vacancy'
        response = requests.get(hh_link, params=hh_params, headers=hh_headers)
        soup = bs(response.text, 'lxml')

        vacancies_block = soup.find('div', {'class': 'vacancy-serp'})
        vacancies_list = vacancies_block.find_all('div', {'class': 'vacancy-serp-item'})

        vacancies = []

        for vacancy in vacancies_list:
            vacancy_data = {}
            header = vacancy.find('div', {'class': 'vacancy-serp-item__row_header'})
            title_row = header.find('a', {'data-qa': 'vacancy-serp__vacancy-title'})
            vacancy_data['title'] = title_row.getText()
            vacancy_data['salary'] = get_salary(header.find('span', {'data-qa': 'vacancy-serp__vacancy-compensation'}))
            vacancy_data['employer'] = get_text(vacancy.find('a', {'data-qa': 'vacancy-serp__vacancy-employer'}))
            vacancy_data['employer-address'] = get_text(
                vacancy.find('span', {'data-qa': 'vacancy-serp__vacancy-address'}))
            vacancy_data['link'] = title_row['href']
            vacancies.append(vacancy_data)

        pprint(vacancies)