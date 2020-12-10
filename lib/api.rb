class Api
    def initialize
        @url = "https://api.openbrewerydb.org/breweries"
    end 
    def self.get_breweries
    
    #review

    name = beer ['name']
    type = beer ['type']
    state = beer ['state'] 
    url = beer ['url']
    Breweries_cli_beer.new(name, type, state, url)  # b is cap or low
    end 
end 


