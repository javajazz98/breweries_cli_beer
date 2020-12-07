class brewerydb::API
    def initialize
        @url = "https://api.openbrewerydb.org/breweries"
    end 

    def get_breweries 
        uri: = URI.parse(@url)
        binding.pry
    end
end 

brewerydb::API.new.get_breweries 
