class Cli
    def start
       puts "Welcome" 
       data = Api.load_data
       data.each do |d| 
       puts print_brewery_info 
    end 
    def main 
        puts "Please pick an id."
        print @all
    input = gets.strip 
    if input.to_i <1 || input.to_i > breweries.all.size
        puts "please retype a correct number."
        main 
    elsif 
        brewery = Brewery.find_by_id(input.to_i)
        print_brwery_info(brewery)
        continue?
    end 
    def continue?
        puts "would you like to try again? Y or N"
        input = gets.strip.downcase 
    if input == 'y'
        main 
    elsif input == 'n'
            goodbye.
    else 
        puts "I am sorry I did not get your command."
        continue?
    end  
    def goodbye 
        puts "Goodbye!"
        exit!
    end 
    def print_brewery_info(brewery)
        puts "Name: #{brewery.name}. Type: #{brewery.type}. State #{brewery.state}. URL #{brewery.url}. ID #{brewery.id}."
    end 
    def print_all
        brewery.all.each.with_index{|brewery| puts "#{brewery.name}.#{brewery.id}"}
    end 
    def welcome
        puts "welcome to Breweries!"
    end
end