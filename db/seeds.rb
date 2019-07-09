require 'pry'
require 'open-uri'
require 'nokogiri'

nintendo = VideoGameCompany.create(name: "Nintendo")
microsoft = VideoGameCompany.create(name: "Microsoft")
sony = VideoGameCompany.create(name: "Sony")

NINTENDO_SWITCH = "https://www.gamestop.com/browse/games/nintendo-switch?nav=28-xu0,13ffff2418-1e8-6"

NINTENDO_3DS = "https://www.gamestop.com/browse/games/nintendo-3ds?nav=28-xu0,13ffff2418-1a2" 

XBOX_1 = "https://www.gamestop.com/browse/games/xbox-one?nav=28-xu0,13ffff2418-1e0" 

PLAYSTATION_4 = "https://www.gamestop.com/browse/games/playstation-4?nav=28-xu0,131dc-ffff2418"


def scrape_switch
doc = open(NINTENDO_SWITCH)
parsed_doc = Nokogiri::HTML(doc)
grabbed_elements = parsed_doc.css("div.product_info")
grabbed_elements.each do |element|

    title = element.css("h3 a").text
    system = element.css("h3 strong").text
    # company_name = element.css("h3 strong").text.split(" ")[0]
    esrb = element.css('.product_esrb').attribute('src').value
    x = esrb.rindex("_")
    rating = esrb.slice(x..-5).gsub("_","")
    VideoGame.create(title: title, system: system, content_rating: rating, company_id: 1)
  end 
end 

def scrape_ds
  doc = open(NINTENDO_3DS)
  parsed_doc = Nokogiri::HTML(doc)
  grabbed_elements = parsed_doc.css("div.product_info")
  grabbed_elements.each do |element|

    title = element.css("h3 a").text
    system = element.css("h3 strong").text
    esrb = element.css('.product_esrb').attribute('src').value
    x = esrb.rindex("_")
    rating = esrb.slice(x..-5).gsub("_","")
    VideoGame.create(title: title, system: system, content_rating: rating, company_id: 1)

  end 
end 

def scrape_xbox 
    doc = open(XBOX_1)
    parsed_doc = Nokogiri::HTML(doc)
    grabbed_elements = parsed_doc.css("div.product_info")
  grabbed_elements.each do |element|

    title = element.css("h3 a").text
    system = element.css("h3 strong").text
    esrb = element.css('.product_esrb').attribute('src').value
    x = esrb.rindex("_")
    rating = esrb.slice(x..-5).gsub("_","")
    VideoGame.create(title: title, system: system, content_rating: rating, company_id: 2)

  end 
end 

def scrape_playstation
   doc = open(PLAYSTATION_4)
   parsed_doc = Nokogiri::HTML(doc)
   grabbed_elements = parsed_doc.css("div.product_info")
   grabbed_elements.each do |element|

    title = element.css("h3 a").text
    system = element.css("h3 strong").text
    esrb = element.css('.product_esrb').attribute('src').value
    x = esrb.rindex("_")
    rating = esrb.slice(x..-5).gsub("_","")
    
    VideoGame.create(title: title, system: system, content_rating: rating, company_id: 3)

  end 
end 
