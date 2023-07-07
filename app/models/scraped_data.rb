require 'nokogiri'
require 'open-uri'

class ScrapedData < ApplicationRecord
  def self.scrape_website
    url = 'https://epicbattlefantasy.fandom.com/wiki/Epic_Battle_Fantasy_5' 
    doc = Nokogiri::HTML(URI.open(url))    

    keyword = 'fandom-community-header__community-name'
    titles = doc.css("[class*='#{keyword}']") 

    # prices = doc.css("[data-testid*='price']") 

    puts titles

    # titles.each do |title|
    #   puts title.text 
    # end

    # Save the extracted data or perform further operations as needed
    # For example, you can create ScrapedData records and save the extracted data to the database
    # prices.each do |price|
    #   ScrapedData.create(price: price.text) 
    # end
  end
end

ScrapedData.scrape_website
