class Cli
    def run
        Welcome! Lets look at some beer options!
           Api.get_breweries
    end 
    def main 
        puts "Please enter a beer ID to learn more about it."
            print_all
               input = gets.strip
                    if input.to_i < 1 || input.to_i > breweries.all.size
                        puts "please re-enter a correct ID."
                        main
                    elsif 
                        breweries = breweries.find_by_id (input.to_i)
                        print_breweries_info(name)
                        continue?
    end 
    end 
    def continue?
         puts "Would you like to look at another beer? Y or N"
            input= gets.strip.downcase
                if input =='Y'
                    main #do I need this?
                        elsif input == 'N'
                            Okay... Goodbye!
                                else 
                                    puts "Try again, I did not get understand your command."
                                        Would you like to continue?
    end 
        def goodbye 
            puts "Good bye!!"
                exit.
    end 
        def Welcome
            puts "Welcome to the Cli Breweries! "
        end 
end 

                                
            
