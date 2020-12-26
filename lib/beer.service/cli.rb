class CLI
    def start 
        puts "Welcome to Brewery options"
        @data = Api.get_data
        main_menu_options
    end
    def main_menu_options
        puts "Type 'list' to list Breweries"
        puts "Type 'Exit' to leave"
        #main_menu
        menu
    end 
    def list
        @data.each.with_index(1) do |d,i| 
            puts "#{i}: #{d.name}, #{d.state}, #{d.brewery_type}"
        end 
    end     
    def menu
        input = nil
        while input != "exit"
            input = gets.strip.downcase
            if input == "list"
                list
            else 
                puts "boo, it doesn't equal one"
            end
            
        end
        puts ""
    end
end    