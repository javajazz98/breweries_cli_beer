class Api
    URL = "https://api.openbrewerydb.org/breweries"
   
    def self.get_beer
        response = RestClient.get(@url)
        data = JSON.parse(response.body)
        data["results"].each do |beer|
            #binding.pry 
    #review

    name = beer ['name']
    type = beer ['type']
    state = beer ['state'] 
    url = beer ['url']
    id = beer ['id'] 
    
    Breweries_cli_beer.new(name, type, state, url)  # b is cap or low
    end 
end 


