class Cli
    def run
        welcome #look at later
           Api.get_Breweries
                main #look at later
    end 
    def main 
        puts "Please enter a beer ID to learn more about it."
            print_all
               input = gets.strip
                    if input.to_i < 1 || input.to_i > Breweries.all.size
                        puts "please re-enter a correct ID."
                        main
                    elsif 
                        beer = Breweries.find_by_id (input.to_i)
                        print_Breweries_info(beer)
                        continue?
    end 
    end 
    def continue?
         puts "Would you like to look at another beer? Y or N"
            input= gets.strip.downcase
                if input =='Y'
                    main #do I need this?
                    elsif input == 'N'
                            goodbye #review
                                else 
                                    puts "Try again, I did not get understand your command."
                                         continue? #Would you like to 
    end 
        def goodbye 
                puts "Good bye!!"
                    exit.
    end 
    def print_beer.info(beer)
            puts "Name: #{beer.name}. Type: #{beer.type}. State #{beer.state}. URL #{beer.url}."
    end 
    def print_all
            Breweries.all.each.with.index{|beer| puts "#{beer.id}. #{beer.name}"}
    end 
    def Welcome
            puts "Welcome to the Cli Breweries! "
     end 
end 

                                
            
