import scrapy
from scrapy.http import HtmlResponse
from leroymerlin.items import LeroymerlinItem
from scrapy.loader import ItemLoader


class LeroySpider(scrapy.Spider):
    name = 'leroy'
    allowed_domains = ['leroymerlin.ru']

    def __init__(self, search):
        super().__init__()
        self.start_urls = [f'https://rostov.leroymerlin.ru/search/?q=={search}']

    def parse(self, response:HtmlResponse):
        links = response.xpath("//uc-plp-item-new/@href")
        for link in links:
            yield response.follow(link, callback=self.good_parse)

    def good_parse(self, response:HtmlResponse):
        loader = ItemLoader(item=LeroymerlinItem(), response=response)
        loader.add_xpath('name', '//h1[@class="header-2"]/text()')
        loader.add_xpath('photos', '//uc-pdp-media-carousel[@slot="media-content"]/img[@slot="thumbs"]/@src')
        loader.add_xpath('link', '//uc-pdp-price-view/link/@href')
        loader.add_xpath('price', '//span[@slot="price"]/text()')
        loader.add_xpath('props_term', '//div[@class="def-list__group"]/dt[@class="def-list__term"]/text()')
        loader.add_xpath('props_definition', '//div[@class="def-list__group"]/dd[@class="def-list__definition"]/text()')
        yield loader.load_item()