import json
from pprint import pprint
from pymongo import MongoClient
from selenium import webdriver
from selenium.webdriver.chrome.options import Options

chrome_options = Options()
chrome_options.add_argument('--start-maximized')

client = MongoClient('localhost')
db = client['mvideo']

driver = webdriver.Chrome(options=chrome_options)

mainlink = 'https://www.mvideo.ru'
driver.get(mainlink + '/')

blocks = driver.find_elements_by_class_name('gallery-layout')

hits_block = driver
for block in blocks:
    try:
        txt = block.find_element_by_class_name('h2').text
        if txt == 'Хиты продаж':
            hits_block = block.find_element_by_class_name('sel-hits-block')
            break
    except:
        pass

button = hits_block.find_element_by_class_name('sel-hits-button-next')
while True:
    btn_classes = button.get_attribute('class')
    if 'disabled' not in btn_classes:
        button.click()
    else:
        break

goods = hits_block.find_elements_by_class_name('sel-product-tile-title')

results = []
for good in goods:
    info_str = good.get_attribute('data-product-info')
    info = json.loads(info_str)
    results.append({
        'name': info['productName'],
        'price': info['productPriceLocal'],
        'category': info['productCategoryName'],
        'link': mainlink + good.get_attribute('href')
    })

pprint(results)
db.mvideo.insert_many(results)

driver.close()