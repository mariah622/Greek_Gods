class GreekGods::Scraper
  
  
  def self.scrape
    @doc ||= Nokogiri::HTML(open("https://rickriordan.com/extra/meet-the-greek-gods/")).css('div.q-and-a')
  end
  
  def self.scrape_gods
    self.scrape.each do |ele|
      name = ele.search("div.question").text.strip
      info = ele.search("div.answer").text
      God.new(name, info)
    end
  end
  
end 