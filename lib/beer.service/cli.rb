class CLI
    def start 
        puts "Welcome to Brewery options"
        Api.get_data
        main_menu_options
    end
    def main_menu_options
       puts "Type '1' to list Breweries"
       puts "Type 'Exit' to leave"
       main_menu
    end 
    def main_menu
        input = get_input
        if input == "1"
            puts "select Brewery number for more information"
            main_menu_options
        elsif input == "exit"
            puts "Good bye"
            exit 
        else 
            invalid_choice 
            main_menu_options
            binding.pry 
        end 
    end 
    def invalid_choice
        puts "Invalid choice, Please try again."
    end 
    def get_input
        print "Enter option"
        gets.chomp 
    end 
    def list_api   
        brewery_data.all.each.with_index(1) do |api,index|
            puts "#{index}. #{api.api}"
        end 
        api_details_menu_options 
    end 
    def api_details_menu_options
        puts "Select the number for more information"
        puts "Or type exit to leave."
        api_details_menu
    end 
    def api_details_menu
        input = get_input
        if input.to_i.between?(1,brewery_data.all.length)
            index = input.to_i - 1 
            api = brewery_data.all[index]
            print_api_details(api)
            select_again_or_exit
        elsif input == "exit"
            puts "Exit information"
            puts "Goodbye"
            exit
        else 
            invalid_choice
            api_details_menu_options
        end 
    end 
    def print_api_details(api)
        puts "name #{api.name}"
        puts "Api state #{api.state}"
    end 
    def select_again_or_exit
        puts "Would you like to go back to main menu or exit?"
        puts "'1' for main menu"
        puts "'exit' to exit program"
        input = get_input
            if input == '1' 
                main_options 
            elsif input == 'exit'
                puts "Good bye."
                exit 
            else 
                invalid_choice
                select_again_or_exit
            end 
        end 
    end