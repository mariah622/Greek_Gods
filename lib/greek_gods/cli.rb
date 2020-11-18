class GreekGods::CLI
  
  def call
    GreekGods::Scraper.scrape_gods
    welcome
    display_gods
    menu
    goodbye
  end
  
  def welcome
		puts ""
		puts "----------------------------------------"
		puts "            Greek Gods & Goddesses               "
		puts "----------------------------------------"
  end
  
 def display_gods
    God.all.each.with_index(1) do |god, i|
      puts "#{i}.   #{god.name}"
    end
  end
  
  def display_info
    God.all.each.with_index(1) do |god, i|
    end
  end
  
  def menu
    input = nil
    while input != "exit"
      puts "Enter the number of the god you want more information on, type list to see list, or exit:"
      input = gets.strip.downcase
      
     if input.to_i > 0 && input.to_i < 18
        the_god = display_info[input.to_i-1]
        puts "#{the_god.name} - #{the_god.info}"
      elsif input == "list"
        display_gods
      elsif input != "exit"
        puts "Invalid response."
      end
    end
  end


  def goodbye
    puts "Farewell"
  end 


end 