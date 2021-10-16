from pymongo import MongoClient
from selenium import webdriver
from selenium.webdriver.chrome.options import Options
from selenium.webdriver.common.keys import Keys
from selenium.webdriver.support.ui import WebDriverWait
from selenium.webdriver.support import expected_conditions as EC
from selenium.webdriver.common.by import By
from selenium.webdriver.common.action_chains import ActionChains
import time
from pprint import pprint

def get_link(email_item):
    return email_item.get_attribute('href')

def email_login(driver):
    login = WebDriverWait(driver, 20).until(
        EC.presence_of_element_located((By.NAME, 'username'))
    )
    login.send_keys('study.ai_172@mail.ru')
    login.send_keys(Keys.RETURN)
    password = WebDriverWait(driver, 20).until(
        EC.presence_of_element_located((By.NAME, 'password'))
    )
    time.sleep(3)
    password.send_keys('NextPassword172')
    password.send_keys(Keys.RETURN)

def get_email_links(driver):
    links = []
    last_link = ''

    while True:
        time.sleep(3)
        items = WebDriverWait(driver, 20).until(
            EC.presence_of_all_elements_located((By.CLASS_NAME, 'llc'))
        )

        new_last_link = get_link(items[-1])
        if last_link == new_last_link:
            break

        last_link = new_last_link
        links = links + [get_link(item) for item in items]

        actions = ActionChains(driver)
        actions.move_to_element(items[-1])
        actions.perform()
    return list(set(links))

def get_emails_content(links):
    result = []
    for link in links:
        driver.get(link)
        WebDriverWait(driver, 20).until(
            EC.presence_of_all_elements_located((By.CLASS_NAME, 'layout__main-frame'))
        )
        result.append({
            'title': driver.find_element_by_tag_name('h2').text,
            'author': driver.find_element_by_class_name('letter-contact').text,
            'time': driver.find_element_by_class_name('letter__date').text,
            'text': driver.find_element_by_class_name('letter-body').text,
        })
    return result

chrome_options = Options()
chrome_options.add_argument('--start-maximized')

client = MongoClient('localhost')
db = client['mail']

main_link = 'https://e.mail.ru/'

driver = webdriver.Chrome(options=chrome_options)
driver.get(main_link)

email_login(driver)
links = get_email_links(driver)
result = get_emails_content(links)

pprint(result)
db.mail.insert_many(result)

driver.close()