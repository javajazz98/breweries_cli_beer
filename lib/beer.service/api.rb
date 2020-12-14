class Api 
   URL = "https://api.openbrewerydb.org/breweries"
def breweries
   response = RestClient.get(URL)
   data = JSON.parse(response.body)
   name = brewery ['name']
   type = brewery ['type']
   state = brewery ['state'] 
   url = brewery ['url']
   id = brewery ['id'] 
   Breweries.new(name, type, state, species, id)
end 
end