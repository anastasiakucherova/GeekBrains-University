# Define here the models for your scraped items
#
# See documentation in:
# https://docs.scrapy.org/en/latest/topics/items.html

import scrapy
from scrapy.loader.processors import MapCompose, TakeFirst

def process_photos(value):
    return value.replace('w_82,h_82', 'w_1200,h_1200')

def process_price(value):
    return int(value.replace(' ', ''))

def process_definition(value):
    return value.replace('\n', '').strip()

class LeroymerlinItem(scrapy.Item):
    # define the fields for your item here like:
    name = scrapy.Field(output_processor=TakeFirst())
    photos = scrapy.Field(input_processor=MapCompose(process_photos))
    link = scrapy.Field(output_processor=TakeFirst())
    price = scrapy.Field(input_processor=MapCompose(process_price))
    props_term = scrapy.Field()
    props_definition = scrapy.Field(input_processor=MapCompose(process_definition))
    props = scrapy.Field()
