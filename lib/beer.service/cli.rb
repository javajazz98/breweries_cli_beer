class Cli
    def start
       Puts  welcome 
           Api.load_data
             main_menu_options 
    end 
          
               
   
    def main_menu_options
        puts "Please enter a beer ID to learn more about it."
        main_menu
    end
    def breweries_details
        

               input = gets_input
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
                    main_menu_options
                    elsif input == 'N'
                            goodbye 
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

                                
            
