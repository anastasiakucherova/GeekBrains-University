# Define your item pipelines here
#
# Don't forget to add your pipeline to the ITEM_PIPELINES setting
# See: https://docs.scrapy.org/en/latest/topics/item-pipeline.html


# useful for handling different item types with a single interface
from itemadapter import ItemAdapter

import scrapy
from scrapy.pipelines.images import ImagesPipeline
from pymongo import MongoClient


class LeroymerlinPipeline:
    def __init__(self):
        client = MongoClient('localhost')
        self.mongo_base = client.leroymerlin

    def process_item(self, item, spider):
        item = process_item_props(item)
        collection = self.mongo_base[spider.name]
        collection.update_one({'link': item['link']}, {'$set': item}, upsert=True)
        return item

class LeroymerlinPhoptosPipeline(ImagesPipeline):
    def get_media_requests(self, item, info):
        if item['photos']:
            for img in item['photos']:
                try:
                    yield scrapy.Request(img)
                except Exception as e:
                    print(e)

    def item_completed(self, results, item, info):
        if results:
            item['photos'] = [itm[1] for itm in results if itm[0]]
        return item

def process_item_props(item):
    len_defs = len(item['props_definition'])
    item['props'] = {}
    for i, term in enumerate(item['props_term']):
        if i < len_defs:
            item['props'][term] = item['props_definition'][i]
        else:
            item['props'][term] = "-"

    item.pop('props_term')
    item.pop('props_definition')

    return item